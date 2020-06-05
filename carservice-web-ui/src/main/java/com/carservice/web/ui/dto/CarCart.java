package com.carservice.web.ui.dto;

import lombok.Data;

import java.io.Serializable;

@Data
public class CarCart implements Serializable {
    private Long id;
    private Long prices;
    private Long nums;
    private String goods;
    private String goodsDesc;
    private String pic;
}
