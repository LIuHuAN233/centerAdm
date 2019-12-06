package org.ssm.center.controller.PM;

import com.sun.scenario.effect.impl.sw.sse.SSEBlend_SRC_OUTPeer;
import lombok.extern.slf4j.Slf4j;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;
import org.ssm.center.pojo.kpi.PmProject;
import org.ssm.center.pojo.kpi.TagInformation;
import org.ssm.center.pojo.kpi.User;
import org.ssm.center.service.kpi.UserService;
import org.ssm.center.service.pm.PmService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.*;
import java.net.URLEncoder;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

@Slf4j
@Controller
public class fileUpload {

    @Autowired
    PmService pmService;

    @Autowired
    UserService userService;

    @RequestMapping("/addOnePM")
    @ResponseBody
    public String addOnePM(HttpServletRequest request,String[] rqs) throws ParseException {
        DateFormat format1 = new SimpleDateFormat("yyyy-MM-dd");
        PmProject pmProject = new PmProject();
        pmProject.setpName(rqs[0]);
        pmProject.setpCode(rqs[1]);
        pmProject.setpUserName(rqs[2]);
        pmProject.setpUserId(rqs[3]);
        pmProject.setpStartTime(format1.parse(rqs[4]));
        pmProject.setpEndTime(format1.parse(rqs[5]));
        pmProject.setpFileName(rqs[6]);
        pmProject.setpFilePath(rqs[7]);
        pmProject.setpFatherName(rqs[8]);
        if (rqs[9]!=""){
            pmProject.setpFatherId(Integer.parseInt(rqs[9]));
        }
        pmProject.setLeader(rqs[10]);
        pmProject.setpLevel(Integer.parseInt(rqs[11]));
        if (rqs.length>12) {
            if (rqs[12] != "") {
                pmProject.setpTaskName(rqs[12].substring(0, rqs[12].length() - 1));
                pmProject.setpTaskCode(rqs[13].substring(0, rqs[13].length() - 1));
                pmProject.setpTaskBegin(rqs[14].substring(0, rqs[14].length() - 1));
                pmProject.setpTaskEnd(rqs[15].substring(0, rqs[15].length() - 1));
            }
        }


        int result = pmService.insert(pmProject);

        if (result!=0){
            return "success";
        }else {
            return "field";
        }


    }

