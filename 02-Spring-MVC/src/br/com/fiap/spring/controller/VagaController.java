package br.com.fiap.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.fiap.spring.model.Vaga;

@Controller
@RequestMapping("vaga")
public class VagaController {
	

	@GetMapping("cadastrar")
	public String abrir() {
		return "vaga/cadastro";
	}
	
	@PostMapping("cadastrar")
	public ModelAndView processar(Vaga vaga) {
		ModelAndView retorno = new ModelAndView("vaga/resumo");
		//Informações para a página JSPs
		retorno.addObject("msg", "Vaga Cadastrada!");
		retorno.addObject("v", vaga);
		
		return retorno;
		
	}
}

