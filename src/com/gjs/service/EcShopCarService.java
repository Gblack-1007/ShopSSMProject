package com.gjs.service;

import com.gjs.pojo.EcShopCarShow;
import com.gjs.pojo.EcShopcar;

import java.util.List;

public interface EcShopCarService {
    //1.添加购物车方法
    int insertShopCar(EcShopcar ecShopcar);
    //2.查询购物车的详细信息
    List<EcShopCarShow> selectByUserId(Integer userid);
}
