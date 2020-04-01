package com.carservice.web.admin.web.interceptor;


import com.carservice.commons.constant.ConstantUtils;
import com.carservice.domain.CarUser;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 权限拦截器
 */
public class PermissionInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o) throws Exception {
        //System.out.println("PermissionInterceptor");
        return true;
    }

    @Override
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {
        //System.out.println(modelAndView.getViewName());
        if(modelAndView != null && modelAndView.getViewName() != null && modelAndView.getViewName().endsWith("login")) {
            CarUser user = (CarUser) httpServletRequest.getSession().getAttribute(ConstantUtils.SESSION_USER);
            if(user!=null) {
                httpServletResponse.sendRedirect("/main");
            }
        }
    }

    @Override
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

    }
}
