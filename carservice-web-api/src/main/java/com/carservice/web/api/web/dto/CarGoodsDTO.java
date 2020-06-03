package com.carservice.web.api.web.dto;

import lombok.Data;

import java.io.Serializable;

@Data
public class CarGoodsDTO implements Serializable {
    private Long id;
    private String name;
    private Long prices;
    private String desc;
    private String pic;
}
