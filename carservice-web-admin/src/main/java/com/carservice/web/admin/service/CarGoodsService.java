package com.carservice.web.admin.service;

import com.carservice.commons.dto.BaseResult;
import com.carservice.commons.dto.PageInfo;
import com.carservice.domain.CarGoods;
import com.carservice.domain.CarUser;

import java.util.List;

public interface CarGoodsService{

    /**
     * 查询所有信息
     * @return
     */
    public List<CarGoods> selectAll();

    /**
     * 根据id查询
     * @param id
     */
    public CarGoods getById(Long id);

    /**
     * 保存用户信息
     * @param carGoods
     * @return
     */
    public BaseResult save(CarGoods carGoods);

    /**
     * 删除用户
     * @param id
     */
    public void delete(Long id);

    /**
     * 更新用户信息
     * @param carGoods
     */
    public void update(CarGoods carGoods);

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
     * @param carGoods
     * @return
     */
    public PageInfo<CarGoods> page(int start, int length, int draw, CarGoods carGoods);

    /**
     * 查询总数
     * @return
     */
    public int count(CarGoods carGoods);
}
