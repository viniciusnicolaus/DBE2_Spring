package br.com.fiap.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/contato")
public class ContatoController {
	
	@GetMapping("enviar")
	public String abrirContato() {
		return "contato/form";
	}
	
	@PostMapping("enviar")
	public ModelAndView processarForm(String nome, String tel, String email) {
		System.out.println(nome + "\n" +  tel + "\n" + email );
		//Mandar informações para a página
		
		ModelAndView retorno = new ModelAndView("contato/form"); //pasta e página
		//Valores que serão enviados para a página(chave,valor)
		retorno.addObject("mensagem", "Contato enviado!!");
		retorno.addObject("nome", nome);
		
		
		return retorno;
	}
}
