package com.jenkins.vicky.jenkinscicd;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/")
public class HelloController {
	
	@GetMapping("/")
	public String index() {
		return "Don't worry, I am running successfully";
	}
	
	@GetMapping("/get")
	public String getSomething() {
		return "just another test";
	}
	
	
}
