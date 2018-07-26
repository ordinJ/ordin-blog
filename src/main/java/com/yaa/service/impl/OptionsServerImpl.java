package com.yaa.service.impl;

import com.yaa.mapper.OptionsMapper;
import com.yaa.model.Options;
import com.yaa.model.vo.OptionsExample;
import com.yaa.service.OptionsServer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class OptionsServerImpl implements OptionsServer {

    @Autowired
    private OptionsMapper optionsMapper;

    @Override
    public Map<String, String> getOptionsConfig() {
        List<Options> options = optionsMapper.selectByExampleWithBLOBs(new OptionsExample());
        Map<String,String> map = new HashMap<>();
        for(Options option: options){
            map.put(option.getName(),option.getValue());
        }
        return map;
    }
}
