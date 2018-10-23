package br.com.fiap.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
	//URL: http://localhost:8080/01-Spring-MVC/home
	@RequestMapping("/home")
	public String abrirHome() {
		return "home/index"; // pasta e p�gina
	}
	
	

}
