package com.example.yjswork;

import com.example.yjswork.entity.User;
import com.example.yjswork.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@SpringBootApplication
public class YjsworkApplication {
//    注入其他类

    public static void main(String[] args) {
        SpringApplication.run(YjsworkApplication.class, args);
    }


}
