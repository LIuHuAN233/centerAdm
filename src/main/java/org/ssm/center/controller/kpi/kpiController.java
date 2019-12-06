package org.ssm.center.controller.kpi;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import lombok.extern.slf4j.Slf4j;


import net.sf.json.JSONArray;
import org.checkerframework.checker.units.qual.K;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.ssm.center.dao.kpi.KpiThisTimeMapper;
import org.ssm.center.pojo.kpi.*;
import org.ssm.center.service.kpi.KpiService;
import org.ssm.center.service.kpi.UserService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.UnsupportedEncodingException;
import java.nio.charset.UnsupportedCharsetException;
import java.util.*;

@Slf4j
@Controller
public class kpiController {

    @Autowired
    UserService userService;

    @Autowired
    KpiService kpiService;

    public static String convertEncodingFormat(String str, String formatFrom, String FormatTo) {
        String result = null;
        if (!(str == null || str.length() == 0)) {
            try {
                result = new String(str.getBytes(formatFrom), FormatTo);
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }
        }
        return result;
    }

    @RequestMapping(value = "/checkStatus")
    @ResponseBody
    public Integer checkStatus(String test,HttpServletRequest request) throws UnsupportedEncodingException {
        System.out.println(request.getCharacterEncoding());
        System.out.println(test);
        String s1="这是中文";
        String s2=new String(s1.getBytes(),"UTF-8");


        System.out.println(s1+"\n"+s2);
        return kpiService.checkStatus();
    }

    @RequestMapping("/checkPerformance")
    @ResponseBody
    public int checkPerformance(){
        String result = kpiService.selectByStatus();
        if (result!=null){
            return 1;
        }else {
            return 2;
        }
    }

    @RequestMapping("/changeStatus")
    @ResponseBody
    public Integer changeStatus(HttpServletRequest request){
        Integer status =Integer.parseInt( request.getParameter("status"));
        HashMap<String,Object> hashMap = new HashMap<>();
        if (status==1){

            hashMap.put("startTime",new java.sql.Date((new Date().getTime())));
            Calendar calendar = Calendar.getInstance();
            int year = calendar.get(Calendar.YEAR);
            int mouth = calendar.get(Calendar.MONTH)+1;
            String mouth1="";
            if (mouth<10){
                mouth1="0"+mouth;
            }else {
                mouth1=""+mouth;
            }
            String kpiNumber = year+"-"+mouth1;

            KRecord sta =kpiService.selectByKpiNumber(kpiNumber);
            if(sta!=null){
                return 5;
            }else {

                /*String kpiNumber = "2019-09";*/
                hashMap.put("kpiNumber", kpiNumber);
                kpiService.insertOneRecord(hashMap);
                return kpiService.changeStatus(status);
            }
        }else {
            String kpiNumber=kpiService.selectByStatus();
            List<Kpi> list1 = kpiService.selectKpiExist(kpiNumber);
            if(list1.size()!=0){

                return 3;
            }else {
                System.out.println(kpiNumber);
                List<KpiThisTime> list = kpiService.groupAvgKpi(kpiNumber);
                System.out.println(list.size());
                for (KpiThisTime k1:list){
                    System.out.println(k1.toString());
                }
               for (KpiThisTime k:list){
                   kpiService.insertOneKpi(k);
               }

                hashMap.put("endTime",new java.sql.Date((new Date().getTime())));
                hashMap.put("kpiNumber",kpiNumber);

                kpiService.updateEndTime(hashMap);
                return kpiService.changeStatus(status);
            }


        }


    }

    @RequestMapping("/showAllGroup")
    @ResponseBody
    public String showAllGroup(){
        List<KGroup> kGroups = kpiService.selectAllGroup();

        JSONArray jsonArray = JSONArray.fromObject(kGroups);

            /*JSONArray jsonArray = JSONArray.fromObject(kGroups);
        System.out.println();
        String result = new JSONObject(kGroups).toString();*/
        return jsonArray.toString();
    }

    @RequestMapping("/addNewGroup")
    @ResponseBody
    public String addNewGroup(HttpServletRequest request){
        String newGroupName = request.getParameter("newGroupName");
        String newGroup = request.getParameter("newGroup");
        String newGroupId = request.getParameter("newGroupId");

        HashMap<String,Object> hashMap= new HashMap<>();

        hashMap.put("newGroupName",request.getParameter("newGroupName"));
        hashMap.put("newGroup",request.getParameter("newGroup"));
        hashMap.put("newGroupId",request.getParameter("newGroupId"));

        kpiService.addNewGroup(hashMap);
        return "a";
    }

