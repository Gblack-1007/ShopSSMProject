package com.gjs.controller;

import com.gjs.pojo.EcArticle;
import com.gjs.pojo.EcArticleType;
import com.gjs.service.EcArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class EcArticleController {

    @Autowired
    EcArticleService es;

    //1.查询所有的数据
    @RequestMapping("/findArticles")
    public String findArticles(Model model, HttpSession session) {
        //去service层调用查询的方法
        List<EcArticle> list = es.findByAll();
        //遍历集合
        list.forEach(li -> System.out.println(li));
        if (list != null) {
            //将集合放到request域中，提供给前端介绍
            model.addAttribute("list", list);

        }

        //获取商品的类型
        List<EcArticleType> listTypes = es.findByArticleType();
        listTypes.forEach(li -> System.out.println(li));
        if (listTypes != null) {
            //将类型放到session中
            session.setAttribute("listTypes", listTypes);
        }


        return "WEB-INF/jsp/articleindex";
    }

    //2.按类型查询商品
    @RequestMapping("/findByType")
    public String findByType(String articleType,Model model) {
        System.out.println("要查询的类型：" + articleType);
        List<EcArticle> list = es.findByLikeArticleType(articleType);
        if(list!=null){
            model.addAttribute("list",list);
            list.forEach(li-> System.out.println("--->"+li));
        }
        return "WEB-INF/jsp/articleindex";
    }

    //3.模糊查询
    @RequestMapping("/likeArticle")
    public String likeArticle(String likeMsg,Model model){
        System.out.println("要模糊查询的内容："+likeMsg);
        //调用service层完成模糊查询
        List<EcArticle> list = es.selectByTitleLike(likeMsg);
        //将查询到的数据放到request域中
        model.addAttribute("list",list);
        return "WEB-INF/jsp/articleindex";
    }
    //4.查询商品的详情信息
    @RequestMapping("/selectById")
    public String selectById(String articleId,Model model){
        //接收要查询的id
        System.out.println("要查询的id："+articleId);
        //到service层完成查询操作
      EcArticle ecArticle =    es.findById(articleId);
      //将查询到的商品放到request中
      model.addAttribute("ecArticle",ecArticle);
        return "WEB-INF/jsp/articleContent";
    }
}
