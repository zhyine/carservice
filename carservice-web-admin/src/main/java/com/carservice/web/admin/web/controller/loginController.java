package com.carservice.web.admin.web.controller;

import com.carservice.commons.constant.ConstantUtils;
import com.carservice.domain.CarUser;
import com.carservice.web.admin.service.CarUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;

@Controller
public class loginController {

    @Autowired
    private CarUserService carUserService;

    @RequestMapping(value = {"","login"},method = RequestMethod.GET)
    public String login() {
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
    public String login(@RequestParam(required = true) String email, @RequestParam(required = true) String password, HttpServletRequest httpServletRequest, Model model) {
        CarUser carUser = carUserService.login(email, password);

        if(carUser == null) {
            // 如果该用户不存在，则提示信息，返回login.jsp
            model.addAttribute("message","用户名或密码错误");
            return login();
        } else {
            httpServletRequest.getSession().setAttribute(ConstantUtils.SESSION_USER,carUser);
            return "redirect:/main";
        }

    }
}
