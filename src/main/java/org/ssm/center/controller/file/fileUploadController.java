package org.ssm.center.controller.file;

import lombok.extern.slf4j.Slf4j;


import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.ssm.center.util.FileUtil;
import org.ssm.center.util.ZipUtils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileOutputStream;
import java.text.SimpleDateFormat;
import java.util.*;

@Slf4j
@Controller
public class fileUploadController {

    public static String formateString(Date date){
        SimpleDateFormat dateFormater = new SimpleDateFormat("yyyy-MM-dd");
        String list[] = dateFormater.format(date).split("-");
        String result = "";
        for (int i=0;i<list.length;i++) {
            result += list[i];
        }
        return result;
    }

    @RequestMapping("/editorImg")
    @ResponseBody
    public JSONObject editormdPic (@RequestParam(value = "editormd-image-file", required = true) MultipartFile file, HttpServletRequest request, HttpServletResponse response) throws Exception{

        String trueFileName = file.getOriginalFilename();

        String suffix = trueFileName.substring(trueFileName.lastIndexOf("."));
        String fileName1 = trueFileName.substring(0,trueFileName.lastIndexOf("."));
        String fileName = System.currentTimeMillis()+"_"+fileName1+suffix;

        String path="E:\\testFile\\pm\\"+formateString(new Date())+"\\";
        System.out.println(path);

        File targetFile = new File(path, fileName);
        if(!targetFile.exists()){
            targetFile.mkdirs();
        }

        //保存
        try {
            file.transferTo(targetFile);
        } catch (Exception e) {
            e.printStackTrace();
        }


        JSONObject res = new JSONObject();
        res.put("url","/PMFile/"+formateString(new Date())+"/"+fileName);
        res.put("success", 1);
        res.put("message", "upload success!");

        return res;

    }

    @RequestMapping("/fileUploadRqs")
    @ResponseBody
    public String fileUpload(HttpServletRequest request,@RequestParam("file") MultipartFile[] file){
        Map<String,Object> resultMap = new HashMap<>();
        JSONObject json=new JSONObject();
        List<String> fileName1 = new ArrayList<>();

        String path = "";
        try {
            for (int i = 0; i < file.length; i++) {
                if (!file[i].isEmpty()) {
                    //上传文件，随机名称，";"分号隔开
                     fileName1.add(FileUtil.uploadFile(request, file[i], true));

                }
            }

            for (String s:fileName1){
                path=path+s+",";
                System.out.println(s);
            }
            path = path.substring(0,path.length()-1);
            //上传成功
            if(fileName1!=null&&fileName1.size()>0){
                System.out.println("上传成功！");
                resultMap.put("status", 200);
                resultMap.put("message", "上传成功！");
            }else {
                resultMap.put("status", 500);
                resultMap.put("message", "上传失败！文件格式错误！");
            }
        } catch (Exception e) {
            e.printStackTrace();
            resultMap.put("status", 500);
            resultMap.put("message", "上传异常！");
        }
        json.put("msg","添加成功");
        json.put("path",path);

        return json.toString();
    }


}
