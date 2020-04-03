package com.carservice.domain;

import com.carservice.commons.persistence.BaseEntity;
import lombok.Data;
import org.hibernate.validator.constraints.Length;

import javax.validation.constraints.NotNull;

@Data
public class CarContentCategory extends BaseEntity {
    @NotNull(message = "父级节点不能为空")
    private Long parentId;
    @Length(min = 1, max = 20, message = "分类名称长度必须介于1-20")
    private String name;
    private Integer status;
    @NotNull(message = "排序不能为空")
    private Integer sortOrder;
    private Boolean isParent;
    private CarContentCategory carContentCategory;
}
