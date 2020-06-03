package com.carservice.web.admin.service.impl;

import com.carservice.commons.dto.BaseResult;
import com.carservice.commons.dto.PageInfo;
import com.carservice.commons.validator.BeanValidator;
import com.carservice.domain.CarGoods;
import com.carservice.domain.CarUser;
import com.carservice.web.admin.dao.CarGoodsDao;
import com.carservice.web.admin.service.CarGoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.DigestUtils;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class CarGoodsServiceImpl implements CarGoodsService {

    @Autowired
    private CarGoodsDao carGoodsDao;

    @Override
    public List<CarGoods> selectAll() {
        return carGoodsDao.selectAll();
    }

    @Override
    public CarGoods getById(Long id) {
        return carGoodsDao.getById(id);
    }

    @Override
    public BaseResult save(CarGoods carGoods) {
        String validator = BeanValidator.validator(carGoods);
        //验证不通过
        if(validator != null) {
            return BaseResult.fail(validator);
        } else {
            carGoods.setUpdated(new Date());
            // 判断是否是新增用户
            if(carGoods.getId() == null) {
                carGoods.setCreated(new Date());
                carGoodsDao.insert(carGoods);
            } else {
                carGoodsDao.update(carGoods);
            }
            return BaseResult.success("上架商品成功");
        }

    }

    @Override
    public void delete(Long id) {
        carGoodsDao.delete(id);
    }

    @Override
    public void update(CarGoods carGoods) {
        carGoodsDao.update(carGoods);
    }

    @Override
    public void deleteMulti(String[] ids) {
        carGoodsDao.deleteMulti(ids);
    }

    //分页
    @Override
    public PageInfo<CarGoods> page(int start, int length, int draw, CarGoods carGoods) {
        int count = carGoodsDao.count(carGoods);
        Map<String,Object> params = new HashMap<>();
        params.put("start",start);
        params.put("length",length);
        params.put("carUser",carGoods);

        PageInfo<CarGoods> pageInfo = new PageInfo<>();
        pageInfo.setDraw(draw);
        pageInfo.setRecordsTotal(count);
        pageInfo.setRecordsFiltered(count);
        pageInfo.setData(carGoodsDao.page(params));

        return pageInfo;
    }

    //查询总量
    @Override
    public int count(CarGoods carGoods) {
        return carGoodsDao.count(carGoods);
    }

}
