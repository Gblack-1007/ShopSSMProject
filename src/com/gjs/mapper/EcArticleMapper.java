package com.gjs.mapper;

import com.gjs.pojo.EcArticle;
import com.gjs.pojo.EcArticleExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface EcArticleMapper {
    int countByExample(EcArticleExample example);

    int deleteByExample(EcArticleExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(EcArticle record);

    int insertSelective(EcArticle record);

    List<EcArticle> selectByExample(EcArticleExample example);

    EcArticle selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") EcArticle record, @Param("example") EcArticleExample example);

    int updateByExample(@Param("record") EcArticle record, @Param("example") EcArticleExample example);

    int updateByPrimaryKeySelective(EcArticle record);

    int updateByPrimaryKey(EcArticle record);
}