package com.carservice.web.api.service;

import com.carservice.domain.CarCart;

import java.util.List;

public interface CarCartService {
    List<CarCart> selectByUserId(Long userId);
}
