package com.gjs.controller;

import com.gjs.pojo.EcShopCarShow;
import com.gjs.pojo.EcShopcar;
import com.gjs.service.EcShopCarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class EcShopcarController {
    @Autowired
    private EcShopCarService ecShopCarService;

    //添加购物车
    @RequestMapping("/addShopCar")
    public String addShopCar(EcShopcar ecShopcar, Model model) {
        System.out.println("添加购物车数据：用户id=" + ecShopcar.getUserid() + "购买的商品id:" + ecShopcar.getArticleid() + ",购买的数量：" + ecShopcar.getBuynum());
        //调用service层完成添加购物车
        int i = ecShopCarService.insertShopCar(ecShopcar);
        if (i > 0) {
            //查询购物车
            List<EcShopCarShow> listCars = ecShopCarService.selectByUserId(ecShopcar.getUserid());
            model.addAttribute("listCars", listCars);
            listCars.forEach(li-> System.out.println(li));
        }

        return "WEB-INF/jsp/articleCar";
    }
}
