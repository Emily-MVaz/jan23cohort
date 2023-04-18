package com.example.omikuji.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController {

	@RequestMapping("/omikuji")
	public String index() {
		return "index.jsp";
	}

	@PostMapping("/send")
	public String send(HttpSession session, @RequestParam(value = "num") int num,
			@RequestParam(value = "city") String city, @RequestParam(value = "name") String name,
			@RequestParam(value = "hobby") String hobby, @RequestParam(value = "livingThing") String livingThing,
			@RequestParam(value = "nice") String nice) {
		session.setAttribute("num", num);
		session.setAttribute("city", city);
		session.setAttribute("name", name);
		session.setAttribute("hobby", hobby);
		session.setAttribute("livingThing", livingThing);
		session.setAttribute("nice", nice);
		return "redirect:omikuji/show";

	}

	@RequestMapping("omikuji/show")
	public String show() {
		return "show.jsp";
	}

}
