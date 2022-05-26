package com.example.yjswork.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data

public class User {
    private Integer id;
    private String username;
    private String password;
    private String nickname;
    private String email;
    private String address;
    private String phone;
    private String sex;
    private String hobby;
    private String indro;



}
