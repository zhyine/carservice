package com.carservice.web.admin.web.controller;

import com.carservice.commons.dto.BaseResult;
import com.carservice.domain.CarContentCategory;
import com.carservice.web.admin.service.CarContentCategoryService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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

    @RequestMapping(value = "form", method = RequestMethod.GET)
    public String form() {
        return "content_category_form";
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

    @RequestMapping(value = "save", method = RequestMethod.POST)
    public String save(CarContentCategory carContentCategory, Model model, RedirectAttributes redirectAttributes) {

        BaseResult baseResult = carContentCategoryService.save(carContentCategory);
        // 由返回的状态码来判断是否保存成功
        if(baseResult.getStatus() == BaseResult.STATUS_SUCCESS) {
            redirectAttributes.addFlashAttribute("baseResult", baseResult);
            return "redirect:/content/category/list";
        } else {
            model.addAttribute("baseResult",baseResult);
            return "content_category_form";
        }
    }

    @ResponseBody
    @RequestMapping(value = "tree/data", method = RequestMethod.POST)
    public List<CarContentCategory> treeData(Long id) {
        if(id == null) {
            id = 0L;
        }
        return carContentCategoryService.selectByPid(id);
    }

    @ResponseBody
    @RequestMapping(value = "delete", method = RequestMethod.POST)
    public BaseResult delete(String ids) {
        BaseResult baseResult = null;
        if(StringUtils.isNotBlank(ids)) {
            carContentCategoryService.delete(Long.parseLong(ids));
            baseResult = BaseResult.success("删除分类及其子类成功");
        } else {
            baseResult = BaseResult.fail("删除分类失败");
        }

        return baseResult;
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
