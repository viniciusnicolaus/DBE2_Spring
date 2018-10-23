package br.com.fiap.spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.fiap.spring.dao.PremioDAO;
import br.com.fiap.spring.model.Premio;

@Controller
@RequestMapping("premio")
public class PremioController {

	@Autowired
	private PremioDAO dao; 
	
	@GetMapping("cadastrar")
	public String abrirForm() {
		return "premio/cadastro";
	}
	
	@Transactional
	@PostMapping("cadastrar")
	public ModelAndView processar(Premio premio) {
		
		dao.cadastrar(premio);
		
		ModelAndView retorno = new ModelAndView("premio/resultado");
		retorno.addObject("msg", "Premio cadastrado");
		retorno.addObject("p", premio);
		
		return retorno;
	}
}
