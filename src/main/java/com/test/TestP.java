package com.test;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TestP {
	
	
	@GetMapping("/pooja")
	String getValue()
	{
		return "test first APi";
	}

}
