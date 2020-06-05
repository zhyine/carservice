package com.carservice.web.api.web.dto;

import lombok.Data;

import java.io.Serializable;

@Data
public class CarCartDTO implements Serializable {
    private Long id;
    private String goods;
    private String goodsDesc;
    private String pic;
    private Long prices;
    private Long nums;
}
