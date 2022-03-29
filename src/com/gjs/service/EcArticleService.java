package com.gjs.service;

import com.gjs.pojo.EcArticle;
import com.gjs.pojo.EcArticleType;

import java.util.List;

public interface EcArticleService {
    //查询所有数据
    List<EcArticle> findByAll();

    //查询商品的类型
    List<EcArticleType> findByArticleType();

    //通过类型模糊查询
    List<EcArticle> findByLikeArticleType(String typecode);

    //title模糊查询
    List<EcArticle> selectByTitleLike(String likeMsg);

    //查询商品的详情
    EcArticle findById(String articleId);
}
