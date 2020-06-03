package com.carservice.web.ui.api;

import com.carservice.commons.utils.HttpClientUtils;
import com.carservice.commons.utils.MapperUtils;
import com.carservice.web.ui.dto.CarContent;
import com.carservice.web.ui.dto.CarGoods;

import java.util.List;

public class ContentsApi {
    // 请求首页大广告
    public static List<CarContent> ppt() {
        List<CarContent> carContents = null;
        String result = HttpClientUtils.doGet(API.API_CONTENTS_PPT);
        try {
            carContents = MapperUtils.json2listByTree(result, "data", CarContent.class);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return carContents;
    }
    //请求热门商品第一列
    public static List<CarContent> top1() {
        List<CarContent> carContents = null;
        String result = HttpClientUtils.doGet(API.API_CONTENTS_TOP1);
        try {
            carContents = MapperUtils.json2listByTree(result, "data", CarContent.class);
        } catch (Exception e){
            e.printStackTrace();
        }
        return carContents;
    }
    //请求热门商品第一列
    public static List<CarContent> top2() {
        List<CarContent> carContents = null;
        String result = HttpClientUtils.doGet(API.API_CONTENTS_TOP2);
        try {
            carContents = MapperUtils.json2listByTree(result, "data", CarContent.class);
        } catch (Exception e){
            e.printStackTrace();
        }
        return carContents;
    }
    //请求热门商品第一列
    public static List<CarContent> top3() {
        List<CarContent> carContents = null;
        String result = HttpClientUtils.doGet(API.API_CONTENTS_TOP3);
        try {
            carContents = MapperUtils.json2listByTree(result, "data", CarContent.class);
        } catch (Exception e){
            e.printStackTrace();
        }
        return carContents;
    }
    //请求热门商品第一列
    public static List<CarContent> top4() {
        List<CarContent> carContents = null;
        String result = HttpClientUtils.doGet(API.API_CONTENTS_TOP4);
        try {
            carContents = MapperUtils.json2listByTree(result, "data", CarContent.class);
        } catch (Exception e){
            e.printStackTrace();
        }
        return carContents;
    }

    public static List<CarGoods> goods() {
        List<CarGoods> carGoods = null;
        String result = HttpClientUtils.doGet(API.API_CONTENTS_GOODS);
        try {
            carGoods = MapperUtils.json2listByTree(result, "data", CarGoods.class);
        } catch (Exception e) {
            e.printStackTrace();
        }
        System.out.println("---------------------------------------");
        System.out.println(carGoods);
        return carGoods;
    }

}
