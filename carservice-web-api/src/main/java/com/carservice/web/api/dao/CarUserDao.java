package com.carservice.web.api.dao;

import com.carservice.domain.CarUser;
import org.springframework.stereotype.Repository;

@Repository
public interface CarUserDao {

    /**
     * 登录
     * @param carUser
     * @return
     */
    CarUser login(CarUser carUser);
}
