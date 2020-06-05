package com.carservice.web.api.dao;

import com.carservice.domain.CarCart;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CarCartDao {
    List<CarCart> selectByUserId(CarCart carCart);
}
