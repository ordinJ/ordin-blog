package com.yaa.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PageController {



    @RequestMapping(value = "/archives")
    public String archivesPage(){
        return "archives";
    }

    @RequestMapping(value = "/search")
    public String searchPage(){
        return "search";
    }

    @RequestMapping(value = "/search/{keyword}")
    public String searchResultPage(@PathVariable String keyword){
        return "result";
    }

}
