package com.gjs.mapper;

import com.gjs.pojo.EcOrder;
import com.gjs.pojo.EcOrderExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface EcOrderMapper {
    int countByExample(EcOrderExample example);

    int deleteByExample(EcOrderExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(EcOrder record);

    int insertSelective(EcOrder record);

    List<EcOrder> selectByExample(EcOrderExample example);

    EcOrder selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") EcOrder record, @Param("example") EcOrderExample example);

    int updateByExample(@Param("record") EcOrder record, @Param("example") EcOrderExample example);

    int updateByPrimaryKeySelective(EcOrder record);

    int updateByPrimaryKey(EcOrder record);
}