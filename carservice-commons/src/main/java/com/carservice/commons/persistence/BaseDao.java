package com.carservice.commons.persistence;

import java.util.List;
import java.util.Map;

public interface BaseDao<T extends BaseEntity> {
    /**
     * 查询全部信息
     * @return
     */
    public List<T> selectAll();

    /**
     * 新增
     * @param carUser
     */
    public void insert(T carUser);

    /**
     * 根据id删除
     * @param id
     */
    public void delete(Long id);

    /**
     * 根据id查询用户信息
     * @param id
     * @return
     */
    public T getById(Long id);

    /**
     * 更新用户
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
     * @param params 两个参数，start记录开始位置，length每页记录数
     * @return
     */
    public List<T> page(Map<String,Object> params);

    /**
     * 查询总笔数
     * @return
     */
    public int count(T carUser);
}
