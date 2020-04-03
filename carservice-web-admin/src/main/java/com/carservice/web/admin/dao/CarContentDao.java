package com.carservice.web.admin.dao;

import com.carservice.domain.CarContent;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public interface CarContentDao {
    /**
     * 查询全部信息
     * @return
     */
    public List<CarContent> selectAll();

    /**
     * 新增
     * @param carContent
     */
    public void insert(CarContent carContent);

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
    public CarContent getById(Long id);

    /**
     * 更新TbUser
     * @param carContent
     */
    public void update(CarContent carContent);

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
    public List<CarContent> page(Map<String,Object> params);

    /**
     * 查询总笔数
     * @return carContent
     */
    public int count(CarContent carContent);

}
