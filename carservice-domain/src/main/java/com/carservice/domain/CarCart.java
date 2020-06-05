package com.carservice.domain;

import com.carservice.commons.persistence.BaseEntity;
import lombok.Data;

@Data
public class CarCart extends BaseEntity {
    private Long userId;
    private String goods;
    private String goodsDesc;
    private String pic;
    private Long prices;
    private Long nums;
    private CarUser carUser;
}
