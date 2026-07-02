package com.example.teastesport;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PageController {

    private static final String FEEDBACK_FORM_URL = "/coming-soon";

    @GetMapping("/")
    public String index(Model model) {
        model.addAttribute("feedbackFormUrl", FEEDBACK_FORM_URL);
        return "index";
    }

    @GetMapping("/event-a")
    public String eventA() {
        return "event-a";
    }

    @GetMapping("/event-b")
    public String eventB() {
        return "event-b";
    }

    @GetMapping("/location")
    public String location() {
        return "location";
    }

    @GetMapping("/news")
    public String news() {
        return "news";
    }

    @GetMapping("/coming-soon")
    public String comingSoon() {
        return "coming-soon";
    }
}
