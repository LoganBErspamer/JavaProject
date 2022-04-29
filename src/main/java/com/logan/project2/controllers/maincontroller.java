package com.logan.project2.controllers;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.logan.project2.models.Picture;
import com.logan.project2.services.PictureService;

@Controller
public class maincontroller {

	@Autowired
	private PictureService picServ;
	
	
	
	
	@GetMapping("/")
	public String home(Model model, HttpSession session) {
		
		Picture picture = new Picture();
		model.addAttribute("pic", picture);
		
		session.getAttribute("sessionpic");
		return "home.jsp";
	}
	
	@GetMapping("/uploaded")
	public String upload() {
		return "uploaded.jsp";
	}
	
	
	@GetMapping("/uploaded/{id}")
	public String uploaded(@PathVariable("id")Long id, Model model) {
		
		Picture picture = picServ.findPicture(id);
		model.addAttribute("thepic", picture);
		return "uploaded.jsp";
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	@GetMapping("/album")
	public String album() {
		return "hard.jsp";
	}
	@GetMapping("/test")
		public String test() {
		return "test.jsp";
	}
	@GetMapping("/clear")
	public String clear() {
		return "clear.jsp";
	}
	
	
//	==============ACTION ROUTES=======================
	
	@PostMapping("/picture/new")
	public String createPicture(@Valid @ModelAttribute("picture")Picture picture, 
			BindingResult result, HttpSession session, Model model) {
		if(result.hasErrors()) {
			return "home.jsp";
		}else {
			Picture pic = new Picture();
			model.addAttribute("pic", pic);
			session.setAttribute("sessionpic", picture.getPic());
			return "redirect:/album";
		}
	}
}

