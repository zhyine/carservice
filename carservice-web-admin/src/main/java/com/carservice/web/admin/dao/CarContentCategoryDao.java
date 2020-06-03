package com.carservice.web.admin.dao;

import com.carservice.commons.persistence.BaseDao;
import com.carservice.domain.CarContentCategory;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CarContentCategoryDao extends BaseDao<CarContentCategory> {

    /**
     * 根据父级结点ID查询所有子节点
     * @param pid
     * @return
     */
    public List<CarContentCategory> selectByPid(Long pid);

    public void delete1(String[] categoryIds);
}
