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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
     * 删除用户信息
     * @param ids
     */
    @ResponseBody
    @RequestMapping(value = "delete", method = RequestMethod.POST)
    public BaseResult deleteMulti(String ids) {
        BaseResult baseResult = null;
        if(StringUtils.isNotBlank(ids)) {
            String[] idArray = ids.split(",");
            carUserService.deleteMulti(idArray);
            baseResult = BaseResult.success("删除用户信息");
        } else {
            baseResult = BaseResult.fail("删除用户失败");
        }

        return baseResult;

    }

    @RequestMapping(value = "logout", method = RequestMethod.GET)
    public String logout(HttpServletRequest request) {
        request.getSession().invalidate();
        return "redirect:/";
    }

    @RequestMapping(value = "detail", method = RequestMethod.GET)
    public String detail(CarUser carUser) {
        System.out.println(carUser.getUsername());
        return "user_detail";
    }

    /**
     * 保存用户信息
     * @param carUser
     * @param model
     * @param redirectAttributes
     * @return
     */
    @RequestMapping(value = "save", method = RequestMethod.POST)
    public String save(CarUser carUser, Model model, RedirectAttributes redirectAttributes) {
        BaseResult baseResult = carUserService.save(carUser);
        // 由返回的状态码来判断是否保存成功
        if(baseResult.getStatus() == BaseResult.STATUS_SUCCESS) {
            redirectAttributes.addFlashAttribute("baseResult", baseResult);
            return "redirect:/user/list";
        } else {
            model.addAttribute("baseResult",baseResult);
            return "user_form";
        }
    }

    /**
     * 分页
     * @param request
     * @param carUser
     * @return
     */
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
