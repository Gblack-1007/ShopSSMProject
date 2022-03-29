package com.gjs.service;

import com.gjs.mapper.EcShopcarMapper;
import com.gjs.mapper.EcShopcarShowMapper;
import com.gjs.pojo.EcShopCarShow;
import com.gjs.pojo.EcShopcar;
import com.gjs.pojo.EcShopcarExample;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EcShopCarServiceImpl implements EcShopCarService {
    @Autowired
    EcShopcarMapper ecShopcarMapper;
    @Autowired
    EcShopcarShowMapper ecshopcarshowMapper;
    @Override
    public int insertShopCar(EcShopcar ecShopcar) {
        //思考：不是所有的商品都直接添加购物，有可能这个商品，已经被这个用户添加过一次了，如果是这样，应该是修改就可以
        //添加购物车之前，要判断这个商品是否有配这个人购买过，先要查询这个人是否有买过
        //查询这个商品是否被添加过购物车
        EcShopcarExample example = new EcShopcarExample();
        EcShopcarExample.Criteria criteria = example.createCriteria();
        criteria.andUseridEqualTo(ecShopcar.getUserid());
        criteria.andArticleidEqualTo(ecShopcar.getArticleid());
        List<EcShopcar> ecShopcars = ecShopcarMapper.selectByExample(example);
        int i = 0;
        if(ecShopcars.size()>0){
            System.out.println("已经购买过");
            //修改
//            EcShopcarExample example2 = new EcShopcarExample();
//            EcShopcarExample.Criteria criteria1 = example2.createCriteria();
//            criteria1.andUseridEqualTo(ecShopcar.getUserid());
//            criteria.andArticleidEqualTo(ecShopcar.getArticleid());
            ecShopcar.setBuynum(ecShopcars.get(0).getBuynum()+ecShopcar.getBuynum());
             i = ecShopcarMapper.updateByExampleSelective(ecShopcar, example);
        }else{
            System.out.println("没有购买过");
             i = ecShopcarMapper.insertSelective(ecShopcar);

        }

        return i;
    }

    @Override
    public List<EcShopCarShow> selectByUserId(Integer userid) {
        List<EcShopCarShow> carLists = ecshopcarshowMapper.selectByUserId(userid);



        return carLists;
    }
}
