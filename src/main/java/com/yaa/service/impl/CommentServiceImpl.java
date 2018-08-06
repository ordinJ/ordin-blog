package com.yaa.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.yaa.mapper.CommentsMapper;
import com.yaa.model.Comments;
import com.yaa.model.bo.CommentBo;
import com.yaa.model.vo.CommentsExample;
import com.yaa.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;


@Service
public class CommentServiceImpl implements CommentService {

    @Autowired
    private CommentsMapper commentsMapper;

    @Override
    public PageInfo<CommentBo> getComments(Integer cid, int page, int limit) {
        if (null != cid) {
            PageHelper.startPage(page, limit);
            CommentsExample pExample = new CommentsExample();
            pExample.createCriteria().andCidEqualTo(cid).andParentEqualTo(0);
            pExample.setOrderByClause("coid desc");
            List<Comments> parents = commentsMapper.selectByExampleWithBLOBs(pExample);
            PageInfo<CommentBo> returnBo = new PageInfo<>();
            if (parents.size() != 0) {
                List<CommentBo> commentsBo = new ArrayList<>(parents.size());
                parents.forEach(parent -> {
                    CommentBo bo = new CommentBo(parent);
                    CommentsExample cExample = new CommentsExample();
                    cExample.createCriteria().andParentEqualTo(parent.getCoid());
                    cExample.setOrderByClause("coid asc");
                    List<Comments> children = commentsMapper.selectByExampleWithBLOBs(cExample);
                    if(children != null){
                        bo.setLevels(1);
                    }
                    bo.setChildren(children);
                    commentsBo.add(bo);
                });
                returnBo.setList(commentsBo);
            }
            return returnBo;
        }
        return null;
    }

    @Override
    public Comments getComments(Integer coid) {
        CommentsExample example = new CommentsExample();
        example.createCriteria().andCoidEqualTo(coid);
        List<Comments> comments = commentsMapper.selectByExample(example);
        if(comments != null){
            return comments.get(0);
        }
        return null;
    }
}
