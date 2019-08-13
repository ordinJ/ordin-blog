package top.ordin.controller.admin;

import com.github.pagehelper.PageInfo;
import top.ordin.controller.base.BaseController;
import top.ordin.model.Contents;
import top.ordin.model.Users;
import top.ordin.model.bo.ResponseBo;
import top.ordin.service.ArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping(value = "/admin/articles")
public class ArticleController extends BaseController {

    @Autowired
    private ArticleService articleService;

    /**
     * 文章管理页
     * @return
     */
    @GetMapping(value = "")
    public String index(@RequestParam(value = "page", defaultValue = "1") int page,
                        @RequestParam(value = "limit", defaultValue = "10") int limit, HttpServletRequest request) {
        PageInfo<Contents> contentsPageInfo = articleService.selectArticlePage(page,limit);
        request.setAttribute("articles", contentsPageInfo);
        request.setAttribute("active","articles");
        return "admin/articles";
    }

    /**
     * 发布文章页
     * @return
     */
    @RequestMapping(value = "/goPublish")
    public String goPublish(HttpServletRequest request){
        articleService.goPublish(request);
        return "admin/article_edit";
    }

    /**
     * 修改文章-详情查询
     * @param id
     * @param request
     * @return
     */
    @GetMapping(value = "/edit/{id}")
    public String toSave(@PathVariable Integer id,HttpServletRequest request){
        articleService.editArticle(id,request);
        return "admin/article_edit";
    }

    /**
     * 删除文章
     * @param id
     * @return
     */
    @ResponseBody
    @PostMapping(value = "/delete")
    public ResponseBo deleteArt(@RequestParam(value = "id", defaultValue = "0") Integer id){
        return articleService.deleteArticle(id);
    }


    /**
     * 修改文章
     * @param contents
     * @return
     */
    @ResponseBody
    @PostMapping(value = "/update")
    public ResponseBo toUpdate(Contents contents){
        return articleService.updateArticle(contents);
    }


    /**
     * 发布文章
     * @param contents
     * @return
     */
    @ResponseBody
    @PostMapping(value = "/publish")
    public ResponseBo addArticle(HttpServletRequest request,Contents contents){
        Users users = this.user(request);
        return articleService.addArticle(contents,users);
    }



}
