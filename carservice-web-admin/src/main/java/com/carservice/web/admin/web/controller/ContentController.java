package com.carservice.web.admin.web.controller;

import com.carservice.commons.dto.BaseResult;
import com.carservice.commons.dto.PageInfo;
import com.carservice.domain.CarContent;
import com.carservice.domain.CarUser;
import com.carservice.web.admin.service.CarContentService;
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
import java.util.Map;

@Controller
@RequestMapping(value = "content")
public class ContentController {

    @Autowired
    private CarContentService carContentService;

    @ModelAttribute
    public CarContent getCarContent(Long id) {
        CarContent carContent = null;
        if(id != null) {
            carContent = carContentService.getById(id);
        } else {
            carContent = new CarContent();
        }
        return carContent;
    }

    @RequestMapping(value = "list",method = RequestMethod.GET)
    public String list() {
        return "content_list";
    }

    @ResponseBody
    @RequestMapping(value = "page", method = RequestMethod.GET)
    public PageInfo<CarContent> page(HttpServletRequest request, CarContent carContent) {

        String strDraw = request.getParameter("draw");
        String strStart = request.getParameter("start");
        String strLength = request.getParameter("length");

        int draw = strDraw == null ? 0 :Integer.parseInt(strDraw);
        int start = strDraw == null ? 0 :Integer.parseInt(strStart);
        int length = strDraw == null ? 0 :Integer.parseInt(strLength);

        PageInfo<CarContent> pageInfo = carContentService.page(start, length, draw, carContent);

        return pageInfo;
    }

    @RequestMapping(value = "form", method = RequestMethod.GET)
    public String form() {
        return "content_form";
    }

    @ResponseBody
    @RequestMapping(value = "delete", method = RequestMethod.POST)
    public BaseResult deleteMulti(String ids) {
        BaseResult baseResult = null;
        if(StringUtils.isNotBlank(ids)) {
            String[] idArray = ids.split(",");
            carContentService.deleteMulti(idArray);
            baseResult = BaseResult.success("删除内容成功");
        } else {
            baseResult = BaseResult.fail("删除用户信息失败");
        }

        return baseResult;
    }

    @RequestMapping(value = "detail", method = RequestMethod.GET)
    public String detail(CarContent carContent) {
        return "content_detail";
    }

    @RequestMapping(value = "save", method = RequestMethod.POST)
    public String save(CarContent carContent, Model model, RedirectAttributes redirectAttributes){
        BaseResult baseResult = carContentService.save(carContent);

        if(baseResult.getStatus() == BaseResult.STATUS_SUCCESS) {
            redirectAttributes.addFlashAttribute("baseResult",baseResult);

            return "redirect:/content/list";
        } else {
            model.addAttribute("baseResult",baseResult);
            return "content_form";
        }
    }
}
