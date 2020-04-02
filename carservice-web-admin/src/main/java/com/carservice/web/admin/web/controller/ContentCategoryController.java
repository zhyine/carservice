package com.carservice.web.admin.web.controller;

import com.carservice.domain.CarContentCategory;
import com.carservice.web.admin.service.CarContentCategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping(value = "content/category")
public class ContentCategoryController {

    @Autowired
    private CarContentCategoryService carContentCategoryService;

    @ModelAttribute
    public CarContentCategory getCarContentCategory(Long id) {
        CarContentCategory carContentCategory = null;
        if(id != null) {
            carContentCategory = carContentCategoryService.getById(id);
        } else {
            carContentCategory = new CarContentCategory();
        }

        return carContentCategory;
    }

    @RequestMapping(value = "list", method = RequestMethod.GET)
    public String list(Model model) {
        List<CarContentCategory> targetList = new ArrayList<>();
        List<CarContentCategory> sourceList = carContentCategoryService.selectAll();
        //排序
        sortList(sourceList,targetList,0L);
        model.addAttribute("carContentCategories",targetList);
        return "content_category_list";
    }

    /**
     * 排序
     * @param sourceList 排序前集合
     * @param targetList 排序后集合
     * @param parentId 父节点ID
     */
    private void sortList(List<CarContentCategory> sourceList, List<CarContentCategory> targetList, Long parentId) {
        for(CarContentCategory carContentCategory : sourceList) {
            if(carContentCategory.getParentId().equals(parentId)) {
                targetList.add(carContentCategory);

                //判断是否有子节点,递归
                if(carContentCategory.getIsParent()) {
                    for (CarContentCategory contentCategory : sourceList) {
                        if(contentCategory.getParentId().equals(carContentCategory.getId())) {
                            sortList(sourceList, targetList, carContentCategory.getId());
                            break;
                        }
                    }
                }
            }
        }
    }
}
