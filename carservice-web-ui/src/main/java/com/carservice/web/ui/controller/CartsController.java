package com.carservice.web.ui.controller;

import com.carservice.web.ui.api.CartsApi;
import com.carservice.web.ui.dto.CarCart;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
public class CartsController {

    @RequestMapping(value = "cart", method = RequestMethod.GET)
    public String cart(Model model) {
        requestCart1(model);
        return "cart";
    }

    private void requestCart1(Model model) {
        List<CarCart> carCarts = CartsApi.Cart1();
        model.addAttribute("cart1", carCarts);
    }
}
