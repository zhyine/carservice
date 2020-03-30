package com.carservice.web.admin.web.controller;

import com.carservice.web.admin.service.CarUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {

    @Autowired
    private CarUserService carUserService;

    @RequestMapping(value = "main",method = RequestMethod.GET)
    public String main() {
        return "main";
    }
}
