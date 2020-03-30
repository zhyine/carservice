package com.carservice.domain;

import lombok.Data;

@Data
public class CarUser {
    private String username;
    private String password;
    private String phone;
    private String email;
}
