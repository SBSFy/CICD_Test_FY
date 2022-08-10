package com.fytest.cicdtest_fy.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/test")
@Validated
@Slf4j
public class TestController {

    @GetMapping()
    public String helloWorld(){
        return "Connected/Deployed";
    }
}
