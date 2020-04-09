package com.carservice.web.ui.controller;

import com.carservice.commons.dto.BaseResult;
import com.carservice.web.ui.api.UserApi;
import com.carservice.web.ui.constant.SystemConstant;
import com.carservice.web.ui.dto.CarUser;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;

@Controller
public class LoginController {

    @RequestMapping(value = "login", method = RequestMethod.GET)
    public String login() {
        return "login";
    }

    @RequestMapping(value = "login", method = RequestMethod.POST)
    public String login(CarUser carUser, Model model, HttpServletRequest httpServletRequest) throws Exception {
        CarUser user = UserApi.login(carUser);

        if(user == null) {
            model.addAttribute("baseResult", BaseResult.fail("用户名或密码错误"));
            return "login";
        } else {
            httpServletRequest.getSession().setAttribute(SystemConstant.SESSION_USER_KEY, user);
            return "redirect:/index";
        }
    }
}
