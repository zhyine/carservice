package com.carservice.web.api.web.controller.v1;

import com.carservice.commons.dto.BaseResult;
import com.carservice.domain.CarUser;
import com.carservice.web.api.service.CarUserService;
import com.carservice.web.api.web.dto.CarUserDTO;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "${api.path.v1}/users")
public class CarUserController {

    @Autowired
    private CarUserService carUserService;

    /**
     * 登录
     * @param carUser
     * @return
     */
    @RequestMapping(value = "login", method = RequestMethod.POST)
    public BaseResult login(CarUser carUser) {
        CarUser user = carUserService.login(carUser);
        if (user == null) {
            return BaseResult.fail("账号或密码错误");
        } else {
            CarUserDTO dto = new CarUserDTO();
            BeanUtils.copyProperties(user, dto);
            return BaseResult.success("成功", dto);
        }
    }
}
