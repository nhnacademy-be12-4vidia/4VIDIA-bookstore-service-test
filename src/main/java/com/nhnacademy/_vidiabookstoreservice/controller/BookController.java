package com.nhnacademy._vidiabookstoreservice.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.Mapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class BookController {
    @GetMapping("/hello/books")
    public String getBook() {
        return "드디어 완성?";
    }
}
