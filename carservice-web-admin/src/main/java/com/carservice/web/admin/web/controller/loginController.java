package com.carservice.web.admin.web.controller;

import com.carservice.commons.constant.ConstantUtils;
import com.carservice.commons.utils.CookieUtils;
import com.carservice.domain.CarUser;
import com.carservice.web.admin.service.CarUserService;
import org.apache.commons.lang3.StringUtils;
import org.apache.http.HttpResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
public class loginController {

    @Autowired
    private CarUserService carUserService;

    @RequestMapping(value = {"","login"},method = RequestMethod.GET)
    public String login(HttpServletRequest httpServletRequest) {
        String userInfo = CookieUtils.getCookieValue(httpServletRequest,"userInfo");

        if(!StringUtils.isBlank(userInfo)) {
            String[] userInfoArray = userInfo.split(":");
            String email = userInfoArray[0];
            String password = userInfoArray[1];
            httpServletRequest.setAttribute("email",email);
            httpServletRequest.setAttribute("password",password);
            httpServletRequest.setAttribute("isRemember",true);
        }
        return "login";
    }

    /**
     * 登录
     *
     * @param email
     * @param password
     * @return
     */
    @RequestMapping(value = "login", method = RequestMethod.POST)
    public String login(@RequestParam(required = true) String email, @RequestParam(required = true) String password, HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Model model) {
        CarUser carUser = carUserService.login(email, password);
        boolean isRemember = httpServletRequest.getParameter("isRemember") == null ? false : true;

        if(!isRemember) {
            CookieUtils.deleteCookie(httpServletRequest,httpServletResponse,"userInfo");
        }

        if(carUser == null) {
            // 如果该用户不存在，则提示信息，返回login.jsp
            model.addAttribute("message","用户名或密码错误");
            return login(httpServletRequest);
        } else {
            if(isRemember) {
                CookieUtils.setCookie(httpServletRequest,httpServletResponse,"userInfo",String.format("%s:%s",email,password), 7*24*60*60);
            }
            httpServletRequest.getSession().setAttribute(ConstantUtils.SESSION_USER,carUser);
            return "redirect:/main";
        }

    }
}
