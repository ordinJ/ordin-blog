package com.yaa.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.yaa.dto.Types;
import com.yaa.mapper.ContentsMapper;
import com.yaa.mapper.MetasMapper;
import com.yaa.model.Contents;
import com.yaa.model.Metas;
import com.yaa.model.bo.ResponseBo;
import com.yaa.model.vo.ContentsExample;
import com.yaa.model.vo.MetasExample;
import com.yaa.service.ArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import java.util.List;


@Service
public class ArticleServiceImpl implements ArticleService {

    @Autowired
    private ContentsMapper contentsMapper;
    @Autowired
    private MetasMapper metasMapper;

    @Override
    public PageInfo<Contents> selectArticlePage(int page,int limit) {
        ContentsExample example = new ContentsExample();
        example.setOrderByClause("created desc");
        example.createCriteria().andTypeEqualTo(Types.ARTICLE.getType());
        PageHelper.startPage(page, limit);
        List<Contents> contents = contentsMapper.selectByExample(example);
        return new PageInfo<>(contents);
    }

    @Override
    public ResponseBo deleteArticle(Integer id) {
        if(id==0){
            return ResponseBo.fail("参数错误");
        }
        int count = contentsMapper.deleteByPrimaryKey(id);
        if(count>0){
            return ResponseBo.ok();
        }
        return ResponseBo.fail("");
    }

    @Override
    public void editArticle(Integer id , HttpServletRequest request) {
        Contents contents = contentsMapper.selectByPrimaryKey(id);
        MetasExample example = new MetasExample();
        example.createCriteria().andTypeEqualTo(Types.CATEGORY.getType());
        List<Metas> categories = metasMapper.selectByExample(example);
        if(contents!=null){
            request.setAttribute("categories",categories);
            request.setAttribute("contents",contents);
        }
        request.setAttribute("active","articles");//菜单选中
    }

    @Override
    public void saveArticle(HttpServletRequest request) {
        MetasExample example = new MetasExample();
        example.createCriteria().andTypeEqualTo(Types.CATEGORY.getType());
        List<Metas> categories = metasMapper.selectByExample(example);
        request.setAttribute("categories",categories);
        request.setAttribute("active","edit");//菜单选中
    }

    @Override
    public ResponseBo updateArticle(Contents contents) {
        if(contents==null){
            return ResponseBo.fail("参数错误");
        }
        int count = contentsMapper.updateByPrimaryKeySelective(contents);
        if(count > 0){
            return ResponseBo.ok();
        }
        return ResponseBo.fail("error");
    }

    @Override
    public ResponseBo addArticle(Contents contents) {
        if(contents==null){
            return ResponseBo.fail("参数错误");
        }
        int count = contentsMapper.insert(contents);
        if(count > 0){
            return ResponseBo.ok();
        }
        return ResponseBo.fail("error");
    }
}
