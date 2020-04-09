package com.carservice.web.api.service.impl;

import com.carservice.commons.dto.BaseResult;
import com.carservice.domain.CarUser;
import com.carservice.web.api.dao.CarUserDao;
import com.carservice.web.api.service.CarUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.DigestUtils;

import java.util.Date;

@Service
public class CarUserServiceImpl implements CarUserService {

    @Autowired
    private CarUserDao carUserDao;

    /**
     * 登录
     * @param carUser
     * @return
     */
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

    /**
     * 注册
     * @param carUser
     * @return
     */
    @Override
    public BaseResult register(CarUser carUser) {
        carUser.setCreated(new Date());
        carUser.setUpdated(new Date());
        carUser.setPassword(DigestUtils.md5DigestAsHex(carUser.getPassword().getBytes()));
        carUserDao.register(carUser);
        return BaseResult.success("注册成功");
    }
}
