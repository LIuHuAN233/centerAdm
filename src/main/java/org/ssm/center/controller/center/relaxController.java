package org.ssm.center.controller.center;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

@Slf4j
@Controller
public class relaxController {

    @RequestMapping("/xiaqi")
    @ResponseBody
    public String xiaqi(HttpServletRequest request){
        String pointStr = request.getParameter("point");

        return "1";
    }
}
