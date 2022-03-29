package com.gjs.mapper;

import com.gjs.pojo.EcShopcar;
import com.gjs.pojo.EcShopcarExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface EcShopcarMapper {
    int countByExample(EcShopcarExample example);

    int deleteByExample(EcShopcarExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(EcShopcar record);

    int insertSelective(EcShopcar record);

    List<EcShopcar> selectByExample(EcShopcarExample example);

    EcShopcar selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") EcShopcar record, @Param("example") EcShopcarExample example);

    int updateByExample(@Param("record") EcShopcar record, @Param("example") EcShopcarExample example);

    int updateByPrimaryKeySelective(EcShopcar record);

    int updateByPrimaryKey(EcShopcar record);
}