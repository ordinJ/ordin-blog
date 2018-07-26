package com.yaa.controller;

import com.github.pagehelper.PageInfo;
import com.yaa.constant.WebConst;
import com.yaa.controller.base.BaseController;
import com.yaa.model.Contents;
import com.yaa.model.Metas;
import com.yaa.model.bo.ArchiveBo;
import com.yaa.service.ContentService;
import com.yaa.service.MetasService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class IndexController extends BaseController{

    @Autowired
    private ContentService contentService;
    @Autowired
    private MetasService metasService;

    /**
     * 首页
     * @param request
     * @param limit
     * @return
     */
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
    @RequestMapping(value = "/page/{p}")
    public String index(HttpServletRequest request, @PathVariable int p, @RequestParam(value = "limit", defaultValue = "12") int limit) {
        p = p < 0 || p > WebConst.MAX_PAGE ? 1 : p;
        PageInfo<Contents> articles = contentService.getContents(p, limit);
        request.setAttribute("articles", articles);
        if (p > 1) {
            this.title(request, "第" + p + "页");
        }
        return this.render("index");
    }

    /**
     * 文章详情
     * @param request
     * @param cid
     * @return
     */
    @RequestMapping(value = "/article/{cid}")
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
        this.title(request,contents.getTitle());
        return this.render("article");

    }

    /**
     * 自定义页面
     * @param request
     * @param slug
     * @return
     */
    @RequestMapping(value = "/pages/{slug}")
    public String otherPage(HttpServletRequest request,@PathVariable String slug) {
        Contents contents = contentService.getContents(slug);
        if (null == contents || "draft".equals(contents.getStatus())) {
            return this.render404();
        }
        request.setAttribute("article", contents);
        request.setAttribute("is_post", false);
        this.title(request,contents.getTitle());
        return this.render("page");
    }

    /**
     * 文章归档
     * @param request
     * @return
     */
    @RequestMapping(value = "/archives")
    public String archives(HttpServletRequest request) {
        List<ArchiveBo> archives = contentService.getArchives();
        request.setAttribute("archives", archives);
        this.title(request,"文章归档");
        return this.render("archives");
    }

    /**
     * 搜索页
     * @param request
     * @return
     */
    @RequestMapping(value = "/search")
    public String search(HttpServletRequest request){
        List<Metas> metas = metasService.getAllMetas();
        this.title(request,"搜索");
        request.setAttribute("metas",metas);
        return this.render("search");
    }

    @RequestMapping(value = "/search/{keyword}")
    public String search(HttpServletRequest request,@PathVariable String keyword){

        this.title(request,keyword);
        return this.render("result");
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
