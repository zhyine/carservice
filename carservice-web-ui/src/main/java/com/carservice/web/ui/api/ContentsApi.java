package com.carservice.web.ui.api;

import com.carservice.commons.utils.HttpClientUtils;
import com.carservice.commons.utils.MapperUtils;
import com.carservice.web.ui.dto.CarContent;

import java.util.List;

public class ContentsApi {
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
}
