package com.carservice.web.api.service.impl;

import com.carservice.domain.CarCart;
import com.carservice.domain.CarUser;
import com.carservice.web.api.dao.CarCartDao;
import com.carservice.web.api.service.CarCartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CarCartServiceImpl implements CarCartService {

    @Autowired
    private CarCartDao carCartDao;

    @Override
    public List<CarCart> selectByUserId(Long userId) {
        CarUser carUser = new CarUser();
        carUser.setId(userId);
        CarCart carCart = new CarCart();
        carCart.setCarUser(carUser);
        return carCartDao.selectByUserId(carCart);
    }
}
