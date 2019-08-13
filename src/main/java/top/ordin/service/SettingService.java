package top.ordin.service;

import top.ordin.model.bo.ResponseBo;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

public interface SettingService {

    void index(HttpServletRequest request);

    ResponseBo saveSite(Map<String,String> params);

}
