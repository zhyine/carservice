package com.carservice.web.api.service.impl;

import com.carservice.domain.CarUser;
import com.carservice.web.api.dao.CarUserDao;
import com.carservice.web.api.service.CarUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.DigestUtils;

@Service
public class CarUserServiceImpl implements CarUserService {

    @Autowired
    private CarUserDao carUserDao;

    @Override
    public CarUser login(CarUser carUser) {
        CarUser user = carUserDao.login(carUser);

        if (user != null) {
            // 将明文密码加密
            String password = DigestUtils.md5DigestAsHex(carUser.getPassword().getBytes());
            if (password.equals(user.getPassword())) {
                return user;
            }
        }

        return null;
    }
}
