package com.gjs.mapper;

import com.gjs.pojo.EcArticleType;
import com.gjs.pojo.EcArticleTypeExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface EcArticleTypeMapper {
    int countByExample(EcArticleTypeExample example);

    int deleteByExample(EcArticleTypeExample example);

    int deleteByPrimaryKey(String code);

    int insert(EcArticleType record);

    int insertSelective(EcArticleType record);

    List<EcArticleType> selectByExample(EcArticleTypeExample example);

    EcArticleType selectByPrimaryKey(String code);

    int updateByExampleSelective(@Param("record") EcArticleType record, @Param("example") EcArticleTypeExample example);

    int updateByExample(@Param("record") EcArticleType record, @Param("example") EcArticleTypeExample example);

    int updateByPrimaryKeySelective(EcArticleType record);

    int updateByPrimaryKey(EcArticleType record);
}