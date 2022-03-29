package com.gjs.service;

import com.gjs.mapper.EcArticleMapper;
import com.gjs.mapper.EcArticleTypeMapper;
import com.gjs.pojo.EcArticle;
import com.gjs.pojo.EcArticleExample;
import com.gjs.pojo.EcArticleType;
import com.gjs.pojo.EcArticleTypeExample;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EcArticleServiceImpl implements EcArticleService {
    @Autowired
    EcArticleMapper em;
    @Autowired
    EcArticleTypeMapper etm;

    @Override
    public List<EcArticle> findByAll() {
        //调用dao层完成数据操作
        EcArticleExample ee = new EcArticleExample();
        List<EcArticle> list = em.selectByExample(ee);

        return list;
    }

    @Override
    public List<EcArticleType> findByArticleType() {
        //去dao层查询类型
        EcArticleTypeExample eae = new EcArticleTypeExample();
        EcArticleTypeExample.Criteria criteria = eae.createCriteria();
        criteria.andCodeLike("____");
        List<EcArticleType> listTypes = etm.selectByExample(eae);
        return listTypes;
    }

    @Override
    public List<EcArticle> findByLikeArticleType(String typecode) {
        //调用dao

        EcArticleExample example = new EcArticleExample();
        EcArticleExample.Criteria criteria = example.createCriteria();
        criteria.andTypeCodeLike(typecode + "%");

        List<EcArticle> list = em.selectByExample(example);
        return list;
    }

    @Override
    public List<EcArticle> selectByTitleLike(String likeMsg) {
        //调用dao层完成查询
        EcArticleExample example = new EcArticleExample();
        EcArticleExample.Criteria criteria = example.createCriteria();
        criteria.andTitleLike("%" + likeMsg + "%");
        List<EcArticle> ecArticles = em.selectByExample(example);

        return ecArticles;
    }

    @Override
    public EcArticle findById(String articleId) {
        //到dao层查询就可以
        EcArticle ecArticle = em.selectByPrimaryKey(Integer.parseInt(articleId));

        return ecArticle;
    }
}
