package com.carservice.web.ui.controller;

import com.carservice.commons.dto.BaseResult;
import com.carservice.web.ui.api.UserApi;
import com.carservice.web.ui.dto.CarUser;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;

@Controller
public class RegisterController {

    @RequestMapping(value = "register",method = RequestMethod.GET)
    public String register() {
        return "register";
    }

    @RequestMapping(value = "register", method = RequestMethod.POST)
    public String register(CarUser carUser,HttpServletRequest httpServletRequest) {
        BaseResult result = UserApi.register(carUser);
        System.out.println("--------------------------");
        return "redirect:index";
    }
}
