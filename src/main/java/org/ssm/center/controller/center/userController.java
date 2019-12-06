package org.ssm.center.controller.center;

import com.github.pagehelper.PageInfo;
import lombok.extern.slf4j.Slf4j;
import net.sf.json.JSON;
import net.sf.json.JSONArray;
import org.apache.cxf.transport.Session;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.ssm.center.pojo.kpi.*;
import org.ssm.center.service.kpi.KpiService;
import org.ssm.center.service.kpi.UserInformationService;
import org.ssm.center.service.kpi.UserService;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.*;

import static org.ssm.center.util.MyUtils.getIpAddr;

@Slf4j
@Controller
public class userController {

    @Autowired
    UserService userService;

    @Autowired
    KpiService kpiService;

    @Autowired
    UserInformationService userInformationService;


    @RequestMapping("/loginHome")
    @ResponseBody
    public String loginHome(HttpServletRequest request, HttpServletResponse response) {

        String sId = request.getParameter("username");
        System.out.println(sId);
        String password = request.getParameter("password");
        System.out.println(password);
        String checkBox = request.getParameter("remember");
        System.out.println(checkBox);
        /*String userName = req.getParameter("userName");
        String password = req.getParameter("password");
        // 模拟数据库数据
        UserModel user = UserModel.getInstance();
        String dbUserName = user.getUserName();
        String dbPassword = user.getPassword();
        if (dbUserName.equals(userName) && dbPassword.equals(password)) {
            // 用户名和密码都匹配，证明登陆成功，设置session和cookie
            HttpSession session = req.getSession();
            session.setAttribute("userName", userName);
            session.setAttribute("password", password);

            // 转发请求到用户列表
            req.getRequestDispatcher("/userList").forward(req, resp);
        } else {
            // 转发请求到登陆页面
            req.getRequestDispatcher("index.jsp").forward(req, resp);
        }*/
        User user = userService.selectByUserName(sId);
        System.out.println(user);
        user.setuRange(100);

        Map<String,Object> map =new HashMap<>();

        if (user==null){

            map.put("code",0);
            map.put("msg","用户名错误");
        }else if(!user.getuPassword().equals(password)){
            map.put("code",0);
            map.put("msg","密码错误");
        }else {
            System.out.println("success");
            map.put("code",1);
            map.put("msg","");
            request.getSession().setAttribute("user",user);
            User user1 = (User) request.getSession().getAttribute("user");

            Cookie cookie = new Cookie("userName", sId);
            Cookie cookie2 = new Cookie("password", password);
            Cookie cookie3 = new Cookie("rememberP",checkBox);
            // 设置cookie的存储时长
            cookie.setMaxAge(60*60*24*7);
            cookie2.setMaxAge(60*60*24*7);
            cookie3.setMaxAge(60*60*24*7);
            // 把cookie发送给浏览器
            response.addCookie(cookie);
            response.addCookie(cookie2);
            response.addCookie(cookie3);




        }
        String result = new JSONObject(map).toString();
        return result;
    }

    /*@RequestMapping("/notLogin")
    @ResponseBody
    public String notLogin(HttpServletRequest request){

    }*/

    @RequestMapping("/authorityControl")
    @ResponseBody
    public String authorityControl(HttpServletRequest request){
        HttpSession httpSession = request.getSession(false);

        if (httpSession.getAttribute("user")!=null) {
            User user = (User)httpSession.getAttribute("user");
            if (user.getuLevel() == 1) {
                return "1";
            } else {
                return "2";
            }
        }else {
            return "3";
        }
    }

    @RequestMapping("/saveSession")
    @ResponseBody
    public String saveSession(HttpServletRequest request){
        String sId = request.getParameter("userName");

        User user =userService.selectByUserName(sId);



        request.getSession().setAttribute("user",user);

        return "success";
    }

    @RequestMapping("/selectAllUser")
    @ResponseBody
    public String selectAllUser(){
        return JSONArray.fromObject(userService.selectAllUser()).toString();
    }

    @RequestMapping("/selectAllUserWithG")
    @ResponseBody
    public String selectAllUserWithG(){
        return JSONArray.fromObject(userService.selectAllUserWithG()).toString();
    }

