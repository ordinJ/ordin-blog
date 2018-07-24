package com.yaa.mapper;

import com.yaa.model.Users;
import org.springframework.stereotype.Repository;

@Repository
public interface UsersMapper {

    int deleteByPrimaryKey(Integer uid);

    int insert(Users record);

    int insertSelective(Users record);

    Users selectByPrimaryKey(Integer uid);

    int updateByPrimaryKeySelective(Users record);

    int updateByPrimaryKey(Users record);
}