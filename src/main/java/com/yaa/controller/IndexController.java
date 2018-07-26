package com.yaa.controller;

import com.github.pagehelper.PageInfo;
import com.yaa.constant.WebConst;
import com.yaa.controller.base.BaseController;
import com.yaa.model.Contents;
import com.yaa.service.ContentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;

@Controller
public class IndexController extends BaseController{

    @Autowired
    private ContentService contentService;

    //首页
    @RequestMapping(value = "/")
    public String indexPage(HttpServletRequest request,@RequestParam(value = "limit", defaultValue = "12") int limit){
        //是否初始化
        String install = WebConst.initConfig.get("allow_install");
        if("1".equals(install)){
            return this.index(request, 1, limit);
        }
        return this.render("install");
    }

    /**
     * 首页分页
     *
     * @param request request
     * @param p       第几页
     * @param limit   每页大小
     * @return 主页
     */
    @RequestMapping(value = "page/{p}")
    public String index(HttpServletRequest request, @PathVariable int p, @RequestParam(value = "limit", defaultValue = "12") int limit) {
        p = p < 0 || p > WebConst.MAX_PAGE ? 1 : p;
        PageInfo<Contents> articles = contentService.getContents(p, limit);
        request.setAttribute("articles", articles);
        if (p > 1) {
            this.title(request, "第" + p + "页");
        }
        return this.render("index");
    }

    @GetMapping(value = {"article/{cid}"})
    public String getArticle(HttpServletRequest request, @PathVariable Integer cid) {
        Contents contents = contentService.getContents(cid);
        if (null == contents || "draft".equals(contents.getStatus())) {
            return this.render404();
        }
        request.setAttribute("article", contents);
        request.setAttribute("is_post", true);
        if (!checkHitsFrequency(request, cid)) {
            updateArticleHit(contents.getCid(), contents.getHits());
        }
        return this.render("article");

    }

    /**
     * 更新文章的点击率
     *
     * @param cid
     * @param chits
     */
    private void updateArticleHit(Integer cid, Integer chits) {
        Integer hits = cache.hget("article" + cid, "hits");
        if (chits == null) {
            chits = 0;
        }
        hits = null == hits ? 1 : hits + 1;
        if (hits >= WebConst.HIT_EXCEED) {
            Contents temp = new Contents();
            temp.setCid(cid);
            temp.setHits(chits + hits);
            contentService.updateContentByCid(temp);
            cache.hset("article" + cid, "hits", 1);
        } else {
            cache.hset("article" + cid, "hits", hits);
        }
    }

}
