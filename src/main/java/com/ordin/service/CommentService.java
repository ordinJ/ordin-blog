package com.ordin.service;

import com.github.pagehelper.PageInfo;
import com.ordin.model.Comments;
import com.ordin.model.Users;
import com.ordin.model.bo.CommentBo;
import com.ordin.model.bo.ResponseBo;

import java.util.List;

public interface CommentService {

    PageInfo<CommentBo> getComments(Integer cid, int page, int limit);

    Comments getComments(Integer coid);

    int insertComments(Comments comments);

    List<Comments> recentComments(Integer limit);

    //admin
    PageInfo<Comments> getCommentsWithPage(Users user, int page, int limit);

    ResponseBo deleteComments(Integer id);

}
