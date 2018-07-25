package com.yaa.interceptor;

import com.yaa.extension.Commons;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Arrays;
import java.util.List;

/**
 * 页面错误拦截器
 */
public class ErrorInterceptor implements HandlerInterceptor {

    private Logger logger = LoggerFactory.getLogger(ErrorInterceptor.class);
    private List<Integer> errorCodeList = Arrays.asList(404, 403, 500, 501);
    private final Commons commons = new Commons();

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
                           ModelAndView modelAndView) throws Exception {
        if (errorCodeList.contains(response.getStatus())) {
            logger.info("请求出错,状态码："+response.getStatus());
            modelAndView.setViewName("/comm/error_" + response.getStatus());
        }else{
            request.setAttribute("commons",commons);
        }
    }
}
