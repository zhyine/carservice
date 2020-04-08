package com.carservice.web.api.web.controller.v1;

import com.carservice.commons.dto.BaseResult;
import com.carservice.domain.CarContent;
import com.carservice.web.api.service.CarContentService;
import com.carservice.web.api.web.dto.CarContentDTO;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping(value = "${api.path.v1}/contents")
public class CarContentController {

    @Autowired
    private CarContentService carContentService;

    @ModelAttribute
    public CarContent getCarContent(Long id) {
        CarContent carContent = null;
        if(id == null) {
            carContent = new CarContent();
        }

        return carContent;
    }

    @RequestMapping(value = "{category_id}", method = RequestMethod.GET)
    public BaseResult findContentByCategoryId(@PathVariable(value = "category_id") Long categoryId) {
        List<CarContentDTO> carContentDTOS = null;
        List<CarContent> carContents = carContentService.selectByCategoryId(categoryId);

        if(carContents != null && carContents.size() > 0) {
            carContentDTOS = new ArrayList<>();
            for(CarContent tbContent : carContents) {
                CarContentDTO dto = new CarContentDTO();
                //通过反射来简化Json数据
                BeanUtils.copyProperties(tbContent,dto);
                carContentDTOS.add(dto);
            }
        }
        return BaseResult.success("成功", carContentDTOS);
    }

}
