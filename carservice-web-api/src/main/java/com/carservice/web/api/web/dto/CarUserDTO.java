package com.carservice.web.api.web.dto;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;

import java.io.Serializable;

@Data
public class CarUserDTO implements Serializable {

    private Long id;
    private String username;

    @JsonIgnore
    private String password;
    private String phone;
    private String email;
}
