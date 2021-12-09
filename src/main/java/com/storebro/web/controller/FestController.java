package com.storebro.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/fest")
public class FestController {
	@GetMapping("/detail/{num}")
	public String detail(@PathVariable("num") int num, Model model) {
		model.addAttribute("num", num);
		return "festival.detail";
	}
}
