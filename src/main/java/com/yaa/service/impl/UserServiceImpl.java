package com.yaa.service.impl;

import com.yaa.mapper.UsersMapper;
import com.yaa.model.Users;
import com.yaa.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class UserServiceImpl implements UserService {


    @Autowired
    private UsersMapper usersMapper;

    @Override
    public Users getUsers(int id) {
        return usersMapper.selectByPrimaryKey(id);
    }
}
