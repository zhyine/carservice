package com.carservice.web.admin.dao;

import com.carservice.domain.CarUser;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public interface CarUserDao {
    /**
     * 通过邮箱登录
     */
    public CarUser getByEmail(String email);

    /**
     * 查询全部信息
     * @return
     */
    public List<CarUser> selectAll();

    /**
     * 新增
     * @param carUser
     */
    public void insert(CarUser carUser);

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
    public CarUser getById(Long id);

    /**
     * 更新用户
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
     * @param params 两个参数，start记录开始位置，length每页记录数
     * @return
     */
    public List<CarUser> page(Map<String,Object> params);

    /**
     * 查询总笔数
     * @return
     */
    public int count(CarUser carUser);
}
