package com.carservice.domain;

import com.carservice.commons.persistence.BaseEntity;
import lombok.Data;

import java.util.Date;

@Data
public class CarUser extends BaseEntity {
    private String username;
    private String password;
    private String phone;
    private String email;
}
