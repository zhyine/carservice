package com.carservice.web.api.web.controller.v1;

import com.carservice.commons.dto.BaseResult;
import com.carservice.domain.CarCart;
import com.carservice.web.api.service.CarCartService;
import com.carservice.web.api.web.dto.CarCartDTO;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping(value = "${api.path.v1}/carts")
public class CarCartController {

    @Autowired
    private CarCartService carCartService;

    @ModelAttribute
    public CarCart getCarCart(Long id) {
        CarCart carCart = null;
        if(id == null) {
            carCart = new CarCart();
        }

        return carCart;
    }

    @RequestMapping(value = "{user_id}", method = RequestMethod.GET)
    public BaseResult findContentByCategoryId(@PathVariable(value = "user_id") Long userId) {
        List<CarCartDTO> carCartDTOS = null;
        List<CarCart> carCarts = carCartService.selectByUserId(userId);

        if(carCarts != null && carCarts.size() > 0) {
            carCartDTOS = new ArrayList<>();
            for(CarCart carCart : carCarts) {
                CarCartDTO dto = new CarCartDTO();
                //通过反射来简化Json数据
                BeanUtils.copyProperties(carCart,dto);
                carCartDTOS.add(dto);
            }
        }
        return BaseResult.success("成功", carCartDTOS);
    }


}
