package com.test;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TestP {
	
	
	@GetMapping("/bitu")
	String getValue()
	{
		return "test first apil";
	}

}
