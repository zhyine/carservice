package com.carservice.web.ui.api;

import com.carservice.commons.dto.BaseResult;
import com.carservice.commons.utils.HttpClientUtils;
import com.carservice.commons.utils.MapperUtils;
import com.carservice.web.ui.dto.CarUser;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONArray;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.List;

public class UserApi {

    public static CarUser login(CarUser carUser) throws Exception {
        List<BasicNameValuePair> params = new ArrayList<>();
        params.add(new BasicNameValuePair("username",carUser.getUsername()));
        params.add(new BasicNameValuePair("password",carUser.getPassword()));

        String json = HttpClientUtils.doPost(API.API_USERS_LOGIN, params.toArray(new BasicNameValuePair[params.size()]));
        System.out.println(json);
        CarUser user = MapperUtils.json2pojoByTree(json,"data",CarUser.class);
        System.out.println(user);
        return user;
    }

    public static BaseResult register(CarUser carUser) {
        List<BasicNameValuePair> params = new ArrayList<>();
        params.add(new BasicNameValuePair("username",carUser.getUsername()));
        params.add(new BasicNameValuePair("email",carUser.getEmail()));
        params.add(new BasicNameValuePair("phone",carUser.getPhone()));
        params.add(new BasicNameValuePair("password",carUser.getPassword()));

        //System.out.println("params："+params);
        String json = HttpClientUtils.doPost(API.API_USERS_REGISTER, params.toArray(new BasicNameValuePair[params.size()]));
        System.out.println("json："+json);

        return null;
    }
}
