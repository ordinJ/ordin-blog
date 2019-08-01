package com.ordin.service;

import com.github.pagehelper.PageInfo;
import com.ordin.model.Contents;
import com.ordin.model.Users;
import com.ordin.model.bo.ResponseBo;

import javax.servlet.http.HttpServletRequest;

/**
 * admin
 */
public interface ArticleService {

    PageInfo<Contents> selectArticlePage(int page,int limit);

    ResponseBo deleteArticle(Integer id);

    void editArticle(Integer id,HttpServletRequest request);

    void goPublish(HttpServletRequest request);

    ResponseBo updateArticle(Contents contents);

    ResponseBo addArticle(Contents contents, Users users);

}
