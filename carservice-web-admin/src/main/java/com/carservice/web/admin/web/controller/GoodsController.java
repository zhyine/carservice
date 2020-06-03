package com.carservice.web.admin.web.controller;

import com.carservice.commons.dto.BaseResult;
import com.carservice.commons.dto.PageInfo;
import com.carservice.domain.CarGoods;
import com.carservice.web.admin.service.CarGoodsService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping(value = "goods")
public class GoodsController {

    @Autowired
    private CarGoodsService carGoodsService;

    @ModelAttribute
    public CarGoods getCarGoods(Long id) {
        CarGoods carGoods = null;
        if(id != null) {
            carGoods = carGoodsService.getById(id);
        } else {
            carGoods = new CarGoods();
        }
        return carGoods;
    }

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String list(Model model) {
        List<CarGoods> carGoods = carGoodsService.selectAll();
        model.addAttribute("carGoods", carGoods);
        return "goods_list";
    }

    @RequestMapping(value = "form",method = RequestMethod.GET)
    public String form() {
        return "goods_form";
    }

    /**
     * 删除用户信息
     * @param ids
     */
    @ResponseBody
    @RequestMapping(value = "delete", method = RequestMethod.POST)
    public BaseResult deleteMulti(String ids) {
        BaseResult baseResult = null;
        if(StringUtils.isNotBlank(ids)) {
            String[] idArray = ids.split(",");
            carGoodsService.deleteMulti(idArray);
            baseResult = BaseResult.success("删除用户信息");
        } else {
            baseResult = BaseResult.fail("删除用户失败");
        }

        return baseResult;

    }

    @RequestMapping(value = "detail", method = RequestMethod.GET)
    public String detail(CarGoods carGoods) {
        System.out.println(carGoods.getName());
        return "goods_detail";
    }

    /**
     * 保存用户信息
     * @param carGoods
     * @param model
     * @param redirectAttributes
     * @return
     */
    @RequestMapping(value = "save", method = RequestMethod.POST)
    public String save(CarGoods carGoods, Model model, RedirectAttributes redirectAttributes) {
        BaseResult baseResult = carGoodsService.save(carGoods);
        // 由返回的状态码来判断是否保存成功
        if(baseResult.getStatus() == BaseResult.STATUS_SUCCESS) {
            redirectAttributes.addFlashAttribute("baseResult", baseResult);
            return "redirect:/goods/list";
        } else {
            model.addAttribute("baseResult",baseResult);
            return "goods_form";
        }
    }

    /**
     * 分页
     * @param request
     * @param carGoods
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "page",method = RequestMethod.GET)
    public PageInfo<CarGoods> page(HttpServletRequest request, CarGoods carGoods) {
        Map<String,Object> result = new HashMap<>();

        String strDraw = request.getParameter("draw");
        String strStart = request.getParameter("start");
        String strLength = request.getParameter("length");

        int draw = strDraw == null ? 0 :Integer.parseInt(strDraw);
        int start = strDraw == null ? 0 :Integer.parseInt(strStart);
        int length = strDraw == null ? 0 :Integer.parseInt(strLength);

        PageInfo<CarGoods> pageInfo = carGoodsService.page(start, length, draw, carGoods);

        return pageInfo;
    }



}
