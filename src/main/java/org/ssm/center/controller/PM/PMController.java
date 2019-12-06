package org.ssm.center.controller.PM;

import lombok.extern.slf4j.Slf4j;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.ssm.center.pojo.kpi.GanttData;
import org.ssm.center.pojo.kpi.PmProject;
import org.ssm.center.pojo.kpi.PmRate;
import org.ssm.center.pojo.kpi.User;
import org.ssm.center.service.pm.PmService;

import javax.servlet.http.HttpServletRequest;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

@Slf4j
@Controller
public class PMController {

    @Autowired
    PmService pmService;

    @RequestMapping("/getGanttData")
    @ResponseBody
    public String getGanttData(){
        return "";
    }

    @RequestMapping("/getGanttY")
    @ResponseBody
    public String getGanttY(HttpServletRequest request) throws ParseException {
        PmProject p =pmService.selectByPrimaryKey(Integer.parseInt(request.getParameter("id")));
        List<PmProject> arr = new ArrayList<>();
        arr.add(p);
        selectAllSon(arr,Integer.parseInt(request.getParameter("id")));

        JSONArray list2 = new JSONArray();

        SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");

        for (PmProject p1:arr){
            System.out.println(p1.getpTaskName());
            if (p1.getpFatherId()!=0){
                if (p1.getpTaskName()==null||p1.getpTaskName().length()==0){
                    JSONObject hashMap = new JSONObject();
                    hashMap.put("name",p1.getpName());
                    hashMap.put("id",String.valueOf(p1.getId()));
                    hashMap.put("start",p1.getpStartTime().getTime()+8*60*60*1000);
                    hashMap.put("end",p1.getpEndTime().getTime()+32*60*60*1000-1);
                    hashMap.put("owner",p1.getpUserName());
                    hashMap.put("parent",String.valueOf(p1.getpFatherId()));
                    list2.add(hashMap);

                }else {
                    String taskName[] =(p1.getpTaskName()).split(",");
                    String taskStart[] = (p1.getpTaskBegin()).split(",");
                    String taskEnd[] = (p1.getpTaskEnd()).split(",");
                    JSONObject hashMap1 = new JSONObject();
                    /*GanttData g=new GanttData();
                    g.setId(p1.getId());
                    g.setParent(p1.getpFatherId());
                    g.setStart(p1.getpStartTime().getTime());
                    g.setEnd(p1.getpEndTime().getTime());
                    g.setName(p1.getpName());
                    g.setOwner(p1.getpUserName());*/
                    hashMap1.put("name",p1.getpName());
                    hashMap1.put("id",String.valueOf(p1.getId()));
                    hashMap1.put("start",p1.getpStartTime().getTime()+8*60*60*1000);
                    hashMap1.put("end",p1.getpEndTime().getTime()+32*60*60*1000-1);
                    hashMap1.put("owner",p1.getpUserName());
                    hashMap1.put("parent",String.valueOf(p1.getpFatherId()));
                    list2.add(hashMap1);
                    for (int i=0;i<taskName.length;i++){
                        /*GanttData g1=new GanttData();
                        g.setId(Integer.parseInt(p1.getId()+"0"+i));
                        g.setParent(p1.getId());
                        g.setStart((sdf.parse(taskStart[i])).getTime());
                        g.setEnd((sdf.parse(taskEnd[i])).getTime());
                        g.setName(taskName[i]);
                        g.setOwner(p1.getpUserName());
                        list2.add(g1);*/
                        JSONObject hashMap = new JSONObject();
                        hashMap.put("name",taskName[i]);
                        hashMap.put("id",p1.getId()+"0"+i);
                        hashMap.put("start",(sdf.parse(taskStart[i])).getTime()+8*60*60*1000);
                        hashMap.put("end",(sdf.parse(taskEnd[i])).getTime()+32*60*60*1000-1);
                        hashMap.put("owner",p1.getpUserName());
                        hashMap.put("parent",String.valueOf(p1.getId()));
                        list2.add(hashMap);
                    }

                }


            }else {

                JSONObject hashMap = new JSONObject();
                hashMap.put("name",p1.getpName());
                hashMap.put("id",String.valueOf(p1.getId()));
                hashMap.put("start",p1.getpStartTime().getTime()+8*60*60*1000);
                hashMap.put("end",p1.getpEndTime().getTime()+32*60*60*1000-1);
                hashMap.put("owner",p1.getpUserName());
                list2.add(hashMap);
            }
        }
        JSONObject list5 = new JSONObject();

        list5.put("list",list2);
        return list5.toString();
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

    @RequestMapping("/addOneRate")
    @ResponseBody
    public String addOneRate(String[] rqs,HttpServletRequest request){
        User user = (User) request.getSession(false).getAttribute("user");
        PmRate pmRate = new PmRate();
        pmRate.setpId(Integer.parseInt(rqs[0]));
        pmRate.setrName(rqs[1]);
        pmRate.setrRate(rqs[2]);
        pmRate.setrFilePath(rqs[3]);
        pmRate.setrFileName(rqs[4]);
        pmRate.setrDate(new Date());
        pmRate.setRuId(user.getuSid());
        pmRate.setRuName(user.getuName());
        int result = pmService.insert(pmRate);
        if (result==1){
            return "success";
        }
        else {
            return "isExists";
        }
    }
    @RequestMapping("/updateOneRate")
    @ResponseBody
    public String updateOneRate(String[] rqs){
        PmRate pmRate = new PmRate();
        pmRate.setrId(Integer.parseInt(rqs[0]));
        pmRate.setrName(rqs[1]);
        pmRate.setrRate(rqs[2]);
        pmRate.setrFilePath(rqs[3]);
        pmRate.setrFileName(rqs[4]);
        pmRate.setrDate(new Date());
        int result = pmService.updateOneRate(pmRate);
        if (result==1){
            return "success";
        }
        else {
            return "isExists";
        }
    }

    @RequestMapping("/showGanttPage/**")
    @ResponseBody
    public ModelAndView showGanttPage(HttpServletRequest request){
        ModelAndView mu = new ModelAndView();
        String url = request.getServletPath();
        String[] urlArr = url.split("/");
        int id =Integer.parseInt(urlArr[urlArr.length-1]);
        String pName = urlArr[urlArr.length-2];
        mu.setViewName("PM/showProjectGantt");
        mu.addObject("id",id);
        mu.addObject("pName",pName);
        return mu;
    }

    @RequestMapping("/gotoDeleteOneRate/**")
    @ResponseBody
    public ModelAndView gotoShowOneProject(HttpServletRequest request){

        String url = request.getServletPath();
        String[] urlArr = url.split("/");
        int id =Integer.parseInt(urlArr[urlArr.length-1]);
        String pName = urlArr[urlArr.length-2];
        pmService.deleteOneByRId(id);
        ModelAndView mu = new ModelAndView();
        mu.setViewName("PM/showOneProject");
        mu.addObject("pmId",pName);

        return mu;
    }
}
