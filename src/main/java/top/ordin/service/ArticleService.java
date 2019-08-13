package top.ordin.service;

import com.github.pagehelper.PageInfo;
import top.ordin.model.Contents;
import top.ordin.model.Users;
import top.ordin.model.bo.ResponseBo;

import javax.servlet.http.HttpServletRequest;

/**
 * admin
 */
public interface ArticleService {

    PageInfo<Contents> selectArticlePage(int page, int limit);

    ResponseBo deleteArticle(Integer id);

    void editArticle(Integer id,HttpServletRequest request);

    void goPublish(HttpServletRequest request);

    ResponseBo updateArticle(Contents contents);

    ResponseBo addArticle(Contents contents, Users users);

}
