package com.carservice.commons.persistence;

import com.carservice.commons.dto.BaseResult;
import com.carservice.commons.dto.PageInfo;

import java.util.List;

public interface BaseService<T extends BaseEntity> {

    /**
     * 查询所有信息
     * @return
     */
    public List<T> selectAll();


    /**
     * 根据id查询
     * @param id
     */
    public T getById(Long id);

    /**
     * 保存用户信息
     * @param carUser
     * @return
     */
    public BaseResult save(T carUser);

    /**
     * 删除用户
     * @param id
     */
    public void delete(Long id);

    /**
     * 更新用户信息
     * @param carUser
     */
    public void update(T carUser);

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
    public PageInfo<T> page(int start, int length, int draw, T carUser);

    /**
     * 查询总数
     * @return
     */
    public int count(T carUser);
}
