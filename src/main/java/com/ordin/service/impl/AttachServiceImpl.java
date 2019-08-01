package com.ordin.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.ordin.config.PathConfig;
import com.ordin.dto.Types;
import com.ordin.mapper.AttachMapper;
import com.ordin.model.Attach;
import com.ordin.model.bo.ResponseBo;
import com.ordin.model.vo.AttachExample;
import com.ordin.service.AttachService;
import com.ordin.util.DateKit;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.File;
import java.util.List;

@Service
public class AttachServiceImpl implements AttachService {

    @Autowired
    private AttachMapper attachMapper;
    @Autowired
    private PathConfig pathConfig;

    @Override
    public PageInfo<Attach> index(int page,int limit) {
        AttachExample example = new AttachExample();
        example.setOrderByClause("created desc");
        example.createCriteria().andFtypeEqualTo(Types.IMAGE.getType());
        PageHelper.startPage(page, limit);
        List<Attach> attaches = attachMapper.selectByExample(example);
        return new PageInfo<>(attaches);
    }

    @Override
    public int save(String fname, String fkey, String ftype, Integer author) {
        if(fname.length()>10){
            fname = fname.substring(0,9);
        }
        Attach attach = new Attach();
        attach.setFname(fname);
        attach.setAuthorId(author);
        attach.setFkey(fkey);
        attach.setFtype(ftype);
        attach.setCreated(DateKit.getCurrentUnixTime());
        return attachMapper.insertSelective(attach);
    }

    @Override
    public ResponseBo delete(Integer id) {
        Attach attach = attachMapper.selectByPrimaryKey(id);
        if(attach == null){
            return ResponseBo.fail("附件不存在！");
        }
        int count = attachMapper.deleteByPrimaryKey(id);
        if(count > 0){
            new File(pathConfig.getFilePath() + "/" + attach.getFkey()).delete();
            return ResponseBo.ok("删除附件成功");
        }
        return ResponseBo.fail("删除附件失败！");
    }
}
