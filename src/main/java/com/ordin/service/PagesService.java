package com.ordin.service;

import com.github.pagehelper.PageInfo;
import com.ordin.model.Contents;
import com.ordin.model.Users;
import com.ordin.model.bo.ResponseBo;

import javax.servlet.http.HttpServletRequest;

/**
 * admin
 */
public interface PagesService {

    PageInfo<Contents> selectPages(int page, int limit);

    ResponseBo deletePages(Integer id);

    void editPages(Integer id,HttpServletRequest request);

    void goPublish(HttpServletRequest request);

    ResponseBo updatePage(Contents contents);

    ResponseBo publishPage(Contents contents, Users users);


}
