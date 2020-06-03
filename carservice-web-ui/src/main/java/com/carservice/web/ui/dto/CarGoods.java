package com.carservice.web.ui.dto;

import lombok.Data;

import java.io.Serializable;

@Data
public class CarGoods implements Serializable {
    private Long id;
    private String name;
    private Long prices;
    private String desc;
    private String pic;
}
