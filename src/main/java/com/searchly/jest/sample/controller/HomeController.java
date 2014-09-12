package com.searchly.jest.sample.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * @author ferhat
 */

@Controller
@RequestMapping("/")
public class HomeController {
    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView home() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("home");
        return mv;
    }

    @RequestMapping(method = RequestMethod.GET, value = "/about")
    public ModelAndView about() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("about");
        return mv;
    }
}
