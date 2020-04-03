package com.carservice.web.admin.service;

import com.carservice.commons.dto.BaseResult;
import com.carservice.commons.dto.PageInfo;
import com.carservice.domain.CarContent;
import org.springframework.stereotype.Repository;

import java.util.List;


public interface CarContentService {

    public void deleteByCategory(String[] categoryIds);

    /**
     * 查询全部
     * @return
     */
    public List<CarContent> selectAll();

    /**
     * 保存用户信息
     * @param carContent
     * @return
     */
    public BaseResult save(CarContent carContent);

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
    public CarContent getById(Long id);

    /**
     * 更新用户信息
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
     * @param start
     * @param length
     * @param draw
     * @param carContent
     * @return
     */
    public PageInfo<CarContent> page(int start, int length, int draw, CarContent carContent);

    /**
     * 查询总数
     * @return
     */
    public int count(CarContent carContent);

}
