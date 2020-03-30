package com.carservice.web.admin.dao;

import com.carservice.domain.CarUser;
import org.springframework.stereotype.Repository;

@Repository
public interface CarUserDao {
    /**
     * 登录
     */
    public CarUser getByEmail(String email);
}
