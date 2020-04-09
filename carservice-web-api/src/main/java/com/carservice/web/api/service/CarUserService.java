package com.carservice.web.api.service;

import com.carservice.commons.dto.BaseResult;
import com.carservice.domain.CarUser;

public interface CarUserService {

    /**
     * 登录
     * @param carUser
     * @return
     */
    public CarUser login(CarUser carUser);

    /**
     * 注册
     * @param carUser
     */
    public BaseResult register(CarUser carUser);
}
