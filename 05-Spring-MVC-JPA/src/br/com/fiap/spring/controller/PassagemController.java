package br.com.fiap.spring.controller;

import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.fiap.spring.dao.PassagemDAO;
import br.com.fiap.spring.model.Passagem;


@Controller
@RequestMapping("passagem")
public class PassagemController {

	@Autowired
	private PassagemDAO dao;
	
	@Transactional
	@PostMapping("checkin")
	public String checkin (int codigo, RedirectAttributes r) {
		dao.fazerCheckin(codigo);
		r.addAttribute("msg", "Check-in realizado!");
		return "redirect:/passagem/listar";
	}
	
	
	@Transactional
	@PostMapping("excluir")
	public String processarDelecao(int codigo, RedirectAttributes  r) {
		try {
			dao.excluir(codigo);
			r.addAttribute("msg", "Passaem excluida com sucesso!!!");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/passagem/listar";
	}
	
	
	@GetMapping("editar/{id}")
	public ModelAndView abrirEdicao(@PathVariable("id") int codigo) {
		Passagem passagem = dao.buscar(codigo);
		return new ModelAndView("passagem/edicao").addObject("passagem", passagem);
	}
	
	
	@Transactional
	@PostMapping("editar")
	public String processarEdicao(Passagem passagem, RedirectAttributes r) {
		dao.atualizar(passagem);
		r.addFlashAttribute("msg", "Passagem atualizada!!!");
		return "redirect:/passagem/listar";
	}
	
	@GetMapping("pesquisar")
	public ModelAndView pesquisar(String origem, String destino, Date data) {
		Calendar dataCerta =  new GregorianCalendar();
		dataCerta.setTime(data);
		return new ModelAndView("passagem/lista")
				.addObject("lista", dao.buscarPor(origem, destino, dataCerta));
	}
	
	@GetMapping("listar")
	public ModelAndView abrirListagem() {
		return new ModelAndView("passagem/lista")
				.addObject("passagens", dao.listar());
	}
	
	@GetMapping("cadastrar")
	public String cadastrar(Passagem passagem) {
		return "passagem/cadastro";
	}
	
	@Transactional
	@PostMapping("cadastrar")
	public String processarForm(Passagem passagem, RedirectAttributes r) {
		dao.cadastrar(passagem);
		r.addFlashAttribute("msg", "Passagem registrada!!!");
		return "redirect:/passagem/cadastrar";
	}
	
	
	
}
