package org.ssm.center.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Slf4j
@Controller
public class gotoController {

    @RequestMapping("/home")
    public String gotoHome(HttpServletRequest request){
        String rightUrl = null;

        rightUrl = request.getHeader("REFERER");
        if("".equals(rightUrl) || rightUrl ==null){
            return "youAreABadBoy";
        }else {
            return "center/home";
        }

    }

    @RequestMapping("/kpiTest")
    public String gotoKpiTest(HttpServletRequest request){
        String rightUrl = null;

        rightUrl = request.getHeader("REFERER");
        if("".equals(rightUrl) || rightUrl ==null){
            return "youAreABadBoy";
        }else {
            return "kpi/kpiTest";
        }

    }

    @RequestMapping("/kpiSet")
    public String gotoKpiSet(HttpServletRequest request){
        String rightUrl = null;

        rightUrl = request.getHeader("REFERER");
        if("".equals(rightUrl) || rightUrl ==null){
            return "youAreABadBoy";
        }else {
            return "kpi/kpiSet";
        }

    }

    @RequestMapping("/kpiSelect")
    public String gotoKpiSelect(HttpServletRequest request){
        String rightUrl = null;

        rightUrl = request.getHeader("REFERER");
        if("".equals(rightUrl) || rightUrl ==null){
            return "youAreABadBoy";
        }else {
            return "kpi/kpiSelect";
        }

    }

    @RequestMapping("/kpiSelectNormal")
    public String gotoKpiSelectNormal(HttpServletRequest request){
        String rightUrl = null;

        rightUrl = request.getHeader("REFERER");
        if("".equals(rightUrl) || rightUrl ==null){
            return "youAreABadBoy";
        }else {
            return "kpi/kpiSelectNormal";
        }

    }

    @RequestMapping("/member")
    public String gotoKpiMember(HttpServletRequest request){
        String rightUrl = null;

        rightUrl = request.getHeader("REFERER");
        if("".equals(rightUrl) || rightUrl ==null){
            return "youAreABadBoy";
        }else {
            return "kpi/kpiManege";
        }

    }
    @RequestMapping("/historyKpiChange")
    public String gotoKpiHistoryKpiChange(HttpServletRequest request){
        String rightUrl = null;

        rightUrl = request.getHeader("REFERER");
        if("".equals(rightUrl) || rightUrl ==null){
            return "youAreABadBoy";
        }else {
            return "kpi/historyKpiChange";
        }

    }

    @RequestMapping("/changeUserInformation")
    public String gotoKpiChangeUserInformation(HttpServletRequest request){
        String rightUrl = null;

        rightUrl = request.getHeader("REFERER");
        if("".equals(rightUrl) || rightUrl ==null){
            return "youAreABadBoy";
        }else {
            return "kpi/changeUserInformation";
        }

    }
    @RequestMapping("/addNewUser")
    public String gotoAddNewUser(HttpServletRequest request){
        String rightUrl = null;

        rightUrl = request.getHeader("REFERER");
        if("".equals(rightUrl) || rightUrl ==null){
            return "youAreABadBoy";
        }else {
            return "kpi/addNewUser";
        }

    }

    @RequestMapping("/account")
    public String gotoAccount(HttpServletRequest request){
        String rightUrl = null;

        rightUrl = request.getHeader("REFERER");
        if("".equals(rightUrl) || rightUrl ==null){
            return "youAreABadBoy";
        }else {
            return "kpi/account";
        }

    }

    @RequestMapping("/file")
    public String gotoBlog(HttpServletRequest request){
        String rightUrl = null;

        rightUrl = request.getHeader("REFERER");
        if("".equals(rightUrl) || rightUrl ==null){
            return "youAreABadBoy";
        }else {
            return "center/file";
        }

    }

    @RequestMapping("/browseFile")
    public String gotoBrowseBlog(HttpServletRequest request){
        String rightUrl = null;

        rightUrl = request.getHeader("REFERER");
        if("".equals(rightUrl) || rightUrl ==null){
            return "youAreABadBoy";
        }else {
            return "file/browseFile";
        }

    }

