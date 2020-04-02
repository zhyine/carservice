package com.carservice.web.admin.service.impl;

import com.carservice.commons.dto.BaseResult;
import com.carservice.domain.CarContentCategory;
import com.carservice.web.admin.dao.CarContentCategoryDao;
import com.carservice.web.admin.service.CarContentCategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional(readOnly = true)
public class CarContentCategoryServiceImpl implements CarContentCategoryService {

    @Autowired
    private CarContentCategoryDao carContentCategoryDao;

    @Autowired
    private CarContentCategoryService carContentCategoryService;

    @Override
    public List<CarContentCategory> selectByPid(Long pid) {
        return carContentCategoryDao.selectByPid(pid);
    }

    @Override
    public void delete1(String[] ids) {

    }

    @Override
    public List<CarContentCategory> selectAll() {
        return carContentCategoryDao.selectAll();
    }

    @Override
    @Transactional(readOnly = false)
    public BaseResult save(CarContentCategory carContentCategory) {
        return null;
    }

    @Override
    public void delete(Long id) {

    }

    @Override
    public CarContentCategory getById(Long id) {
        return carContentCategoryDao.getById(id);
    }

    @Override
    public void update(CarContentCategory carContentCategory) {
        carContentCategoryDao.update(carContentCategory);
    }

    @Override
    public void deleteMulti(String[] ids) {
        carContentCategoryDao.deleteMulti(ids);
    }
}
