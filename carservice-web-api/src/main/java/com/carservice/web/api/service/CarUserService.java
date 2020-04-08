package com.carservice.web.api.service;

import com.carservice.domain.CarUser;

public interface CarUserService {

    /**
     * 登录
     * @param carUser
     * @return
     */
    CarUser login(CarUser carUser);
}
