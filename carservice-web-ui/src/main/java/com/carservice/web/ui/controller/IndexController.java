package com.carservice.web.ui.controller;

import com.carservice.web.ui.api.ContentsApi;
import com.carservice.web.ui.dto.CarContent;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
public class IndexController {

    @RequestMapping(value = {"","index"},method = RequestMethod.GET)
    public String index(Model model){
        // 请求幻灯片
        requestContentsPPT(model);
        return "index";
    }

    /**
     * 请求轮播图
     * @param model
     */
    private void requestContentsPPT(Model model) {
        List<CarContent> carContents = ContentsApi.ppt();
        model.addAttribute("ppt", carContents);
    }
}
