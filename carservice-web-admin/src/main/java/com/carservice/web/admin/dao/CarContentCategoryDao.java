package com.carservice.web.admin.dao;

import com.carservice.domain.CarContentCategory;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CarContentCategoryDao {

    /**
     * 根据父级结点ID查询所有子节点
     * @param pid
     * @return
     */
    public List<CarContentCategory> selectByPid(Long pid);

    public void delete1(String[] categoryIds);

    /**
     * 查询全部信息
     * @return
     */
    public List<CarContentCategory> selectAll();

    /**
     * 新增
     * @param carContentCategory
     */
    public void insert(CarContentCategory carContentCategory);

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
    public CarContentCategory getById(Long id);

    /**
     * 更新TbUser
     * @param entity
     */
    public void update(CarContentCategory entity);


    /**
     * 批量删除
     * @param ids
     */
    public void deleteMulti(String[] ids);

}
