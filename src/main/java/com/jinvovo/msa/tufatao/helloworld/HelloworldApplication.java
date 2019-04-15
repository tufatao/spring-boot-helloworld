package com.jinvovo.msa.tufatao.helloworld;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@SpringBootApplication
public class HelloworldApplication {

    @RequestMapping("/")
    public String home() {
        return "Hello， this is the first web app 1.0.1";
    }
    public static void main(String[] args) {
        SpringApplication.run(HelloworldApplication.class, args);
    }

}
