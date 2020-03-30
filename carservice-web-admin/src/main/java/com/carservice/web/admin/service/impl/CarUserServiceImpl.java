package com.carservice.web.admin.service.impl;

import com.carservice.domain.CarUser;
import com.carservice.web.admin.dao.CarUserDao;
import com.carservice.web.admin.service.CarUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.DigestUtils;

@Service
public class CarUserServiceImpl implements CarUserService {

    @Autowired
    private CarUserDao carUserDao;

    // 登录验证
    @Override
    public CarUser login(String email,String password) {
        CarUser carUser = carUserDao.getByEmail(email);
        if(carUser != null) {
            //明文密码加密
            String md5Password = DigestUtils.md5DigestAsHex(password.getBytes());
            //判断密码是否匹配
            if(md5Password.equals(carUser.getPassword())) {
                return carUser;
            }
        }
        return null;
    }
}
