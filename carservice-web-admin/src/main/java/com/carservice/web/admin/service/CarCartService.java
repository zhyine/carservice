package com.carservice.web.admin.service;

import com.carservice.commons.dto.PageInfo;
import com.carservice.domain.CarCart;

public interface CarCartService {

    /**
     * 根据ID获取用户信息
     * @param id
     * @return
     */
    public CarCart getById(Long id);

    /**
     * 分页查询
     * @param start
     * @param length
     * @param draw
     * @param carCart
     * @return
     */
    public PageInfo<CarCart> page(int start, int length, int draw, CarCart carCart);

    /**
     * 查询总数
     * @return
     */
    public int count(CarCart carCart);
}
