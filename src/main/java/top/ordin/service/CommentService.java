package top.ordin.service;

import com.github.pagehelper.PageInfo;
import top.ordin.model.Comments;
import top.ordin.model.Users;
import top.ordin.model.bo.CommentBo;
import top.ordin.model.bo.ResponseBo;

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
