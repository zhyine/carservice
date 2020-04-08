package com.carservice.web.api.service.impl;

import com.carservice.domain.CarContent;
import com.carservice.domain.CarContentCategory;
import com.carservice.web.api.dao.CarContentDao;
import com.carservice.web.api.service.CarContentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional(readOnly = true)
public class CarContentServiceImpl implements CarContentService {

    @Autowired
    private CarContentDao carContentDao;

    @Override
    public List<CarContent> selectByCategoryId(Long categoryId) {
        CarContentCategory carContentCategory = new CarContentCategory();
        carContentCategory.setId(categoryId);

        CarContent carContent = new CarContent();
        carContent.setCarContentCategory(carContentCategory);
        return carContentDao.selectByCategoryId(carContent);
    }
}
