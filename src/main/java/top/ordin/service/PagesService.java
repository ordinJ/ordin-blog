package top.ordin.service;

import com.github.pagehelper.PageInfo;
import top.ordin.model.Contents;
import top.ordin.model.Users;
import top.ordin.model.bo.ResponseBo;

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
