package com.javastudy.controllers;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.logging.Logger;


@Controller
public class MainController {

    private static final Logger logger = Logger.getLogger(MainController.class.toString());

    @RequestMapping(value = "/second")
    public String indexPage() {
        return "secondPage";
    }

    @RequestMapping(value = "/admin")
    public String adminPage() {
        return "adminPage";
    }

    @RequestMapping(value ="/welcome", method = RequestMethod.GET)
    public ModelAndView login(@RequestParam(value = "error", required = false) String error) {
        logger.warning("LOG: Call method \"login\" of MainController class");
        System.out.println("Call method \"login\" of MainController class");

        ModelAndView model = new ModelAndView();
        if (error != null) {
            model.addObject("error", "Invalid username or password!");
        }
        model.setViewName("welcomePage");
        return model;

    }

}
