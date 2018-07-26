package com.yaa.service;

import com.github.pagehelper.PageInfo;
import com.yaa.model.Contents;

public interface ContentService {

    PageInfo<Contents> getContents(Integer p,Integer limit);

    Contents getContents(Integer cid);

    void updateContentByCid(Contents contents);

}
