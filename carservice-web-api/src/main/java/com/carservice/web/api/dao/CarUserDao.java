package com.carservice.web.api.dao;

import com.carservice.commons.dto.BaseResult;
import com.carservice.domain.CarUser;
import org.springframework.stereotype.Repository;

@Repository
public interface CarUserDao {

    /**
     * 登录
     * @param carUser
     * @return
     */
    public CarUser login(CarUser carUser);

    /**
     * 注册
     * @param carUser
     * @return
     */
    public void register(CarUser carUser);
}