    @RequestMapping("/updateGroup")
    @ResponseBody
    public String updateGroup(HttpServletRequest request){
        String updateGName = request.getParameter("updateGroupName");
        String updateGroup = request.getParameter("updateGroup");

        HashMap<String,Object> hashMap = new HashMap<>();
        hashMap.put("updateGroupName",updateGName);
        hashMap.put("updateGroup",updateGroup);
        hashMap.put("updateGroupId",request.getParameter("updateGroupId"));

        int a= kpiService.updateGroup(hashMap);
        return "a";
    }

    @RequestMapping("/deleteOneGroup")
    @ResponseBody
    public String delOneGroup(HttpServletRequest request){
        String delName = request.getParameter("delName");
        kpiService.deleteOneGroup(delName);
        return "a";
    }

    @RequestMapping("/showAllGroupRelation")
    @ResponseBody
    public String showAllGroupRelation(){

        List<KRelation> list = kpiService.selectAllRelation();
        String result = JSONArray.fromObject(list).toString();
        return result ;
    }

    @RequestMapping("/selectAllGroupName")
    @ResponseBody
    public String selectAllGroupName(){
        String result = JSONArray.fromObject(kpiService.selectAllGroupName()).toString();
        return result;
    }

    @RequestMapping("/addNewGroupRelation")
    @ResponseBody
    public String addNewGroupRelation(HttpServletRequest request){
        String pickExam = request.getParameter("pickExam");
        String pickAssess = request.getParameter("pickAssess");

        int n =Integer.parseInt(request.getParameter("newUse"));
        String newUse = "";
        if(n==1){
            newUse = "已启用";
        }else {
            newUse = "未启用";
        }
        HashMap<String,Object> hashMap = new HashMap<>();
        String arr[] = pickExam.split(",");
        String arr1[] = pickAssess.split(",");
        String exam = "";
        String assess = "";
        for(String s:arr){
            exam+=s+"与";
        }
        for(String s:arr1){
            assess+=s+"与";
        }
        exam = exam.substring(0,exam.length()-1);
        assess=assess.substring(0,assess.length()-1);
        String pickRelaName = exam+"评价"+assess;
        hashMap.put("pickExam",pickExam);
        hashMap.put("pickAssess",pickAssess);
        hashMap.put("pickRelaName",pickRelaName);
        hashMap.put("newUse",newUse);

        kpiService.insertNewRelation(hashMap);

        return "a";
    }

    @RequestMapping("/deleteOneGroupRelation")
    @ResponseBody
    public String deleteOneGroupRelation(HttpServletRequest request){
        String delName = request.getParameter("delName");
        kpiService.deleteOneGroupRelation(delName);
        return "success";
    }

    @RequestMapping("/updateRelation")
    @ResponseBody
    public String updateRelation(HttpServletRequest request){
        String pickExam = request.getParameter("updateExam");
        String pickAssess = request.getParameter("updateAssess");

        int n =Integer.parseInt(request.getParameter("updateUse"));
        String newUse = "";
        if(n==1){
            newUse = "已启用";
        }else {
            newUse = "未启用";
        }
        HashMap<String,Object> hashMap = new HashMap<>();
        String arr[] = pickExam.split(",");
        String arr1[] = pickAssess.split(",");
        String exam = "";
        String assess = "";
        for(String s:arr){
            exam+=s+"与";
        }
        for(String s:arr1){
            assess+=s+"与";
        }
        exam = exam.substring(0,exam.length()-1);
        assess=assess.substring(0,assess.length()-1);
        String pickRelaName = exam+"评价"+assess;
        hashMap.put("pickExam",pickExam);
        hashMap.put("pickAssess",pickAssess);
        hashMap.put("pickRelaName",pickRelaName);
        hashMap.put("newUse",newUse);

        kpiService.insertNewRelation(hashMap);

        return "a";
    }

