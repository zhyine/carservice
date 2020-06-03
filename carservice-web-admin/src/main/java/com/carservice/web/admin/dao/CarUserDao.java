package com.carservice.web.admin.dao;

import com.carservice.commons.persistence.BaseDao;
import com.carservice.domain.CarUser;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public interface CarUserDao extends BaseDao<CarUser> {
    /**
     * 通过邮箱登录
     */
    public CarUser getByEmail(String email);


}
