package br.com.fiap.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.fiap.spring.model.Aluno;

@Controller
@RequestMapping("/aluno")
public class AlunoController {

	@GetMapping("cadastrar")
	public String abrir() {
		return "aluno/page";
	}
	
	@PostMapping("cadastrar")
	public ModelAndView processar(Aluno a) {
		System.out.println(a.getNome() + "\n" + a.getIdade() + "\n" + a.getStatus() + "\n" + a.isBolsista());
		
		ModelAndView retorno = new ModelAndView("aluno/page");
		retorno.addObject("mensagem", "O aluno");
		retorno.addObject("nome", a.getNome());
		retorno.addObject("mensagem2", "foi");
		retorno.addObject("status", a.getStatus());
		
		return retorno;
	}
}
