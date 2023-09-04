package com.project.project_oil.Controller;

import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {
    @GetMapping("/main_page")
    public String mainCon(Model model){

        model.addAttribute("name", "leedonghawn");

        return "MainPage/main";
    }
}
