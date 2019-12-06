package org.ssm.center.controller.file;

import lombok.extern.slf4j.Slf4j;
import net.sf.json.JSONArray;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.ssm.center.pojo.kpi.Attachment;
import org.ssm.center.pojo.kpi.BlogInformation;
import org.ssm.center.pojo.kpi.TagInformation;
import org.ssm.center.pojo.kpi.User;
import org.ssm.center.service.blog.BlogInformationService;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.*;
import java.util.*;

/**
 * Created by yu on 2017/5/9.
 */
@Controller
@RequestMapping("attach")
@PropertySource("classpath:upload.properties")
public class fileUploadUEController {

    private Logger LOGGER = LoggerFactory.getLogger(fileUploadUEController.class);

    @Resource
    Environment env;

    @Autowired
    BlogInformationService blogInformationService;
    /**
     * 注意RequestParam的value必须和ueditor.config.json中imageFieldName的值相同
     *
     * @param file
     * @return
     */

    @ResponseBody
    @RequestMapping(value = "/uploadFile")
    public Map<String, String> uploadFile(@RequestParam(value = "upfile", required = false) MultipartFile file, HttpServletRequest request) {
        System.out.println("aaaaaaa");
        Attachment attach = new Attachment();

        //获取文件保存后面的动态路径
        String backPath = this.getPath();
        System.out.println(backPath);

        //服务器地址
        StringBuilder serverPath = new StringBuilder();
        serverPath.append("http://");
        serverPath.append(request.getServerName()).append(":").append(request.getServerPort());
        serverPath.append(request.getContextPath());
        //文件保存的完整路径
        String path = env.getProperty("fileBaseStoreDIR") + "/" + backPath;
        System.out.println(path);
        //获取文件名
        String fileName = file.getOriginalFilename();
        System.out.println(fileName);
        //获取转换后的uuid文件名
        String uuidFileName = this.getUUIDFileName(fileName);
        System.out.println(uuidFileName);
        //完善附件对象信息,如果需要设置
        attach.setCreateTime(System.currentTimeMillis());
        attach.setSize(file.getSize());
        attach.setName(uuidFileName);
        attach.setExt(this.getExtName(fileName, '.'));
        attach.setRealPath(backPath + "/" + uuidFileName);


        File targetFile = new File(path, uuidFileName);
        //创建文件夹
        if (!targetFile.exists()) {
            targetFile.mkdirs();
        }
        Map<String, String> map = new HashMap<>();
        try {
            //分装百度上传信息
            file.transferTo(targetFile);
            map.put("state", "SUCCESS");
            map.put("url", serverPath+env.getProperty("downloadApi")+ uuidFileName);
            map.put("title", "");
            map.put("original", fileName);
            System.out.println(map.get("original"));
        } catch (Exception e) {
            LOGGER.error("upload error:", e);
            map.put("state", "上传失败");
        }
        return map;
    }

    @ResponseBody
    @RequestMapping("/allTag")
    public String allTag(){
        return JSONArray.fromObject(blogInformationService.showAllTag()).toString();
    }

    @ResponseBody
    @RequestMapping("/tag/**")
    public ModelAndView showTagBlog(HttpServletRequest request){
        ModelAndView mu = new ModelAndView();
        String url=request.getServletPath();
        String[] urlArr = url.split("/");
        int id = Integer.parseInt(urlArr[urlArr.length-1]);
        TagInformation tag = blogInformationService.selectTagById(id);


        mu.setViewName("file/browseFile");
        mu.addObject("tagType",tag.getTag());
        return mu;
    }

    @ResponseBody
    @RequestMapping("/addBlog")
    public String addBlog(String[] rqs,HttpServletRequest request){
        System.out.println(rqs);
        System.out.println(rqs[1]);
        BlogInformation bi = new BlogInformation();
        HttpSession session = request.getSession(false);
        User user = (User)session.getAttribute("user");
        System.out.println(user.getuSid());
        System.out.println(user.getuName());
        bi.setTitle(rqs[0]);
        bi.setTags(rqs[1]);
        bi.setContent(rqs[3]);
        bi.setAbout(rqs[2]);
        bi.setCreateUser(user.getuSid());
        bi.setCreateName(user.getuName());
        bi.setCreateDate(new java.sql.Date((new Date()).getTime()));

        blogInformationService.addBlog(bi);


        return "success";
    }

