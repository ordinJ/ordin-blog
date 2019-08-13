package top.ordin.service;

import top.ordin.model.Users;
import top.ordin.model.bo.InstallBo;
import top.ordin.model.bo.ResponseBo;

import javax.servlet.http.HttpServletRequest;

/**
 * admin
 */
public interface UserService {

    Users getUsers(int id);

    ResponseBo login(String username, String password, HttpServletRequest request);

    int createUser(InstallBo installBo);

}
