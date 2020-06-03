package com.carservice.web.api.service.impl;

import com.carservice.domain.CarGoods;
import com.carservice.web.api.dao.CarGoodsDao;
import com.carservice.web.api.service.CarGoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class CarGoodsServiceImpl implements CarGoodsService {
    @Autowired
    private CarGoodsDao carGoodsDao;

    @Override
    public List<CarGoods> selectById(Long id) {
        return carGoodsDao.selectById(id);
    }
}
