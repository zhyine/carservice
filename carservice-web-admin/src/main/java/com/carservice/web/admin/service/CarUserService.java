package com.carservice.web.admin.service;

import com.carservice.commons.dto.BaseResult;
import com.carservice.commons.dto.PageInfo;
import com.carservice.domain.CarUser;

import java.util.List;

public interface CarUserService {
    /**
     * 登录
     * @param email
     * @param password
     * @return
     */
    public CarUser login(String email,String password);

    /**
     * 查询所有信息
     * @return
     */
    public List<CarUser> selectAll();


    /**
     * 根据id查询
     * @param id
     */
    public CarUser getById(Long id);

    /**
     * 保存用户信息
     * @param carUser
     * @return
     */
    public BaseResult save(CarUser carUser);

    /**
     * 删除用户
     * @param id
     */
    public void delete(Long id);

    /**
     * 更新用户信息
     * @param carUser
     */
    public void update(CarUser carUser);

    /**
     * 批量删除
     * @param ids
     */
    public void deleteMulti(String[] ids);

    /**
     * 分页查询
     * @param start
     * @param length
     * @param draw
     * @param carUser
     * @return
     */
    public PageInfo<CarUser> page(int start, int length, int draw, CarUser carUser);

    /**
     * 查询总数
     * @return
     */
    public int count(CarUser carUser);
}
