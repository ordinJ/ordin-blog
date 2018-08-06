package com.yaa.service;

import com.github.pagehelper.PageInfo;
import com.yaa.model.Comments;
import com.yaa.model.bo.CommentBo;

public interface CommentService {

    PageInfo<CommentBo> getComments(Integer cid, int page, int limit);

    Comments getComments(Integer coid);

    int insertComments(Comments comments);

}
