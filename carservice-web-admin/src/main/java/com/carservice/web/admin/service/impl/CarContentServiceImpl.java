package com.carservice.web.admin.service.impl;

import com.carservice.commons.dto.BaseResult;
import com.carservice.commons.dto.PageInfo;
import com.carservice.commons.validator.BeanValidator;
import com.carservice.domain.CarContent;
import com.carservice.web.admin.dao.CarContentDao;
import com.carservice.web.admin.service.CarContentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class CarContentServiceImpl implements CarContentService {

    @Autowired
    private CarContentDao carContentDao;

    @Override
    public void deleteByCategory(String[] categoryIds) {

    }

    @Override
    public List<CarContent> selectAll() {
        return carContentDao.selectAll();
    }

    @Override
    public BaseResult save(CarContent carContent) {
         String validator = BeanValidator.validator(carContent);
         if(validator != null) {
             return BaseResult.fail(validator);
         } else {
             carContent.setUpdated(new Date());
             if(carContent.getId() == null) {
                 carContent.setCreated(new Date());
                 carContentDao.insert(carContent);
             } else {
                 carContentDao.update(carContent);
             }
             return BaseResult.success("保存内容信息成功");
         }
    }

    @Override
    public void delete(Long id) {
        carContentDao.delete(id);
    }

    @Override
    public CarContent getById(Long id) {
        return carContentDao.getById(id);
    }

    @Override
    public void update(CarContent carContent) {
        carContentDao.update(carContent);
    }

    @Override
    public void deleteMulti(String[] ids) {
        carContentDao.deleteMulti(ids);
    }


    @Override
    public PageInfo<CarContent> page(int start, int length, int draw, CarContent carContent) {
        int count = carContentDao.count(carContent);
        Map<String,Object> params = new HashMap<>();
        params.put("start",start);
        params.put("length",length);
        params.put("carContent",carContent);

        PageInfo<CarContent> pageInfo = new PageInfo<>();
        pageInfo.setDraw(draw);
        pageInfo.setRecordsTotal(count);
        pageInfo.setRecordsFiltered(count);
        pageInfo.setData(carContentDao.page(params));

        return pageInfo;
    }

    @Override
    public int count(CarContent carContent) {
        return carContentDao.count(carContent);
    }
}
