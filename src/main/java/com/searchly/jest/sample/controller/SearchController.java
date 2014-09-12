package com.searchly.jest.sample.controller;

import com.searchly.jest.sample.model.Article;
import com.searchly.jest.sample.service.SearchService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * @author ferhat
 */
@Controller
@RequestMapping("/search")
public class SearchController {

    @Autowired
    SearchService searchService;

    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView search(@RequestParam("q") String query) {
        List<Article> articles = searchService.searchArticles(query);
        ModelAndView mv = new ModelAndView();
        mv.setViewName("search");
        mv.addObject("articles", articles);
        return mv;
    }

    @RequestMapping(method = RequestMethod.GET, value = "/create")
    public ModelAndView createInitialData() {
        searchService.indexSampleArticles();
        ModelAndView mv = new ModelAndView("forward:/");
        mv.addObject("message", "2 Articles are indexed!");
        return mv;
    }
}

