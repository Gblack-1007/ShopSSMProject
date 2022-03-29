package com.gjs.service;

//接口

import com.gjs.pojo.EcUser;

public interface EcUserService {
    //1.用户登录功能
    EcUser findByLoginName(String username);

    //2.注册功能
    int addEcUser(EcUser ecUser);
}
