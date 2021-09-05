package com.codingdojo.Date.controllers;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class maincontroller{
	@RequestMapping("/")
	public String index() {
		return "index.jsp";
	}
	@RequestMapping("/date")
	public String date(Model viewModel) {
		Date d = new Date();
		SimpleDateFormat formattedAsDate = new SimpleDateFormat("EEEE, 'the' dd 'of' MMMM, YYYY");
		viewModel.addAttribute("theDate", formattedAsDate.format(d));
		return "date.jsp";
	}
	@RequestMapping("/time")
	public String time(Model viewModel) {
		Date d = new Date();
		SimpleDateFormat formattedAsTime = new SimpleDateFormat("h:mm a");
		viewModel.addAttribute("theTime", formattedAsTime.format(d));
		return "time.jsp";
	}
}