package com.storebro.web.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.storebro.web.entity.FestType;

@RestController()
@RequestMapping("/api")
public class ApiController {
	@GetMapping("/type/{type}/{id}")
	public String type(@PathVariable("type") String type, @PathVariable("id") int id) throws JsonProcessingException {
		ObjectMapper ob = new ObjectMapper();
		FestType ft = new FestType();
		ft.setId(id);
		ft.setType(type);
		return ob.writeValueAsString(ft);
	}
}
