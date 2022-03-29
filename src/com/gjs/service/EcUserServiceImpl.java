package com.gjs.service;

import com.gjs.mapper.EcUserMapper;
import com.gjs.pojo.EcUser;
import com.gjs.pojo.EcUserExample;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EcUserServiceImpl implements EcUserService {
    @Autowired
    private EcUserMapper ecUserMapper;

    @Override
    public EcUser findByLoginName(String username) {
        //service去dao层完成数据操作,逆向工程就充当了dao层
        EcUserExample ee = new EcUserExample();
        EcUserExample.Criteria criteria = ee.createCriteria();
        criteria.andLoginNameEqualTo(username);
        List<EcUser> list = ecUserMapper.selectByExample(ee);

        if (list.size() > 0) {
            System.out.println("size+==="+list.size());
            return list.get(0);

        }
        return null;
    }

    @Override
    public int addEcUser(EcUser ecUser) {
        //调用dao层完成注册，dao层是由逆向工程充当
        int i = ecUserMapper.insertSelective(ecUser);
        return i;
    }
}
