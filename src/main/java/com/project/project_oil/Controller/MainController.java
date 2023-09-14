package com.project.project_oil.Controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.project.project_oil.Service.OilService;

@Controller
public class MainController {

    @Autowired
    OilService oilService;

    @GetMapping("/main")
    public String doMain(Model model){

        List<Map<String, String>> list = new ArrayList();
        list = oilService.doOilList();

        model.addAttribute("list", list);

        return "/WEB-INF/views/main.jsp";
    }

    @GetMapping("/search")
    public String doSearch(Model model) {

        return "/WEB-INF/views/search.jsp";
    }
}
