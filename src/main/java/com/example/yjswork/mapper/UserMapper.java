package com.example.yjswork.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.example.yjswork.entity.User;
import org.apache.ibatis.annotations.*;

import java.util.List;



//@Mapper
public interface UserMapper {
    @Select("SELECT * FROM sys_user;")
    List<User> findAll();

    @Insert("INSERT INTO sys_user(username,password,nickname,email,phone,address,sex) VALUES (#{username},#{password},"+
            "#{nickname},#{email},#{phone},#{address},#{sex})")
    int insert(User user);

    @Update("update sys_user set username = #{username},password=#{password},nickname=#{nickname},email=#{email},phone=#{phone},address=#{address}"+
    "where id =#{id}")
    int update(User user);

    @Delete("delete from sys_user where id=#{id}")
    Integer deleteById(@Param("id") Integer id);

    @Select("select * from sys_user limit #{pageNum},#{pageSize}")
    List<User> selectPage(Integer pageNum, Integer pageSize);

    @Select("select count(*) from sys_user")
    Integer selectTotal();
    @Select("select * from sys_user where username = #{username}")
    User selectByName(String username);





}
