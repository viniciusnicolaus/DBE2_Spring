package br.com.fiap.spring.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.fiap.spring.dao.FrutaDAO;
import br.com.fiap.spring.exception.RegistroNaoEncontradoException;
import br.com.fiap.spring.model.Fruta;

@Controller
@RequestMapping("fruta")
public class FrutaController {
	
	@Autowired
	private FrutaDAO dao;
	
	@Transactional
	@PostMapping("promover")
	public ModelAndView calcularDesconto(int codigo, double desconto, RedirectAttributes r) {
		Fruta fruta = dao.buscar(codigo);
		fruta.setValor(fruta.getValor() - fruta.getValor()*desconto/100);
		fruta.setPromocao(true);
		dao.atualizar(fruta);
		r.addAttribute("msg", "F|ruta em promo��o!!!");
		return new ModelAndView("redirect:/fruta/listar");
	}
	
	@GetMapping("pesquisar")
	public ModelAndView listar(String pesquisa) {
		List<Fruta> lista = dao.pesquisarPorNome(pesquisa);
		return new ModelAndView("fruta/lista")
				.addObject("frutas", lista);
		
	}
	
	@Transactional
	@PostMapping("excluir")
	public String remover(int codigo, RedirectAttributes r) {
		
		try {
			dao.excluir(codigo);
			r.addFlashAttribute("msg", "Fruta excluida");
		} catch (RegistroNaoEncontradoException e) {
			e.printStackTrace();
		}
		return "redirect:/fruta/listar";
	}
	
	@Transactional
	@PostMapping("editar")
	public String processarEdicao(Fruta fruta, RedirectAttributes r) {
		dao.atualizar(fruta);
		r.addFlashAttribute("msg", "Fruta atualizada");
		return "redirect:/fruta/listar";
		
	}
	
	@GetMapping("editar/{codigo}")
	public ModelAndView abrirEdicao(@PathVariable("codigo") int id) {
		return new ModelAndView("fruta/edicao").addObject("fruta", dao.buscar(id));
	}
	
	@GetMapping("listar")
	public ModelAndView abrirListagem() {
		return new ModelAndView("fruta/lista")
				//Adiciona a lista de frutas para a p�gina JSP
				.addObject("frutas", dao.listar());
	}
	
	@GetMapping("cadastrar")
	public String abrirForm() {
		return "fruta/cadastro";
	}
	
	@PostMapping("cadastrar")
	@Transactional
	public ModelAndView processarForm(Fruta fruta, RedirectAttributes r) {
		dao.cadastrar(fruta);
		r.addFlashAttribute("msg", "Fruta cadastrada!");
		//redirect redireciona para uma URL
		return new ModelAndView("redirect:/fruta/cadastrar");
	}
}
