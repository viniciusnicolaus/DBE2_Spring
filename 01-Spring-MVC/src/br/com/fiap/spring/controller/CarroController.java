package br.com.fiap.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.fiap.spring.model.Carro;

@Controller
@RequestMapping("/carro")
public class CarroController {
	
	@GetMapping("cadastrar")
	public String abrirPagina() {
		return "carro/pagina";
	}
	@PostMapping("cadastrar")
	public ModelAndView processarPagina(Carro carro) {
		System.out.println(carro.getModelo() + "\n" + carro.getAno() + "\n" + carro.isImportado() + "\n" + 
				carro.isBlindado() + "\n" + carro.getMarca());	
		
		ModelAndView retorno = new ModelAndView("carro/pagina");
		retorno.addObject("mensagem","Seu carro é um:");
		retorno.addObject("modelo", carro.getModelo());
		retorno.addObject("mensagem2", "da marca");
		retorno.addObject("marca", carro.getMarca());
		
		return retorno;
	}
}
