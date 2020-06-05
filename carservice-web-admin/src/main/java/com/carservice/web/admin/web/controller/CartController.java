package com.carservice.web.admin.web.controller;

import com.carservice.commons.dto.PageInfo;
import com.carservice.domain.CarCart;
import com.carservice.web.admin.service.CarCartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping(value = "cart")
public class CartController {

    @Autowired
    private CarCartService carCartService;

    @ModelAttribute
    public CarCart getCarContent(Long id) {
        CarCart carCart = null;
        if(id != null) {
            carCart = carCartService.getById(id);
        } else {
            carCart = new CarCart();
        }
        return carCart;
    }

    @RequestMapping(value = "list", method = RequestMethod.GET)
    public String list() {
        return "cart_list";
    }

    @ResponseBody
    @RequestMapping(value = "page", method = RequestMethod.GET)
    public PageInfo<CarCart> page(HttpServletRequest request, CarCart carCart) {
        String strDraw = request.getParameter("draw");
        String strStart = request.getParameter("start");
        String strLength = request.getParameter("length");

        int draw = strDraw == null ? 0 :Integer.parseInt(strDraw);
        int start = strDraw == null ? 0 :Integer.parseInt(strStart);
        int length = strDraw == null ? 0 :Integer.parseInt(strLength);

        PageInfo<CarCart> pageInfo = carCartService.page(start, length, draw, carCart);

        return pageInfo;
    }
}