    @ResponseBody
    @RequestMapping("/getNewBlog")
    public String getNewBlog(HttpServletRequest request){
        BlogInformation blogInformation = new BlogInformation();
        blogInformation.setTags(request.getParameter("tagType"));
        if (blogInformation.getTags()==""){
            System.out.println("空");
        }else {
            System.out.println(blogInformation.getTags());
        }
        blogInformation.setContent(request.getParameter("blogName"));
        blogInformation.setCreateName(request.getParameter("createName"));
        return JSONArray.fromObject(blogInformationService.getNewBlog()).toString();
    }

    @RequestMapping("/showBlog/blog/**")
    @ResponseBody
    public ModelAndView goToShowBLog(HttpServletRequest request){
        ModelAndView mu = new ModelAndView();
        System.out.println(request.getServletPath());
        String url=request.getServletPath();
        String[] urlArr = url.split("/");
        int id = Integer.parseInt(urlArr[urlArr.length-1]);
        String type = urlArr[urlArr.length-2];
        System.out.println(id +","+type);
        System.out.println("success");
        mu.setViewName("file/displayBlog");

        mu.addObject("id",id);
        return mu;
    }

    @RequestMapping("/showOneBlog")
    @ResponseBody
    public BlogInformation showOneBlog(HttpServletRequest request){
        int id = Integer.parseInt(request.getParameter("id"));
        return blogInformationService.selectOneBlogById(id);
    }
    /**
     * download:附件下载. <br/>
     *
     * @param response
     * @param name     唯一的文件名
     * @throws IOException
     */
    @RequestMapping("/download")
    public void download(HttpServletResponse response, String name) throws IOException {
        if (StringUtils.hasText(name)) {
            response.reset();
            response.addHeader("Content-Disposition", "attachment;filename=" + new String(name.getBytes("utf-8"), "iso-8859-1"));  //转码之后下载的文件名不会出现中文乱码
            response.setContentType("application/octet-stream;charset=UTF-8");
            String backPath = this.getPath();
            //文件保存的完整路径
            String path = env.getProperty("fileBaseStoreDIR") + "/" + backPath + "/" + name;
            //读取文件
            InputStream in = new FileInputStream(path);
            OutputStream out = response.getOutputStream();
            //写文件
            int b;
            while ((b = in.read()) != -1) {
                out.write(b);
            }
            in.close();
            out.close();
        }
    }


    /**
     * getUUIDFileName:把文件名转换成uuid表示，防止文件名上传重复. <br/>
     *
     * @param fileName 文件名
     * @return
     */
    private String getUUIDFileName(String fileName) {
        UUID uuid = UUID.randomUUID();
        StringBuilder sb = new StringBuilder(100);
        sb.append(uuid.toString()).append(".").append(this.getExtName(fileName, '.'));
        return sb.toString();
    }

    /**
     * getExtName:获取文件后缀名. <br/>
     *
     * @param s     文件名包括后缀
     * @param split 文件名和后缀之间的‘.’
     * @return
     */
    private String getExtName(String s, char split) {
        int i = s.lastIndexOf(split);
        int leg = s.length();
        return i > 0 ? (i + 1) == leg ? " " : s.substring(i + 1, s.length()) : " ";
    }

    /**
     * 根据年月日生成文件
     * @return
     */
    private String getPath() {
        //获取年月日
        Calendar a = Calendar.getInstance();
        String year = String.valueOf(a.get(Calendar.YEAR));
        String month = String.valueOf(a.get(Calendar.MONTH) + 1);
        String day = String.valueOf(a.get(Calendar.DAY_OF_MONTH));
        StringBuilder backPath = new StringBuilder(128);
        backPath.append(year).append("/").append(month).append("/").append(day);
        return "20170516";
    }


}

