package com.ordin.service.impl;

import com.ordin.dto.Types;
import com.ordin.mapper.ContentsMapper;
import com.ordin.mapper.MetasMapper;
import com.ordin.model.Metas;
import com.ordin.model.bo.MetasBo;
import com.ordin.model.vo.ContentsExample;
import com.ordin.model.vo.MetasExample;
import com.ordin.service.MetasService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class MetasServiceImpl implements MetasService {

    @Autowired
    private MetasMapper metasMapper;
    @Autowired
    private ContentsMapper contentsMapper;

    @Override
    public List<MetasBo> getAllMetas() {
        MetasExample example = new MetasExample();
        example.createCriteria().andTypeEqualTo(Types.TAG.getType());
        List<Metas> metas = metasMapper.selectByExample(example);
        List<MetasBo> metasBos = new ArrayList<>();
        metas.forEach(m ->{
            MetasBo bo = new MetasBo();
            ContentsExample exm = new ContentsExample();
            exm.createCriteria().andStatusEqualTo(Types.PUBLISH.getType()).andTypeEqualTo(Types.ARTICLE.getType())
                    .andTagsLike("%"+m.getName()+"%");
            int count = contentsMapper.countByExample(exm);
            bo.setMetas(m);
            bo.setCount(count);
            metasBos.add(bo);
        });
        return metasBos;
    }
}
