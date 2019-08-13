package top.ordin.service;

import com.github.pagehelper.PageInfo;
import top.ordin.model.Attach;
import top.ordin.model.bo.ResponseBo;


public interface AttachService {

    PageInfo<Attach> index(int page, int limit);

    int save(String fname, String fkey, String ftype, Integer author);

    ResponseBo delete(Integer id);

}
