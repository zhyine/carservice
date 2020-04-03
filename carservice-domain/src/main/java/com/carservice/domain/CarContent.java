package com.carservice.domain;

import com.carservice.commons.persistence.BaseEntity;
import lombok.Data;
import org.hibernate.validator.constraints.Length;

@Data
public class CarContent extends BaseEntity {
    private String title;
    private String subTitle;
    private String titleDesc;
    private String url;
    private String pic;
    private String pic2;
    private String content;
    private CarContentCategory carContentCategory;
}
