package top.ordin.service.impl;

import top.ordin.constant.WebConst;
import top.ordin.mapper.UsersMapper;
import top.ordin.model.Users;
import top.ordin.model.bo.InstallBo;
import top.ordin.model.bo.ResponseBo;
import top.ordin.model.vo.UsersExample;
import top.ordin.service.UserService;
import top.ordin.util.BlogUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import java.util.List;


@Service
public class UserServiceImpl implements UserService {


    @Autowired
    private UsersMapper usersMapper;

    @Override
    public Users getUsers(int id) {
        return usersMapper.selectByPrimaryKey(id);
    }

    @Override
    public ResponseBo login(String username, String password , HttpServletRequest request) {
        if (StringUtils.isBlank(username) || StringUtils.isBlank(password)) {
            return ResponseBo.fail("用户名和密码不能为空");
        }
        UsersExample example = new UsersExample();
        UsersExample.Criteria criteria = example.createCriteria();
        criteria.andUsernameEqualTo(username);
        long count = usersMapper.countByExample(example);
        if (count < 1) {
            return ResponseBo.fail("不存在该用户");
        }
        String pwd = BlogUtils.MD5encode(username + password);
        criteria.andPasswordEqualTo(pwd);
        List<Users> userVos = usersMapper.selectByExample(example);
        if (userVos.size() != 1) {
            ResponseBo responseBo = ResponseBo.fail(-5);
            responseBo.setMsg("用户名或密码错误");
            return responseBo;
        }
        request.getSession().setAttribute(WebConst.LOGIN_SESSION_KEY, userVos.get(0));
        return ResponseBo.ok();
    }

    @Override
    public int createUser(InstallBo installBo) {
        String username = installBo.getAccount();
        String password = installBo.getPassword();
        String pwd = BlogUtils.MD5encode(username + password);
        Users user = new Users();
        user.setEmail(installBo.getEmail());
        user.setUsername(username);
        user.setPassword(pwd);
        return usersMapper.insert(user);
    }
}
