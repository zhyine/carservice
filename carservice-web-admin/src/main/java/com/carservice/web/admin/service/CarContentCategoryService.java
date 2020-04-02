package com.carservice.web.admin.service;

import com.carservice.commons.dto.BaseResult;
import com.carservice.domain.CarContentCategory;

import java.util.List;

public interface CarContentCategoryService {

    public List<CarContentCategory> selectByPid(Long pid);

    public void delete1(String[] ids);

    /**
     * 查询全部
     * @return
     */
    public List<CarContentCategory> selectAll();

    /**
     * 保存用户信息
     * @param carContentCategory
     * @return
     */
    public BaseResult save(CarContentCategory carContentCategory);

    /**
     * 删除用户信息
     * @param id
     */
    public void delete(Long id);

    /**
     * 根据ID获取用户信息
     * @param id
     * @return
     */
    public CarContentCategory getById(Long id);

    /**
     * 更新用户信息
     * @param carContentCategory
     */
    public void update(CarContentCategory carContentCategory);

    /**
     * 批量删除
     * @param ids
     */
    public void deleteMulti(String[] ids);

}
