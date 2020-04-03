package com.carservice.web.admin.service.impl;

import com.carservice.commons.dto.BaseResult;
import com.carservice.commons.validator.BeanValidator;
import com.carservice.domain.CarContentCategory;
import com.carservice.web.admin.dao.CarContentCategoryDao;
import com.carservice.web.admin.service.CarContentCategoryService;
import com.carservice.web.admin.service.CarContentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Service
@Transactional(readOnly = true)
public class CarContentCategoryServiceImpl implements CarContentCategoryService {

    @Autowired
    private CarContentCategoryDao carContentCategoryDao;

    @Autowired
    private CarContentService carContentervice;

    @Override
    public List<CarContentCategory> selectByPid(Long pid) {
        return carContentCategoryDao.selectByPid(pid);
    }

    @Override
    public void delete1(String[] ids) {

    }

    @Override
    public List<CarContentCategory> selectAll() {
        return carContentCategoryDao.selectAll();
    }

    @Override
    @Transactional(readOnly = false)
    public BaseResult save(CarContentCategory carContentCategory) {
        String validator = BeanValidator.validator(carContentCategory);
        if (validator != null) {
            return BaseResult.fail(validator);
        } else {
            Long parentId = carContentCategory.getParentId();
            // 如果没有选择父级节点则默认设置为根目录
            if (parentId == null) {
                // 0 代表根目录
                parentId = 0L;
                carContentCategory.setIsParent(true);
            }

            carContentCategory.setUpdated(new Date());
            // 新增
            if (carContentCategory.getId() == null) {
                carContentCategory.setCreated(new Date());
                carContentCategory.setIsParent(true);

                // 判断当前新增的节点有没有父级节点
                if (parentId != 0L) {
                    CarContentCategory currentCategoryParent = getById(parentId);
                    if (currentCategoryParent != null) {
                        // 为父级节点设置 isParent 为 true
                        currentCategoryParent.setIsParent(true);
                        update(currentCategoryParent);
                    }
                }

                // 父级节点为 0 ，表示为根目录
                else {
                    // 根目录一定是父级目录
                    carContentCategory.setIsParent(true);
                }

                carContentCategoryDao.insert(carContentCategory);
            }

            // 修改
            else {
                carContentCategoryDao.update(carContentCategory);
            }
            return BaseResult.success("保存分类信息成功");
        }
    }

    @Override
    @Transactional(readOnly = false)
    public void delete(Long id) {
        List<String> targetArray = new ArrayList<>();
        findAllChild(targetArray, id);

        String[] categoryIds = targetArray.toArray(new String[targetArray.size()]);

        //删除类目及其子类目
        carContentCategoryDao.delete1(categoryIds);

        //删除类目下的所有内容
        carContentervice.deleteByCategory(categoryIds);

    }

    private void findAllChild(List<String> targetList, Long parentId) {
        targetList.add(String.valueOf(parentId));
        List<CarContentCategory> carContentCategories = selectByPid(parentId);
        for(CarContentCategory carContentCategory : carContentCategories) {
            findAllChild(targetList, carContentCategory.getId());
        }
    }

    @Override
    public CarContentCategory getById(Long id) {
        return carContentCategoryDao.getById(id);
    }

    @Override
    @Transactional(readOnly = false)
    public void update(CarContentCategory carContentCategory) {
        carContentCategoryDao.update(carContentCategory);
    }

    @Override
    public void deleteMulti(String[] ids) {
        carContentCategoryDao.deleteMulti(ids);
    }
}
