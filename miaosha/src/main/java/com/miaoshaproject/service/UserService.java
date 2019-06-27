package com.miaoshaproject.service;

import com.miaoshaproject.error.BusinessException;
import com.miaoshaproject.service.model.UserModel;

public interface UserService {
    //通过用户id获取用户对象
    UserModel getUserById(Integer id);
    //注册用户
    void register(UserModel userModel) throws BusinessException;
    //用户登录
    UserModel validateLogin(String telphone,String encrptPassword) throws BusinessException;
}
