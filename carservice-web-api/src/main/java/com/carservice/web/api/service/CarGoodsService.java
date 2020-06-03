package com.carservice.web.api.service;

import com.carservice.domain.CarGoods;

import java.util.List;

public interface CarGoodsService {
    List<CarGoods> selectById(Long id);
}