    @RequestMapping("/uploadOnePM")
    @ResponseBody
    public String uploadOnePM(HttpServletRequest request,String[] rqs) throws ParseException {
        DateFormat format1 = new SimpleDateFormat("yyyy-MM-dd");
        PmProject pmProject = new PmProject();
        pmProject.setpName(rqs[0]);
        pmProject.setpCode(rqs[1]);
        pmProject.setpUserName(rqs[2]);
        pmProject.setpUserId(rqs[3]);
        pmProject.setpStartTime(format1.parse(rqs[4]));
        pmProject.setpEndTime(format1.parse(rqs[5]));
        pmProject.setpFileName(rqs[6]);
        pmProject.setpFilePath(rqs[7]);
        pmProject.setId(Integer.parseInt(rqs[8]));
        int id = Integer.parseInt(rqs[8]);
        int fatherId = Integer.parseInt(rqs[9]);
        pmProject.setLeader(rqs[10]);
        if (rqs[11]!=""){
            pmProject.setpTaskName(rqs[11].substring(0,rqs[11].length()-1));
            pmProject.setpTaskCode(rqs[12].substring(0,rqs[12].length()-1));
            pmProject.setpTaskBegin(rqs[13].substring(0,rqs[13].length()-1));
            pmProject.setpTaskEnd(rqs[14].substring(0,rqs[14].length()-1));
        }
        if (fatherId!=0){
            PmProject checkTime = pmService.selectByPrimaryKey(fatherId);
            if (format1.parse(rqs[4]).getTime()<checkTime.getpStartTime().getTime()){
                if (format1.parse(rqs[5]).getTime()>checkTime.getpEndTime().getTime()){
                    return "1";
                }else {

                    return "2";
                }
            }else if (format1.parse(rqs[5]).getTime()>checkTime.getpEndTime().getTime()){
                System.out.println(format1.parse(rqs[5]).getTime());
                System.out.println(checkTime.getpEndTime().getTime());
                return "3";
            }else {

                int result = pmService.updateByPrimaryKey(pmProject);
                List<Integer> listInt = new ArrayList<>();

                List<PmProject> listPm = new ArrayList<>();
                PmProject p1 = pmService.selectByPrimaryKey(id);
                listPm.add(pmService.selectByPrimaryKey(findFinalFather(p1.getId())));
                listInt.add(p1.getId());
                listInt.add(findFinalFather(p1.getId()));
                selectAllSon(listPm,findFinalFather(p1.getId()));
                List<Integer> listInt1 = new ArrayList<>();
                for (PmProject p:listPm){
                    listInt1.add(p.getId());
                }
                pmService.editFinalFatherStatus(listInt);
                pmService.editFinishStatus(listInt1);
                if (result==1){
                    List<PmProject> list =pmService.selectOneSon(id);

                    if (list.size()>0){
                        HashMap<String,Object> hashMap = new HashMap<>();
                        hashMap.put("pFatherName",rqs[0]);
                        hashMap.put("id",rqs[8]);
                        pmService.updateFatherName(hashMap);


                        return "4";
                    }else {
                        return "5";
                    }
                }else {
                    return "6";
                }
            }
        }else {
            int result = pmService.updateByPrimaryKey(pmProject);
            List<Integer> listInt = new ArrayList<>();

            List<PmProject> listPm = new ArrayList<>();
            PmProject p1 = pmService.selectByPrimaryKey(id);
            listPm.add(p1);
            listInt.add(p1.getId());
            selectAllSon(listPm,id);
            List<Integer> listInt1 = new ArrayList<>();
            for (PmProject p:listPm){
                listInt1.add(p.getId());
            }
            pmService.editFinalFatherStatus(listInt);
            pmService.editFinishStatus(listInt1);
            if (result==1){
                List<PmProject> list =pmService.selectOneSon(id);

                if (list.size()>0){
                    HashMap<String,Object> hashMap = new HashMap<>();
                    hashMap.put("pFatherName",rqs[0]);
                    hashMap.put("id",rqs[8]);
                    pmService.updateFatherName(hashMap);
                    return "4";
                }else {
                    return "5";
                }
            }else {
                return "6";
            }
        }



    }

    @RequestMapping("/selectAllSon")
    @ResponseBody
    public String selectAllSon(Integer fatherId){
        return JSONArray.fromObject(pmService.selectOneSon(fatherId)).toString();
    }

    public void allFinalFather(List<Integer> list,Integer isFinish){
        list = pmService.selectAllFinalFatherId(isFinish);
    }
    public void selectAllSonId(List<Integer> arr, int id){
        List<PmProject> list = pmService.selectOneSon(id);
        if (list.size()>0){
            for (PmProject p:list){
                arr.add(p.getId());
                selectAllSonId(arr,p.getId());


            }
        }

    }

    @RequestMapping("/selectAllPM")
    @ResponseBody
    public String selectAllPM(Integer isFinish){

        List<Integer> allFinalFather = new ArrayList<>();

        allFinalFather = pmService.selectAllFinalFatherId(isFinish);

        List<Integer> allId = new ArrayList<>();
        for (int a:allFinalFather){
            allId.add(a);
            selectAllSonId(allId,a);
        }
        if (allId.size()==0){
            List<PmProject> list = pmService.selectAllPM(isFinish);
            return JSONArray.fromObject(list).toString();
        }else {
            List<PmProject> list = pmService.selectAllPmDescByFinalId(allId);
            /*List<PmProject> list = pmService.selectAllPM(isFinish);*/

            return JSONArray.fromObject(list).toString();
        }

    }

    @RequestMapping("/createSonP/**")
    public ModelAndView createSonP(HttpServletRequest request){
        ModelAndView mu = new ModelAndView();
        String url=request.getServletPath();
        String[] urlArr = url.split("/");
        int pLevel = Integer.parseInt(urlArr[urlArr.length-1]);
        int id = Integer.parseInt(urlArr[urlArr.length-2]);
        String father =urlArr[urlArr.length-3];

        mu.setViewName("PM/createSonProject");
        mu.addObject("pLevel",pLevel);
        mu.addObject("fatherId",id);
        mu.addObject("pFatherName",father);
        return mu;
    }

    @RequestMapping("/selectAllUserThisProject")
    @ResponseBody
    public String selectAllUserThisProject(HttpServletRequest request){
            int id = Integer.parseInt(request.getParameter("id"));
            return JSONArray.fromObject(pmService.selectByPrimaryKey(id)).toString();

    }

