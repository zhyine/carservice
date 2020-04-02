package com.carservice.domain;

import com.carservice.commons.persistence.BaseEntity;
import lombok.Data;

@Data
public class CarContentCategory extends BaseEntity {
    private Long parentId;
    private String name;
    private Integer status;
    private Integer sortOrder;
    private Boolean isParent;
    private CarContentCategory carContentCategory;
}
