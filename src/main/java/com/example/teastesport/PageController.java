package com.example.teastesport;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PageController {

    @GetMapping("/")
    public String index() {
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