    @RequestMapping("/deleteOneProject")
    @ResponseBody
    public String deleteOneProject(Integer id){

        if (pmService.deleteOneProject(id)!=0){
            return "success";
        }else {
            return "f";
        }
    }

    @RequestMapping("/updateProject/**")
    @ResponseBody
    public ModelAndView updateProject(HttpServletRequest request){

        /*PmProject pmProject = new PmProject();
        pmProject.setId(Integer.parseInt(request.getParameter("id")));
        pmProject.setpName(request.getParameter("pName"));
        pmProject.setpUserName(request.getParameter("pUserName"));
        pmProject.setpUserId(request.getParameter("pUserId"));
        pmProject.setpStartTime(new Date(request.getParameter("pStartTime")));
        pmProject.setpEndTime(new Date(request.getParameter("pEndTime")));*/
        String url=request.getServletPath();
        String[] urlArr = url.split("/");
        int id = Integer.parseInt(urlArr[urlArr.length-1]);

        PmProject pmProject = pmService.selectByPrimaryKey(id);

        ModelAndView mu = new ModelAndView();
        mu.setViewName("PM/updateProject");

        mu.addObject("dataProject",JSONArray.fromObject(pmProject).toString());
        mu.addObject("pName",pmProject.getpName());
        return mu;
    }

    @RequestMapping("/deleteOnePMFile")
    @ResponseBody
    public String deleteOnePMFile(String filePath,String fileName,String id){


        String path = "E:\\testFile\\pm\\"+filePath;
        File file = new File(path);

        file.delete();
        if (fileName!=null && id!=null) {
            PmProject pmProject = pmService.selectByPrimaryKey(Integer.parseInt(id));
            String fileNames =  pmProject.getpFileName();
            String filePaths = pmProject.getpFilePath();
            String fileName1 = "";
            String filePath1 = "";

            for (String f:fileNames.split(",")){
                if(f.equals(fileName)){

                }else {
                    fileName1=fileName1+f+",";
                }
            }

            for (String p:filePaths.split(",")){
                if (p.equals(filePath)){

                }else {
                    filePath1=filePath1+p+",";
                }
            }
            if (filePath1.length()!=0){
                filePath1 = filePath1.substring(0,filePath1.length()-1);
            }
            if (fileName1.length()!=0){
                fileName1 = fileName1.substring(0,fileName1.length()-1);
            }
            pmProject.setpFileName(fileName1);
            pmProject.setpFilePath(filePath1);
            pmService.updateFile(pmProject);

        }
        return "success";



    }

    @RequestMapping("/gotoShowOneProject/**")
    @ResponseBody
    public ModelAndView gotoShowOneProject(HttpServletRequest request){
        String url=request.getServletPath();
        String[] urlArr = url.split("/");
        int id = Integer.parseInt(urlArr[urlArr.length-1]);
        ModelAndView mu = new ModelAndView();
        mu.setViewName("PM/showOneProject");
        mu.addObject("pmId",id);

        return mu;
    }
    @RequestMapping("/gotoShowOneProject1/**")
    @ResponseBody
    public ModelAndView gotoShowOneProject1(HttpServletRequest request){
        String url=request.getServletPath();
        String[] urlArr = url.split("/");
        int id = Integer.parseInt(urlArr[urlArr.length-1]);
        ModelAndView mu = new ModelAndView();
        mu.setViewName("PM/showOneProject1");
        mu.addObject("pmId",id);

        return mu;
    }



    @RequestMapping("/getOneProjectById")
    @ResponseBody
    public String getOneProjectById(String id){
        List<PmProject> list = pmService.selectOnePmWithRate(Integer.parseInt(id));
        for (PmProject p:list){
            System.out.println(p.toString());
        }
        return JSONArray.fromObject(pmService.selectOnePmWithRate(Integer.parseInt(id))).toString();
    }



    @RequestMapping("/getAllFileThisProject")
    @ResponseBody
    public String getAllFileThisProject(String id){
        int ids = 0;
        ids = Integer.parseInt(id);

        List<PmProject> list =new ArrayList<>();
        selectFile(list,ids);
        return JSONArray.fromObject(list).toString();
    }

    public void   selectFile(List<PmProject> list, int id){

        PmProject p =pmService.selectByPrimaryKey(id);
        list.add(p);
        if (p.getpFatherId()!=0){
            selectFile(list,p.getpFatherId());
        }
    }

