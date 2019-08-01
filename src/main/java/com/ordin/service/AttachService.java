package com.ordin.service;

import com.github.pagehelper.PageInfo;
import com.ordin.model.Attach;
import com.ordin.model.bo.ResponseBo;


public interface AttachService {

    PageInfo<Attach> index(int page,int limit);

    int save(String fname, String fkey, String ftype, Integer author);

    ResponseBo delete(Integer id);

}
