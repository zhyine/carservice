package com.carservice.web.admin.service.impl;

import com.carservice.commons.dto.PageInfo;
import com.carservice.domain.CarCart;
import com.carservice.web.admin.dao.CarCartDao;
import com.carservice.web.admin.service.CarCartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;

@Service
public class CarCartServiceImpl implements CarCartService {

    @Autowired
    private CarCartDao carCartDao;

    @Override
    public CarCart getById(Long id) {
        return carCartDao.getById(id);
    }

    @Override
    public PageInfo<CarCart> page(int start, int length, int draw, CarCart carCart) {
        int count = carCartDao.count(carCart);
        Map<String, Object> params = new HashMap<>();
        params.put("start", start);
        params.put("length", length);
        params.put("carCart", carCart);

        PageInfo<CarCart> pageInfo = new PageInfo<>();
        pageInfo.setDraw(draw);
        pageInfo.setRecordsTotal(count);
        pageInfo.setRecordsFiltered(count);
        pageInfo.setData(carCartDao.page(params));
        return pageInfo;
    }

    @Override
    public int count(CarCart carCart) {
        return carCartDao.count(carCart);
    }
}
