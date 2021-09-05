package com.codingdojo.HelloHuman;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;



@SpringBootApplication
@RestController
public class HelloHumanApplication {

	public static void main(String[] args) {
		SpringApplication.run(HelloHumanApplication.class, args);
	}

//	@RequestMapping("/")
//	public String hello() {
//		return "<h1>Hello client! how are you doing?</h1>";
//	}

//    @RequestMapping("/{name}")
//    public String name(@PathVariable("name") String name){
//    	return "<h1>Hello " + name + " Spring boot is fun! </h1>";
//    }
	
    @RequestMapping("/")
    public String index(@RequestParam(value="name", required=false) String name) {
        return "Hello " + name;
    }
}