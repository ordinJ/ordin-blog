package top.ordin.service;


import top.ordin.model.Metas;
import top.ordin.model.bo.ResponseBo;

import javax.servlet.http.HttpServletRequest;

public interface CategoryService {

    void getAllCategory(HttpServletRequest request);

    ResponseBo updateCategory(Metas metas);

    ResponseBo addCategory(Metas metas);

    ResponseBo deleteTag(Integer id);

    ResponseBo deleteCate(Integer id);

}
