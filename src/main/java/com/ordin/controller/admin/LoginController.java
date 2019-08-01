package com.ordin.controller.admin;

import com.ordin.controller.base.BaseController;
import com.ordin.model.Users;
import com.ordin.model.bo.ResponseBo;
import com.ordin.service.UserService;
import org.apache.catalina.servlet4preview.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping(value = "/admin")
public class LoginController extends BaseController {

    @Autowired
    private UserService userService;

    @ResponseBody
    @PostMapping(value = "/login")
    public ResponseBo doLogin(Users users,HttpServletRequest request) {
        Integer error_count = cache.get("login_error_count");
        if (error_count==null || error_count < 3) {
            ResponseBo responseBo = userService.login(users.getUsername(), users.getPassword(), request);
            if (responseBo.getCode() == -5) {
                error_count = null == error_count ? 1 : error_count + 1;
                cache.set("login_error_count", error_count, 10 * 60);
            }
            return responseBo;
        }
        return ResponseBo.fail("您输入密码已经错误超过3次，请10分钟后尝试");
    }

}
