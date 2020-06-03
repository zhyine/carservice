package com.carservice.web.ui.controller;

import com.carservice.web.ui.api.ContentsApi;
import com.carservice.web.ui.dto.CarContent;
import com.carservice.web.ui.dto.CarGoods;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class IndexController {

    @RequestMapping(value = {"","index"},method = RequestMethod.GET)
    public String index(Model model){
        // 请求幻灯片
        requestContentsPPT(model);
        // 请求热门广告
        requestContentsTop1(model);
        requestContentsTop2(model);
        requestContentsTop3(model);
        requestContentsTop4(model);
        // 请求商品
        requestGoods(model);
        return "index";
    }

    @RequestMapping(value = "quickView", method = RequestMethod.GET)
    public String quickView() {
        return "quickView";
    }

    @RequestMapping(value = "cart", method = RequestMethod.GET)
    public String cart() {
        return "cart";
    }

    /**
     * 请求轮播图
     * @param model
     */
    private void requestContentsPPT(Model model) {
        List<CarContent> carContents = ContentsApi.ppt();
        model.addAttribute("ppt", carContents);
    }

    /**
     * 请求热门内容
     * @param model
     * @return
     */
    private void requestContentsTop1(Model model) {
        List<CarContent> carContents = ContentsApi.top1();
        model.addAttribute("top1", carContents);
    }
    private void requestContentsTop2(Model model) {
        List<CarContent> carContents = ContentsApi.top2();
        model.addAttribute("top2", carContents);
    }
    private void requestContentsTop3(Model model) {
        List<CarContent> carContents = ContentsApi.top3();
        model.addAttribute("top3", carContents);
    }
    private void requestContentsTop4(Model model) {
        List<CarContent> carContents = ContentsApi.top4();
        model.addAttribute("top4", carContents);
    }

    private void requestGoods(Model model) {
        List<CarGoods> carGoods = ContentsApi.goods();
        model.addAttribute("goods", carGoods);
    }


    @RequestMapping(value = "logout",method = RequestMethod.GET)
    public String logout(HttpServletRequest httpServletRequest){
        httpServletRequest.getSession().invalidate();
        return "redirect:index";
    }
}
