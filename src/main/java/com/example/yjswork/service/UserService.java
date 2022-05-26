package com.example.yjswork.service;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;

import com.example.yjswork.controller.dto.UserDto;
import com.example.yjswork.entity.User;
import com.example.yjswork.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.management.Query;
import java.util.List;


@Service
public class UserService {
    @Autowired
    private UserMapper userMapper;

    public int save(User user){
        if(user.getId()==null){
            return userMapper.insert(user);
        }else{
            return userMapper.update(user);
        }
    }
    public boolean reg(User user) {
        String username=user.getUsername();
        String password=user.getPassword();
        User regUser = userMapper.selectByName(username);
        System.out.println("进行验证！！！");
        if (regUser != null){
            return false;
        }
        userMapper.insert(user);
        return true;
    }

    public boolean login(User user) {
        String username=user.getUsername();
        String password=user.getPassword();
        User loginUser = userMapper.selectByName(username);

        System.out.println("进行验证！！！");

//        System.out.println(loginUser);
//        System.out.println(username);
//        System.out.println(password);
        if (loginUser == null){
            return false;
        } else if (loginUser.getPassword().equals(password)){

            return true;
        }
        return false;

    }



}
