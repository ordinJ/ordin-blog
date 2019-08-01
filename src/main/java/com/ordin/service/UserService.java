package com.ordin.service;

import com.ordin.model.Users;
import com.ordin.model.bo.InstallBo;
import com.ordin.model.bo.ResponseBo;

import javax.servlet.http.HttpServletRequest;

/**
 * admin
 */
public interface UserService {

    Users getUsers(int id);

    ResponseBo login(String username, String password,HttpServletRequest request);

    int createUser(InstallBo installBo);

}
