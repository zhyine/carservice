package com.carservice.web.admin.web.controller;

import com.carservice.commons.dto.BaseResult;
import com.carservice.commons.dto.PageInfo;
import com.carservice.domain.CarUser;
import com.carservice.web.admin.service.CarUserService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 用户管理
 */
@Controller
@RequestMapping(value = "user")
public class UserController {

    @Autowired
    private CarUserService carUserService;

    @ModelAttribute
    public CarUser getCarUser(Long id) {
        CarUser carUser = null;
        if(id != null) {
            carUser = carUserService.getById(id);
        } else {
            carUser = new CarUser();
        }
        return carUser;
    }

    @RequestMapping(value = "list",method = RequestMethod.GET)
    public String list(Model model) {
        List<CarUser> carUsers = carUserService.selectAll();
        model.addAttribute("carUsers",carUsers);
        return "user_list";
    }

    @RequestMapping(value = "form",method = RequestMethod.GET)
    public String form() {
        return "user_form";
    }

    /**
     * 批量删除用户信息
     * @param ids
     */
    @ResponseBody
    @RequestMapping(value = "delete", method = RequestMethod.POST)
    public void deleteMulti(String ids) {
        BaseResult baseResult = null;
        if(StringUtils.isNotBlank(ids)) {
            String[] idArray = ids.split(",");
            carUserService.deleteMulti(idArray);
            baseResult = BaseResult.success("删除用户信息");
        } else {
            baseResult = BaseResult.fail("删除用户失败");
        }

    }

    @RequestMapping(value = "detail", method = RequestMethod.GET)
    public String detail(CarUser carUser) {
        System.out.println(carUser.getUsername());
        return "user_detail";
    }


    //分页
    @ResponseBody
    @RequestMapping(value = "page",method = RequestMethod.GET)
    public PageInfo<CarUser> page(HttpServletRequest request, CarUser carUser) {
        Map<String,Object> result = new HashMap<>();

        String strDraw = request.getParameter("draw");
        String strStart = request.getParameter("start");
        String strLength = request.getParameter("length");

        int draw = strDraw == null ? 0 :Integer.parseInt(strDraw);
        int start = strDraw == null ? 0 :Integer.parseInt(strStart);
        int length = strDraw == null ? 0 :Integer.parseInt(strLength);

        PageInfo<CarUser> pageInfo = carUserService.page(start, length, draw, carUser);

        return pageInfo;
    }
}