    @RequestMapping("/downloadPFile")
    public String downloadPFile(HttpServletRequest request,HttpServletResponse response,String path,String name) throws IOException{

        InputStream bis = new BufferedInputStream(new FileInputStream(new File(path)));
        //文件名转码，避免中文乱码
        name = URLEncoder.encode(name, "UTF-8");
        // 设置文件下载头
        response.setContentType("application/force-download");
        response.addHeader("Content-Disposition", "attachment;filename="
                + name);
        // 1.设置文件ContentType类型，这样设置，会自动判断下载文件类型
        response.setContentType("multipart/form-data");
        BufferedOutputStream out = new BufferedOutputStream(
                response.getOutputStream());
        int len = 0;
        while ((len = bis.read()) != -1) {
            out.write(len);
            out.flush();
        }
        out.close();
        return "";
    }

    @RequestMapping("/updateRate/**")
    @ResponseBody
    public ModelAndView gotoUpdateRate(HttpServletRequest request){
        String url=request.getServletPath();
        String[] urlArr = url.split("/");
        int id = Integer.parseInt(urlArr[urlArr.length-1]);
        ModelAndView mu = new ModelAndView();
        mu.setViewName("PM/updateRate");
        mu.addObject("pmId",id);
        return mu;
    }

    @RequestMapping("/gotoChangeRate/**")
    @ResponseBody
    public ModelAndView gotoUpdateRateU(HttpServletRequest request){
        String url=request.getServletPath();
        String[] urlArr = url.split("/");
        int id = Integer.parseInt(urlArr[urlArr.length-1]);
        int fId = Integer.parseInt(urlArr[urlArr.length-2]);


        ModelAndView mu = new ModelAndView();
        mu.setViewName("PM/updateRateU");
        mu.addObject("pmId",fId);
        mu.addObject("rateId",id);
        return mu;
    }

    @RequestMapping("/selectAllPMOneUser")
    @ResponseBody
    public String selectAllPMOneUser(HttpServletRequest request){
        HttpSession session = request.getSession(false);
        User user=(User)session.getAttribute("user");
        String uId = user.getuSid();
        uId = "%"+uId+"%";
        System.out.println(uId);
        return JSONArray.fromObject(pmService.selectAllPMOneUser(uId)).toString();
    }
    public void selectAllSon(List<PmProject> arr, int id){
        List<PmProject> list = pmService.selectOneSon(id);
        if (list.size()>0){
            for (PmProject p:list){
                arr.add(p);
                selectAllSon(arr,p.getId());


            }
        }

    }

    @RequestMapping("/finishOneProject")
    @ResponseBody
    public String finishOneProject(Integer id){
        List<PmProject> list = new ArrayList<>();
        PmProject p1 = pmService.selectByPrimaryKey(id);
        list.add(p1);
        selectAllSon(list,id);
        List<Integer> list1 = new ArrayList<>();
        for (PmProject p:list){
            list1.add(p.getId());
        }
        if (p1.getpFatherId()==null ||p1.getpFatherId()==0){
            pmService.finishOneProjectAll(list1);
        }else {
            pmService.finishOneProject(list1);
        }


        return "success";
    }
        /* nums.add(id);*/
    public Integer findFinalFather(Integer id){
       PmProject pmProject = pmService.selectByPrimaryKey(id);
       if (pmProject.getpFatherId()!=0){
           findFinalFather(pmProject.getpFatherId());
       }
        return pmProject.getId();
    }

    @RequestMapping("/gotoLeaderUpdateFile/**")
    @ResponseBody
    public ModelAndView gotoLeaderUpdateFile(HttpServletRequest request){
        String url=request.getServletPath();
        String[] urlArr = url.split("/");
        int id = Integer.parseInt(urlArr[urlArr.length-1]);

        ModelAndView mu = new ModelAndView();
        mu.setViewName("PM/leaderUploadFile");
        mu.addObject("rateId",id);
        return mu;
    }

    @RequestMapping("/uploadFileLeader")
    @ResponseBody
    public String uploadFile(String filePath,String fileName,Integer id){

        HashMap<String,Object> hashMap = new HashMap<>();
        hashMap.put("filePath",filePath);
        hashMap.put("fileName",fileName);
        hashMap.put("id",id);

        pmService.uploadFile(hashMap);
        return "success";
    }

}
