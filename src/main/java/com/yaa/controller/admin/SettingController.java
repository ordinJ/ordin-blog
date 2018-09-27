package com.yaa.controller.admin;

import com.yaa.constant.WebConst;
import com.yaa.controller.base.BaseController;
import com.yaa.model.bo.ResponseBo;
import com.yaa.service.SettingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping(value = "/admin/setting")
public class SettingController extends BaseController {

    @Autowired
    private SettingService settingService;

    /**
     * 系统设置页
     * @return
     */
    @RequestMapping(value = "")
    public String setting(HttpServletRequest request){
        settingService.index(request);
        return "admin/setting";
    }

    /**
     * 保存网站设置
     * @param request
     * @return
     */
    @ResponseBody
    @PostMapping(value = "/saveSite")
    public ResponseBo saveSite(HttpServletRequest request){
        Map<String, String[]> parameterMap = request.getParameterMap();
        Map<String, String> querys = new HashMap<>();
        parameterMap.forEach((key, value) -> {
            querys.put(key, join(value));
            WebConst.initConfig.put(key,join(value));
        });
        return settingService.saveSite(querys);
    }

    /**
     * 保存个人信息
     * @param request
     * @return
     */
    @ResponseBody
    @PostMapping(value = "/savePro")
    public ResponseBo savePro(HttpServletRequest request){
        Map<String, String[]> parameterMap = request.getParameterMap();
        Map<String, String> querys = new HashMap<>();
        parameterMap.forEach((key, value) -> {
            querys.put(key, join(value));
            WebConst.initConfig.put(key,join(value));
        });
        return settingService.saveSite(querys);
    }

    /**
     * 数组转字符串
     *
     * @param arr
     * @return
     */
    private String join(String[] arr) {
        StringBuilder ret = new StringBuilder();
        String[] var3 = arr;
        int var4 = arr.length;

        for (int var5 = 0; var5 < var4; ++var5) {
            String item = var3[var5];
            ret.append(',').append(item);
        }

        return ret.length() > 0 ? ret.substring(1) : ret.toString();
    }

}
