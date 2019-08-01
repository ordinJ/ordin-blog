package com.ordin.controller.admin;

import com.github.pagehelper.PageInfo;
import com.ordin.controller.base.BaseController;
import com.ordin.model.Comments;
import com.ordin.model.Users;
import com.ordin.model.bo.ResponseBo;
import com.ordin.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping(value = "/admin/comments")
public class CommentController extends BaseController {

    @Autowired
    private CommentService commentService;

    /**
     * 评论管理页
     * @return
     */
    @GetMapping(value = "")
    public String comments(@RequestParam(value = "page", defaultValue = "1") int page,
                           @RequestParam(value = "limit", defaultValue = "10") int limit,
                           HttpServletRequest request){
        Users users = this.user(request);
        PageInfo<Comments> comments = commentService.getCommentsWithPage(users,page,limit);
        request.setAttribute("comments",comments);
        request.setAttribute("active","true");
        return "admin/comments";
    }

    @ResponseBody
    @PostMapping(value = "/delete")
    public ResponseBo deleteComments(@RequestParam(value = "id", defaultValue = "0") Integer id){
        return commentService.deleteComments(id);
    }



}
