package com.carservice.web.api.web.controller.v1;

import com.carservice.commons.dto.BaseResult;
import com.carservice.domain.CarContent;
import com.carservice.domain.CarGoods;
import com.carservice.web.api.service.CarGoodsService;
import com.carservice.web.api.web.dto.CarGoodsDTO;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping(value = "${api.path.v1}/goods")
public class CarGoodsController {

    @Autowired
    private CarGoodsService carGoodsService;

    @RequestMapping(value = "{id}", method = RequestMethod.GET)
    public BaseResult findContentByCategoryId(@PathVariable(value = "id") Long id) {
        List<CarGoodsDTO> carGoodsDTOS = null;
        List<CarGoods> carGoods = carGoodsService.selectById(id);

        if(carGoods != null && carGoods.size() > 0) {
            carGoodsDTOS = new ArrayList<>();
            for(CarGoods carGood : carGoods) {
                CarGoodsDTO dto = new CarGoodsDTO();
                //通过反射来简化Json数据
                BeanUtils.copyProperties(carGood,dto);
                carGoodsDTOS.add(dto);
            }
        }
        return BaseResult.success("成功", carGoodsDTOS);
    }
}
