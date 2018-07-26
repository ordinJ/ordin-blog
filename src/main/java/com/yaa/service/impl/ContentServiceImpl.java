package com.yaa.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.yaa.dto.Types;
import com.yaa.mapper.ContentsMapper;
import com.yaa.model.Contents;
import com.yaa.model.vo.ContentsExample;
import com.yaa.service.ContentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ContentServiceImpl implements ContentService {

    @Autowired
    private ContentsMapper contentsMapper;

    @Override
    public PageInfo<Contents> getContents(Integer p, Integer limit) {
        ContentsExample example = new ContentsExample();
        example.setOrderByClause("created desc");
        example.createCriteria().andTypeEqualTo(Types.ARTICLE.getType()).andStatusEqualTo(Types.PUBLISH.getType());
        PageHelper.startPage(p, limit);
        List<Contents> data = contentsMapper.selectByExampleWithBLOBs(example);
        PageInfo<Contents> pageInfo = new PageInfo<>(data);
        return pageInfo;
    }

    @Override
    public Contents getContents(Integer cid) {
        Contents contents = contentsMapper.selectByPrimaryKey(cid);
        return contents;
    }

    @Override
    public void updateContentByCid(Contents contents) {
        if (null != contents && null != contents.getCid()) {
            contentsMapper.updateByPrimaryKeySelective(contents);
        }
    }
}
