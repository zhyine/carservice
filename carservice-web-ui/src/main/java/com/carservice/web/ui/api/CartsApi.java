package com.carservice.web.ui.api;

import com.carservice.commons.utils.HttpClientUtils;
import com.carservice.commons.utils.MapperUtils;
import com.carservice.web.ui.dto.CarCart;

import java.util.List;

public class CartsApi {

    public static List<CarCart> Cart1() {
        List<CarCart> carCarts = null;
        String result = HttpClientUtils.doGet(API.API_CONTENTS_CART1);
        try {
            carCarts = MapperUtils.json2listByTree(result, "data", CarCart.class);
        } catch (Exception e) {
            e.printStackTrace();
        }
        System.out.println("---------------------------------------");
        System.out.println(carCarts);
        return carCarts;
    }
}
