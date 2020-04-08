package com.carservice.web.api.service;

import com.carservice.domain.CarContent;

import java.util.List;

public interface CarContentService {
    public List<CarContent> selectByCategoryId(Long categoryId);
}
