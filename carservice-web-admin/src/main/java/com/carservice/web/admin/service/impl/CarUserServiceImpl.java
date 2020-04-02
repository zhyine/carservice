package com.carservice.web.admin.service.impl;

import com.carservice.commons.dto.BaseResult;
import com.carservice.commons.dto.PageInfo;
import com.carservice.commons.validator.BeanValidator;
import com.carservice.domain.CarUser;
import com.carservice.web.admin.dao.CarUserDao;
import com.carservice.web.admin.service.CarUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.DigestUtils;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class CarUserServiceImpl implements CarUserService {

    @Autowired
    private CarUserDao carUserDao;

    // 登录验证
    @Override
    public CarUser login(String email,String password) {
        CarUser carUser = carUserDao.getByEmail(email);
        if(carUser != null) {
            //明文密码加密
            String md5Password = DigestUtils.md5DigestAsHex(password.getBytes());
            //判断密码是否匹配
            if(md5Password.equals(carUser.getPassword())) {
                return carUser;
            }
        }
        return null;
    }

    //查询全部信息
    @Override
    public List<CarUser> selectAll() {
        return carUserDao.selectAll();
    }

    //根据id来获取信息
    @Override
    public CarUser getById(Long id) {
        return carUserDao.getById(id);
    }

    //保存用户信息
    @Override
    public BaseResult save(CarUser carUser) {
        String validator = BeanValidator.validator(carUser);
        //验证不通过
        if(validator != null) {
            return BaseResult.fail(validator);
        } else {
            carUser.setUpdated(new Date());
            // 判断是否是新增用户
            if(carUser.getId() == null) {
                carUser.setPassword(DigestUtils.md5DigestAsHex(carUser.getPassword().getBytes()));
                carUser.setCreated(new Date());
                carUserDao.insert(carUser);
            } else {
                carUser.setPassword(DigestUtils.md5DigestAsHex(carUser.getPassword().getBytes()));
                carUserDao.update(carUser);
            }
            return BaseResult.success("保存用户信息");
        }

    }

    //删除用户信息
    @Override
    public void delete(Long id) {
        carUserDao.delete(id);
    }

    //更新用户信息
    @Override
    public void update(CarUser carUser) {
        carUserDao.update(carUser);
    }

    //批量删除
    @Override
    public void deleteMulti(String[] ids) {
        carUserDao.deleteMulti(ids);
    }

    //分页
    @Override
    public PageInfo<CarUser> page(int start, int length, int draw, CarUser carUser) {
        int count = carUserDao.count(carUser);
        Map<String,Object> params = new HashMap<>();
        params.put("start",start);
        params.put("length",length);
        params.put("carUser",carUser);

        PageInfo<CarUser> pageInfo = new PageInfo<>();
        pageInfo.setDraw(draw);
        pageInfo.setRecordsTotal(count);
        pageInfo.setRecordsFiltered(count);
        pageInfo.setData(carUserDao.page(params));

        return pageInfo;
    }

    //查询总量
    @Override
    public int count(CarUser carUser) {
        return carUserDao.count(carUser);
    }
}