    @RequestMapping("/fivelineqi")
    public String gotofivelineqi(HttpServletRequest request){
        String rightUrl = null;

        rightUrl = request.getHeader("REFERER");
        if("".equals(rightUrl) || rightUrl ==null){
            return "youAreABadBoy";
        }else {
            return "relax/fivelineqi";
        }

    }

    @RequestMapping("/fileUpload")
    public String gotoFileUpload(HttpServletRequest request){
        String rightUrl = null;

        rightUrl = request.getHeader("REFERER");
        if("".equals(rightUrl) || rightUrl ==null){
            return "youAreABadBoy";
        }else {
            return "file/fileUpload";
        }

    }

    @RequestMapping("/UEditorUpload")
    public String gotoUEditorUpload(HttpServletRequest request){
        String rightUrl = null;

        rightUrl = request.getHeader("REFERER");
        if("".equals(rightUrl) || rightUrl ==null){
            return "youAreABadBoy";
        }else {
            return "file/UEditorUpload";
        }

    }
    @RequestMapping("/simple")
    public String gotoSimple(HttpServletRequest request){
        String rightUrl = null;

        rightUrl = request.getHeader("REFERER");
        if("".equals(rightUrl) || rightUrl ==null){
            return "youAreABadBoy";
        }else {
            return "file/simple";
        }

    }

    @RequestMapping("/projectM")
    public String gotoProjectM(HttpServletRequest request){
        String rightUrl = null;

        rightUrl = request.getHeader("REFERER");
        if("".equals(rightUrl) || rightUrl ==null){
            return "youAreABadBoy";
        }else {
            return "PM/projectM";
        }

    }
    @RequestMapping("/createProject")
    public String gotoCreateProject(HttpServletRequest request){
        String rightUrl = null;

        rightUrl = request.getHeader("REFERER");
        if("".equals(rightUrl) || rightUrl ==null){
            return "youAreABadBoy";
        }else {
            return "PM/createProject";
        }

    }
    @RequestMapping("/1111")
    public String goto1111(HttpServletRequest request){
        String rightUrl = null;

        rightUrl = request.getHeader("REFERER");
        if("".equals(rightUrl) || rightUrl ==null){
            return "youAreABadBoy";
        }else {
            return "center/1111";
        }

    }

    @RequestMapping("/showAllProject")
    public String gotoShowAllProject(HttpServletRequest request){
        String rightUrl = null;

        rightUrl = request.getHeader("REFERER");
        if("".equals(rightUrl) || rightUrl ==null){
            return "youAreABadBoy";
        }else {
            return "PM/showAllProject";
        }
    }

    @RequestMapping("/showProjectGantt")
    public String gotoShowProjectGantt(HttpServletRequest request){
        String rightUrl = null;

        rightUrl = request.getHeader("REFERER");
        if("".equals(rightUrl) || rightUrl ==null){
            return "youAreABadBoy";
        }else {
            return "PM/showProjectGantt";
        }
    }

    @RequestMapping("/blogUpload")
    public String gotoBlogUpload(HttpServletRequest request){
        String rightUrl = null;

        rightUrl = request.getHeader("REFERER");
        if("".equals(rightUrl) || rightUrl ==null){
            return "youAreABadBoy";
        }else {
            return "file/blogUpload";
        }
    }

    @RequestMapping("/MyProject")
    public String gotoMyProject(HttpServletRequest request){
        String rightUrl = null;

        rightUrl = request.getHeader("REFERER");
        if("".equals(rightUrl) || rightUrl ==null){
            return "youAreABadBoy";
        }else {
            return "PM/MyProject";
        }
    }

    @RequestMapping("/showAllPMNormal")
    public String gotoShowAllPMNormal(HttpServletRequest request){
        String rightUrl = null;

        rightUrl = request.getHeader("REFERER");
        if("".equals(rightUrl) || rightUrl ==null){
            return "youAreABadBoy";
        }else {
            return "PM/showAllPMNormal";
        }
    }

    @RequestMapping("/DCSet")
    public String gotoDCSet(HttpServletRequest request){
        String rightUrl = null;

        rightUrl = request.getHeader("REFERER");
        if("".equals(rightUrl) || rightUrl ==null){
            return "youAreABadBoy";
        }else {
            return "DC/DCSet";
        }
    }

}
