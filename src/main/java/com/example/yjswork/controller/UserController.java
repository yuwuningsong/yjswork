package com.example.yjswork.controller;

import com.example.yjswork.controller.dto.UserDto;
import com.example.yjswork.entity.User;
import com.example.yjswork.mapper.UserMapper;
import com.example.yjswork.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/user")
public class UserController {
    //注入其他类
    @Autowired
    private UserMapper userMapper;
    @Autowired
    private UserService userService;
    @PostMapping
    //"/user
    public Integer save(@RequestBody User user){
        //新增or更新
       return userService.save(user);
    }
    //登录
    @PostMapping("/login")
    public boolean login(@RequestBody User user){
//        String username=userDto.getUsername();
//        String password=userDto.getPassword();
        return userService.login(user);
    }
    //注册
    @PostMapping("/reg")
    public boolean reg(@RequestBody User user){

        return userService.reg(user);
    }
    //查询所有
    @GetMapping
    public List<User> findAll(){

        return userMapper.findAll();
    }



    @DeleteMapping("/{id}")
    public Integer delete(@PathVariable Integer id){
       return userMapper.deleteById(id);
    }

    //分页查询
    //接口路径 /user/page?pageNum=1&pageSize=2
    @GetMapping("/page")
    public Map<String,Object> findPage(@RequestParam Integer pageNum,@RequestParam Integer pageSize){
        pageNum = (pageNum-1)*pageSize;
        List<User> userData= userMapper.selectPage(pageNum,pageSize);

        Integer totalCount = userMapper.selectTotal();

        Map<String,Object> res = new HashMap<>();
        if(totalCount%pageSize==0){
            res.put("totalCount",totalCount/pageSize);
        }else{
            res.put("totalCount",totalCount/pageSize+1);
        }

        res.put("userData",userData);

        return res;


    }

}
