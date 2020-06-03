package com.carservice.domain;

import com.carservice.commons.persistence.BaseEntity;
import lombok.Data;

@Data
public class CarGoods extends BaseEntity {
    private String name;
    private Long prices;
    private String desc;
    private String pic;
}
