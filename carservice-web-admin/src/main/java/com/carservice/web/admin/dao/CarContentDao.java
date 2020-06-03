package com.carservice.web.admin.dao;

import com.carservice.commons.persistence.BaseDao;
import com.carservice.domain.CarContent;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public interface CarContentDao extends BaseDao<CarContent> {
    public void deleteByCategory(String[] ids);

}
