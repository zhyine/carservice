package com.carservice.web.api.dao;

import com.carservice.domain.CarContent;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CarContentDao {
    /**
     * 根据类别Id查询内容列表
     * @param carContent
     * @return
     */
    List<CarContent> selectByCategoryId(CarContent carContent);
}
