package org.ssm.center.util;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.context.support.WebApplicationContextUtils;
import org.springframework.web.context.support.XmlWebApplicationContext;
import org.ssm.center.pojo.kpi.User;
import org.ssm.center.service.kpi.UserService;

import javax.servlet.*;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
/*@Component
public class FilterTest implements Filter
{



    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
       *//* ServletContext sc = filterConfig.getServletContext();
        XmlWebApplicationContext cxt = (XmlWebApplicationContext) WebApplicationContextUtils.getWebApplicationContext(sc);

        if(cxt != null && cxt.getBean("userService") != null && userService == null)
            userService = (UserService) cxt.getBean("userService");*//*
    }

    @Override
    public void destroy() {

    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response,
                         FilterChain chain) throws IOException, ServletException {
        // 登陆请求、初始请求直接放行
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse resp = (HttpServletResponse) response;
        String uri = req.getRequestURI();
        if ("/loginHome".equals(uri)||"/".equals(uri)) {
            // 放行
            chain.doFilter(request, response);
            return;
        }




        // 不是登陆请求的话，判断是否有cookie
        Cookie[] cookies = req.getCookies();

        if (req.getSession().getAttribute("user")!=null){

            chain.doFilter(request, response);
            return;
        }else {
            for (Cookie cookie : cookies) {
                cookie.setMaxAge(0);
                cookie.setPath("/");
                resp.addCookie(cookie);
                System.out.println(cookie.getValue());
            }

            req.getRequestDispatcher("/index.jsp").forward(req, resp);
            return;
        }*/
      /*  if (cookies != null && cookies.length > 0) {
            String userName = null;
            String password = null;
            // 判断cookie中的用户名和密码是否和数据库中的一致，如果一致则放行，否则转发请求到登陆页面
            for (Cookie cookie : cookies) {
                System.out.println(cookie.getValue());
                if ("userName".equals(cookie.getName())) {
                    userName = cookie.getValue();
                }
                if ("password".equals(cookie.getName())) {
                    password = cookie.getValue();
                }
            }

            if (userName!=null){

                        chain.doFilter(request, response);
                        return;



            }else {
                // 重定向到登陆界面
                System.out.println(1111);
                req.getRequestDispatcher("/index.jsp").forward(req, resp);
                return;
            }


        } else {

            System.out.println(cookies.length);
            System.out.println(222222);
            req.getRequestDispatcher("/index.jsp").forward(req, resp);
            return;
        }*/
  /*  }


}*/
