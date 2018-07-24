package com.yaa.controller;

import com.yaa.model.Users;
import com.yaa.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PageController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/")
    public String indexPage(){
        return "index";
    }

    @RequestMapping(value = "/archives")
    public String archivesPage(){
        return "archives";
    }

    @RequestMapping(value = "/page/{page}")
    public ModelAndView page(@PathVariable String page){
        ModelAndView modelAndView = new ModelAndView("page");
        if(page.equals("links")){
            modelAndView.addObject("title","友链链接");
        }else{
            modelAndView.addObject("title","关于");
        }
        modelAndView.addObject("created","2017-07-23");
        return modelAndView;
    }

    @RequestMapping(value = "/article/{id}")
    public String articlePage(@PathVariable String id){
        return "article";
    }

    @RequestMapping(value = "/search")
    public String searchPage(){
        return "search";
    }

    @RequestMapping(value = "/search/{keyword}")
    public String searchResultPage(@PathVariable String keyword){
        return "result";
    }

    @ResponseBody
    @RequestMapping(value = "/getUser")
    public Users getUsers(){
        return userService.getUsers(3);
    }

    @RequestMapping(value = "/test500")
    public String test500(){
        int a = 1/0;
        return a+"";
    }
    @RequestMapping(value = "/install")
    public String install(){
        return "install";
    }

}
