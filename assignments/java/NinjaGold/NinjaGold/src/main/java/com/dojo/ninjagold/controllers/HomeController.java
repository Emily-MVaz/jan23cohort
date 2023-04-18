package com.dojo.ninjagold.controllers;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Random;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	@RequestMapping("/")
	public String index(HttpSession session) {
		ArrayList<String> activities = new ArrayList<String>();
		if (session.getAttribute("count") == null) {
			session.setAttribute("count", 0);
		}
		if (session.getAttribute("activities") == null) {
			session.setAttribute("activities", activities);
		}
		return "index.jsp";
	}

	@PostMapping("/gold/{place}")
	public String gold(@PathVariable(value = "place") String place, HttpSession session) {
		Random rand = new Random();
		int count = 0;
		int temp = 0;
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("MMM d Y h:m a)");
		String time = simpleDateFormat.format(new Date());

		ArrayList<String> activities = (ArrayList<String>) session.getAttribute("activities");

		if (place.equals("farm")) {
			count = (int) session.getAttribute("count");
			temp = rand.nextInt(10, 21);
			count += temp;
			session.setAttribute("count", count);
			activities.add(0, "You entered a farm and earned " + temp + " gold!" + "(" + time);
		}
		if (place.equals("cave")) {
			count = (int) session.getAttribute("count");
			temp = rand.nextInt(5, 11);
			count += temp;
			session.setAttribute("count", count);
			activities.add(0, "You entered a cave and earned " + temp + " gold!" + "(" + time);
		}
		if (place.equals("house")) {
			count = (int) session.getAttribute("count");
			temp = rand.nextInt(2, 6);
			count += temp;
			session.setAttribute("count", count);
			activities.add(0, "You entered a house and earned " + temp + " gold!" + "(" + time);
		}
		if (place.equals("spa")) {
			count = (int) session.getAttribute("count");
			temp = rand.nextInt(5, 20);
			count -= temp;
			session.setAttribute("count", count);
			activities.add(0, "You entered a spa and lost " + temp + " gold!" + "(" + time);
		}
		if (place.equals("quest")) {
			if (rand.nextBoolean()) {
				count = (int) session.getAttribute("count");
				temp = rand.nextInt(0, 51);
				count += temp;
				activities.add(0, "You completed a quest and earned " + temp + " gold!" + "(" + time);
			} else {
				count = (int) session.getAttribute("count");
				temp = rand.nextInt(0, 51);
				System.out.println(temp);
				count -= temp;
				activities.add(0, "You failed to complete a quest and lost" + temp + " gold :( " + "(" + time);
			}
			session.setAttribute("count", count);
		}
		session.setAttribute("activities", activities);
		return "redirect:/";
	}
	
	@PostMapping("reset")
	public String reset(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}

}
