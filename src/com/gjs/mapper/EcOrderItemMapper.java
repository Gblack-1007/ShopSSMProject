package com.gjs.mapper;

import com.gjs.pojo.EcOrderItem;
import com.gjs.pojo.EcOrderItemExample;
import com.gjs.pojo.EcOrderItemKey;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface EcOrderItemMapper {
    int countByExample(EcOrderItemExample example);

    int deleteByExample(EcOrderItemExample example);

    int deleteByPrimaryKey(EcOrderItemKey key);

    int insert(EcOrderItem record);

    int insertSelective(EcOrderItem record);

    List<EcOrderItem> selectByExample(EcOrderItemExample example);

    EcOrderItem selectByPrimaryKey(EcOrderItemKey key);

    int updateByExampleSelective(@Param("record") EcOrderItem record, @Param("example") EcOrderItemExample example);

    int updateByExample(@Param("record") EcOrderItem record, @Param("example") EcOrderItemExample example);

    int updateByPrimaryKeySelective(EcOrderItem record);

    int updateByPrimaryKey(EcOrderItem record);
}