package com.carservice.web.admin.service;

import com.carservice.domain.CarUser;

public interface CarUserService {
    /**
     * 登录
     */
    public CarUser login(String email,String password);
}
