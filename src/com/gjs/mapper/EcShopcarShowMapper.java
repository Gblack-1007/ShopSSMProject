package com.gjs.mapper;

import com.gjs.pojo.EcShopCarShow;

import java.util.List;

public interface EcShopcarShowMapper {
    //1.查詢出指定用户的购物车
    List<EcShopCarShow> selectByUserId(Integer userid);
}
