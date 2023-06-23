package com.jenkins.vicky.jenkinscicd;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.result.MockMvcResultMatchers;

@WebMvcTest(HelloController.class)
class JenkinscicdApplicationTests {

	@Autowired
	private MockMvc mockMvc;

	@Test
	void returnHello() throws Exception {
		mockMvc.perform(MockMvcRequestBuilders.get("/"))
			.andExpect(MockMvcResultMatchers.status().isOk())
			.andExpect(MockMvcResultMatchers.content().string("Don't worry, I am running successfully"));
	
	}
	
	@Test
	void returnSomething() throws Exception {
		mockMvc.perform(MockMvcRequestBuilders.get("/get"))
			.andExpect(MockMvcResultMatchers.status().isOk())
			.andExpect(MockMvcResultMatchers.content().string("just another test"));
	
	}
}
