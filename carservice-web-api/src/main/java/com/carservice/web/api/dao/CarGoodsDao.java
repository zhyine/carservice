package com.carservice.web.api.dao;

import com.carservice.domain.CarGoods;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CarGoodsDao {
    List<CarGoods> selectById(Long id);
}