    @RequestMapping("/insertOneThisTime")
    @ResponseBody
    public int assessOneThisTime(HttpServletRequest request){
        HttpSession httpSession =request.getSession(false);
        User user1 = (User) httpSession.getAttribute("user");
        String  sId =  user1.getuSid();
        String bSid = request.getParameter("bSid");
        Float grade = Float.parseFloat(request.getParameter("grade"));
        System.out.println(grade);
        String kpiNum = kpiService.selectByStatus();
        HashMap<String,Object> hashMap = new HashMap<>();
        hashMap.put("sId",sId);
        hashMap.put("bSid",bSid);
        hashMap.put("grade",grade);
        hashMap.put("updateTime",new java.sql.Date((new Date().getTime())));
        hashMap.put("kpiNum",kpiNum);

        int range = userService.selectOneUserRange(sId);
        int status = userService.selectOneUserStatus(sId);
        List<KpiThisTime> exist= kpiService.selectOneExist(hashMap);
        if (0<=grade && grade<=range){
            if(exist==null || exist.size()==0){
                if (status==1){
                    kpiService.insertOneThisTime(hashMap);
                }else {
                    hashMap.put("grade",grade*status);
                    kpiService.insertOneThisTime(hashMap);
                }

                return 1;
            }else {
                kpiService.updateOneKpiThis(hashMap);
                return 3;
            }
        }else
        {return 2;}


    }

    @RequestMapping("/selectAllThisTimeMe")
    @ResponseBody
    public String selectAllThisTimeMe(HttpServletRequest request){
        HttpSession httpSession =request.getSession(false);
        User user1 = (User) httpSession.getAttribute("user");
        String  sId =  user1.getuSid();
        int num=0;
        String result = "";
        List<User> result1=new ArrayList<>();
        List<KpiThisTime> result2 = new ArrayList<>();
        String sSid = sId;
        List<KRelation> list1 = kpiService.selectAllIsUse();
        String kpiNum1 = kpiService.selectByStatus();
        HashMap<String,Object> hashMap = new HashMap<>();
        hashMap.put("sId",sId);
        hashMap.put("kpiNum",kpiNum1);
        for (KRelation k:list1){
            String arrExam[] = (k.getkExam()).split(",");
            String arrAssess[] = (k.getkAssess()).split(",");
            for (String s:arrExam){
                KGroup kGroup = kpiService.selectOneGroup(s);

                String arrGroup[] = (kGroup.getkGroupId()).split(",");
                for (String g:arrGroup){

                    if (g.equals(sSid)){
                        num++;
                        for (String a:arrAssess){
                            KGroup kGroup1 = kpiService.selectOneGroup(a);
                            String arrKroup1[] = (kGroup1.getkGroupId()).split(",");
                           /* Integer arrKgroup2[] =new Integer[arrKroup1.length];
                            for (int i=0;i<arrKroup1.length;i++){
                                arrKgroup2[i]=Integer.parseInt(arrKroup1[i]);
                            }*/
                            for (User u:userService.selectBatchUser(arrKroup1)){

                                assert result1 != null;
                                result1.add(u);
                            }
                        }
                        break;
                    }
                }
            }
        }
        if (num==0){
            return "noAllow";
        }else {
            for (User u:result1){
                hashMap.put("bsId",u.getuSid());
                if (kpiService.selectOneThisTime(hashMap)!=null) {
                    KpiThisTime k = kpiService.selectOneThisTime(hashMap);
                    k.setUser(u);
                    result2.add(k);
                }else {
                    KpiThisTime k = new KpiThisTime();
                    k.setUser(u);
                    k.setValue(0);
                    result2.add(k);

                }

            }

        }




        return JSONArray.fromObject(result2).toString();
    }

