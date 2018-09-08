package com.yaa.controller.admin;

import com.yaa.controller.base.BaseController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller("adminIndexController")
@RequestMapping(value = "/admin")
public class IndexController extends BaseController {


    /**
     * 首页
     * @return
     */
    @GetMapping(value = "/index")
    public String adminHome(HttpServletRequest request) {
        request.setAttribute("active","index");
        return "admin/index";
    }

    /**
     * 发布文章页
     * @return
     */
    @RequestMapping(value = "/edit")
    public String toEdit(HttpServletRequest request){
        request.setAttribute("active","edit");
        return "admin/article_edit";
    }

    /**
     * 文章管理页
     * @return
     */
    @RequestMapping(value = "/articles")
    public String manage(HttpServletRequest request){
        request.setAttribute("active","articles");
        return "admin/articles";
    }

    /**
     * 页面管理页
     * @return
     */
    @RequestMapping(value = "/pages")
    public String pages(HttpServletRequest request){
        request.setAttribute("active","pages");
        return "admin/pages";
    }

    /**
     * 文件管理页
     * @return
     */
    @RequestMapping(value = "/files")
    public String files(HttpServletRequest request){
        request.setAttribute("active","files");
        return "admin/files";
    }

    /**
     * 评论管理页
     * @return
     */
    @RequestMapping(value = "/comments")
    public String comments(HttpServletRequest request){
        request.setAttribute("active","true");
        return "admin/comments";
    }

    /**
     * 分类/标签页
     * @return
     */
    @RequestMapping(value = "/category")
    public String category(HttpServletRequest request){
        request.setAttribute("active","true");
        return "admin/category";
    }

    /**
     * 系统设置页
     * @return
     */
    @RequestMapping(value = "/setting")
    public String setting(HttpServletRequest request){
        request.setAttribute("active","setting");
        return "admin/setting";
    }

}