    @RequestMapping("/getAllAssessPerson")
    @ResponseBody
    public String getAllAssessPerson(HttpServletRequest request,HttpServletResponse response){

        HttpSession httpSession = request.getSession();
        User user = (User) httpSession.getAttribute("user");
        String sId = user.getuSid();
        System.out.println(sId);
        int num=0;
        String result = "";
        List<User> result1=new ArrayList<>();
        String sSid = sId;
        List<KRelation> list1 = kpiService.selectAllIsUse();
        response.setContentType("text/html;charset=utf-8");

        for (KRelation k:list1){
            System.out.println(k.toString());
            String arrExam[] = (k.getkExam()).split(",");
            System.out.println(arrExam.length);
            System.out.println(arrExam[0]);
            String arrAssess[] = (k.getkAssess()).split(",");
            System.out.println(arrAssess.length);
            System.out.println(arrAssess[0]);
            for (String s:arrExam){
                KGroup kGroup = kpiService.selectOneGroup(s);
                System.out.println(kGroup.toString());
                String arrGroup[] = (kGroup.getkGroupId()).split(",");
                for (String g:arrGroup){
                    System.out.println(g);
                    if (g.equals(sSid)){
                        num++;
                        for (String a:arrAssess){
                            KGroup kGroup1 = kpiService.selectOneGroup(a);
                            String arrKroup1[] = (kGroup1.getkGroupId()).split(",");
                            /*Integer arrKgroup2[] =new Integer[arrKroup1.length];
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

            return JSONArray.fromObject(result1).toString();
        }

    }

    /*修改成员属性*/
    @RequestMapping("/changeOneUserInformation")
    @ResponseBody
    public int changeUserInformation(HttpServletRequest request){
        String newScore ="";
        int  newLevel = 0;
        String newPassword="";
        String sId="";
        HashMap<String,Object> hashMap = new HashMap<>();

        if (request.getParameter("sId")!=null) {
            sId =request.getParameter("sId");
        }
        if (request.getParameter("newScore")!=null){
            newScore = request.getParameter("newScore");
        }
        if (request.getParameter("newLevel")!=null){
            newLevel = Integer.parseInt(request.getParameter("newLevel"));
        }
        if (request.getParameter("newPassword")!=null){
            newPassword = request.getParameter("newPassword");
        }
        hashMap.put("sId",sId);
        hashMap.put("newScore",newScore);
        hashMap.put("newLevel",newLevel);
        hashMap.put("newPassword",newPassword);
        int result = userService.changeUserInformation(hashMap);
        if (result==1){
            return 1;
        }else {
            return 2;
        }

    }

    /*添加成员属性*/
    @RequestMapping("/addNewUserInformation")
    @ResponseBody
    public int addNewUserInformation(HttpServletRequest request) {
        if (request.getParameter("sId") != null && request.getParameter("realName") != null && request.getParameter("password") != null &&
                request.getParameter("score") != null && request.getParameter("level") != null) {
            HashMap<String, Object> hashMap = new HashMap<>();
            hashMap.put("sId", request.getParameter("sId"));
            hashMap.put("realName", request.getParameter("realName"));
            hashMap.put("password", request.getParameter("password"));
            hashMap.put("score", Integer.parseInt(request.getParameter("score")));
            hashMap.put("level", Integer.parseInt(request.getParameter("level")));


            if (userService.selectOneUserRange(request.getParameter("sId")) !=null) {
                return 4;
            } else {
                if (userService.insertNewUser(hashMap) == 1){
                    return 1;
                }else {
                    return 2;
                }
            }
        }else {
            return 3;
        }


        }

    /*添加成员属性*/
    @RequestMapping("updatePasswordNormal")
    @ResponseBody
    public int updatePasswordNormal(HttpServletRequest request) {
        if (request.getParameter("sId") != null && request.getParameter("oldPassword") != null && request.getParameter("password") != null) {
            HashMap<String, Object> hashMap = new HashMap<>();
            hashMap.put("sId", request.getParameter("sId"));
            hashMap.put("oldPassword", request.getParameter("oldPassword"));
            hashMap.put("password", request.getParameter("password"));

            if (userService.updatePasswordNormal(hashMap)!=0){
                return 1;
            }else {
                return 2;
            }
        }else {
            return 3;
        }

        }



}