    @RequestMapping("/selectKpiInformation")
    @ResponseBody
    public String selectKpiInformation(HttpServletRequest request){
        /*String kGroupName = new String(request.getParameter("kGroupName").getBytes(“ISO-8859-1”), “UTF-8”);*/
        String sId = "";
        if (request.getParameter("sId")!=""){
            sId = request.getParameter("sId");
        }
        String updateTime = request.getParameter("updateTime");

        String kGroupName = request.getParameter("kGroupName");
        if(updateTime!="" && updateTime!=null){
            updateTime=updateTime.substring(0,updateTime.length()-3);
        }
        if (kGroupName==""){

             if(sId=="" &&updateTime==""){
                List<Kpi> list = kpiService.selectAllKpi();


                return JSONArray.fromObject(list).toString();
            }else if(sId==""){
                List<Kpi> list = kpiService.selectKpiOneTime(updateTime);
                return JSONArray.fromObject(list).toString();
            }else if(updateTime==""){
                List<Kpi> list = kpiService.selectKpiOneUser(sId);
                return JSONArray.fromObject(list).toString();
            }else {
                HashMap<String,Object> hashMap = new HashMap<>();
                hashMap.put("sId",sId);
                hashMap.put("kNumber",updateTime);

                Kpi kpi = kpiService.selectKpiOneUserOneTime1(hashMap);
                return JSONArray.fromObject(kpi).toString();
            }
        }else {
            KGroup kGroup = kpiService.selectOneGroup(kGroupName);
            System.out.println(kGroupName);
            String group = kGroup.getkGroupId();
            String groupUser[] = group.split(",");
            if (sId=="" &&updateTime==""){

                List<Kpi> list = kpiService.selectOneGroupAll(groupUser);
                return JSONArray.fromObject(list).toString();
            }else if (sId!="" &&updateTime==""){

                int num=0;
                String sIdStr = String.valueOf(sId);
                for (String s:groupUser){
                    if (s.equals(sIdStr)){
                        num++;
                        break;
                    }
                }
                System.out.println(num);
                if (num!=0){

                    System.out.println("11111");
                    List<Kpi> list = kpiService.selectKpiOneUser(sId);
                    return JSONArray.fromObject(list).toString();
                }else {
                    return "111";
                }
            }else if (updateTime!="" && sId==""){

                ArrayList< String> arrayList = new ArrayList<String>(groupUser.length);
                Collections.addAll(arrayList, groupUser);
                Map<String, Object> hashMap = new HashMap<String, Object>();
                hashMap.put("kNumber",updateTime);
                hashMap.put("arr",arrayList);
                List<Kpi> list = kpiService.selectOneGroupOneTime(hashMap);
                String kpiS = kpiService.selectKpiLevel(kGroupName);
                String kpiLevel[] = kpiS.split(",");
                int i=1;
                int j =0;
                int kL[]=new int[list.size()];
                System.out.println(kL.length);
                for (String s:kpiLevel){
                    int c= Integer.parseInt(s);
                    while (c>0){
                        kL[j]=i;
                        j++;
                        c--;
                    }
                    i++;
                }
                int z =0;
                for (Kpi k:list){
                    k.getUser().setuStatus(kL[z]);
                    z++;
                }
                return JSONArray.fromObject(list).toString();
            }else {
                int num=0;
                for (String s:groupUser){
                    if (s.equals(sId)){
                        num++;
                        break;
                    }
                }
                if (num!=0)
                {
                    ArrayList< String> arrayList = new ArrayList<String>(groupUser.length);
                    Collections.addAll(arrayList, groupUser);
                    Map<String, Object> hashMap = new HashMap<String, Object>();
                    hashMap.put("kNumber",updateTime);
                    hashMap.put("arr",arrayList);
                    List<Kpi> list = kpiService.selectOneGroupOneTime(hashMap);
                    String kpiS = kpiService.selectKpiLevel(kGroupName);
                    String kpiLevel[] = kpiS.split(",");
                    int i=1;
                    int j =0;
                    int kL[]=new int[list.size()];
                    for (String s:kpiLevel){
                        int c= Integer.parseInt(s);
                        while (c>0){
                            kL[j]=i;
                            j++;
                            c--;
                        }
                        i++;
                    }
                    int z =0;
                    Kpi k2 = new Kpi();
                    for (Kpi k:list){
                        k.getUser().setuStatus(kL[z]);
                        z++;
                        if (k.getsId().equals(sId)){
                            k2 = k;
                        }
                    }
                    return JSONArray.fromObject(k2).toString();
                    /*HashMap<String,Object> hashMap = new HashMap<>();
                    hashMap.put("kGroupTime",updateTime);
                    hashMap.put("kNumber",kGroupName);
                    System.out.println("2222");
                    System.out.println(kGroupName);
                    List<Kpi> list = kpiService.selectKpiOneUserOneTime(hashMap);
                    String kpiS = kpiService.selectKpiLevel(kGroupName);
                    String kpiLevel[] = kpiS.split(",");
                    System.out.println(kpiS);
                    int i=1;
                    int j =0;
                    int kL[]=new int[list.size()];
                    System.out.println(kL.length);
                    for (String s:kpiLevel){
                        int c= Integer.parseInt(s);
                        while (c>0){
                            kL[j]=i;
                            j++;
                            c--;
                        }
                        i++;
                    }
                    int z =0;
                    Kpi k2 = new Kpi();
                    for (Kpi k:list){
                        k.getUser().setuStatus(kL[z]);
                        if (k.getsId().equals(sId));
                        k2=k;
                        z++;
                    }
                    System.out.println(k2);
                    return JSONArray.fromObject(k2).toString();*/
                }else {
                    return "111";
                }
            }

        }


    }

