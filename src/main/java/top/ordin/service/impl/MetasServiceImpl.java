package top.ordin.service.impl;

import top.ordin.dto.Types;
import top.ordin.mapper.ContentsMapper;
import top.ordin.mapper.MetasMapper;
import top.ordin.model.Metas;
import top.ordin.model.bo.MetasBo;
import top.ordin.model.vo.ContentsExample;
import top.ordin.model.vo.MetasExample;
import top.ordin.service.MetasService;
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
