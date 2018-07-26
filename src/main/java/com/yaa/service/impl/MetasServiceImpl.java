package com.yaa.service.impl;

import com.yaa.dto.Types;
import com.yaa.mapper.MetasMapper;
import com.yaa.model.Metas;
import com.yaa.model.vo.MetasExample;
import com.yaa.service.MetasService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MetasServiceImpl implements MetasService {

    @Autowired
    private MetasMapper metasMapper;

    @Override
    public List<Metas> getAllMetas() {
        MetasExample example = new MetasExample();
        example.createCriteria().andTypeEqualTo(Types.TAG.getType());
        return metasMapper.selectByExample(example);
    }
}
