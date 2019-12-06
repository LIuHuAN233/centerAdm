package org.ssm.center.controller.file;
import com.baidu.ueditor.ActionEnter;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.ServletContextAware;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

/**
 * 获取百度editor编辑器配置文件
 * Created by yu on 2017/5/16.
 */
@Controller
@RequestMapping("/ued")
public class UeditorController implements ServletContextAware {

    private String rootPath;

    /**
     * 获取resource文件下的editor配置文件ueditor.config.json
     * @param request
     * @return
     */
    @RequestMapping("/ueditor")
    @ResponseBody
    public String ueditorConfig(HttpServletRequest request) {
        return new ActionEnter(request, rootPath, UeditorController.class.getClassLoader()
                .getResource("ueditor.config.json").getPath()).exec();


    }

    @Override
    public void setServletContext(ServletContext servletContext) {
        rootPath = servletContext.getRealPath("/");
    }
}