    @RequestMapping("/selectKpiInformationNormal")
    @ResponseBody
    public String selectKpiInformationNormal(HttpServletRequest request) {
        /*String kGroupName = new String(request.getParameter("kGroupName").getBytes(“ISO-8859-1”), “UTF-8”);*/
        HttpSession httpSession = request.getSession();
        User user = (User) httpSession.getAttribute("user");
        String sId = user.getuSid();

        String updateTime = request.getParameter("updateTime");

        String kGroupName = request.getParameter("kGroupName");
        if (updateTime != "" && updateTime != null) {
            updateTime = updateTime.substring(0, updateTime.length() - 3);
        }

        if (kGroupName == "")
        {

            if (updateTime == "") {
                    List<Kpi> list = kpiService.selectKpiOneUser(sId);
                    return JSONArray.fromObject(list).toString();
            } else {
                HashMap<String, Object> hashMap = new HashMap<>();
                hashMap.put("sId", sId);
                hashMap.put("kNumber", updateTime);
                    Kpi kpi = kpiService.selectKpiOneUserOneTime1(hashMap);
                    return JSONArray.fromObject(kpi).toString();
            }
        } else
            {
                KGroup kGroup = kpiService.selectOneGroup(kGroupName);
                String group = kGroup.getkGroupId();
                String groupUser[] = group.split(",");
            if (updateTime == "") {

                int num = 0;
                String sIdStr = String.valueOf(sId);
                for (String s : groupUser) {
                    if (s.equals(sIdStr)) {
                        num++;
                        break;
                    }
                }
                if (num != 0) {


                    List<Kpi> list = kpiService.selectKpiOneUser(sId);
                    return JSONArray.fromObject(list).toString();
                } else {
                    return "111";
                }
            } else
                {

                ArrayList<String> arrayList = new ArrayList<String>(groupUser.length);
                Collections.addAll(arrayList, groupUser);
                Map<String, Object> hashMap = new HashMap<String, Object>();
                hashMap.put("kNumber", updateTime);
                hashMap.put("arr", arrayList);


                    int num = 0;
                    String sIdStr = String.valueOf(sId);
                    for (String s : groupUser) {
                        if (s.equals(sIdStr)) {
                            num++;
                            break;
                        }
                    }
                    if (num != 0) {

                        List<Kpi> list = kpiService.selectOneGroupOneTime(hashMap);
                        String kpiS = kpiService.selectKpiLevel(kGroupName);
                        String kpiLevel[] = kpiS.split(",");
                        int i = 1;
                        int j = 0;
                        int kL[] = new int[list.size()];
                        for (String s : kpiLevel) {
                            int c = Integer.parseInt(s);
                            while (c > 0) {
                                kL[j] = i;
                                j++;
                                c--;
                            }
                            i++;
                        }
                        int z = 0;
                        for (Kpi k : list) {
                            k.getUser().setuStatus(kL[z]);
                            z++;
                        }
                        Kpi result11 = new Kpi();
                        for (Kpi k : list) {
                            if (k.getsId().equals(sId)) {
                                result11 = k;
                            }
                        }

                        return JSONArray.fromObject(result11).toString();

                    } else {
                        return "111";
                    }



            }


        }
    }

    /*历史成绩修改与查询*/
    @RequestMapping("/changeOneHistoryKpi")
    @ResponseBody
    public int changeOneHistoryKpi(HttpServletRequest request){
       String sId="";
       String kpiNumber ="";
       Float newKpi = 0f;
       if(request.getParameter("sId")!=""&&request.getParameter("kpiNumber")!=""&&request.getParameter("newKpi")!=""){
            sId=request.getParameter("sId");
            kpiNumber = request.getParameter("kpiNumber");
            kpiNumber=kpiNumber.substring(0,kpiNumber.length()-3);
            newKpi = Float.parseFloat(request.getParameter("newKpi"));

           HashMap<String,Object> hashMap = new HashMap<>();
           hashMap.put("sId",sId);
           hashMap.put("kpiNumber",kpiNumber);
           hashMap.put("newKpi",newKpi);

           int result =  kpiService.updateOneKpi(hashMap);

           return 1;
       }else {
           return 2;
       }


    }
    @RequestMapping("/selectOneHistoryKpi")
    @ResponseBody
    public String selectOneHistoryKpi(HttpServletRequest request){
        String sId ="";

        if (request.getParameter("sId")==""){
            return "0";
        }else {
            sId =  request.getParameter("sId");
            return JSONArray.fromObject(kpiService.selectKpiOneUser(sId)).toString();
        }

    }




}
