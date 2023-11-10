package com.example.demo.controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class DemoController {
    @GetMapping("/")
    public String index() {
        return "Greetings from Spring Boot!";
    }
    @GetMapping("/demo")
    public String index1() {
        return "This is index page!";
    }
}