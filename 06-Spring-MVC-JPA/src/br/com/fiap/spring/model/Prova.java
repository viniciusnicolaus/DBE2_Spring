package br.com.fiap.spring.model;

import java.util.Calendar;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import javax.validation.constraints.DecimalMax;
import javax.validation.constraints.DecimalMin;
import javax.validation.constraints.Future;

import org.hibernate.validator.constraints.NotBlank;

@Entity
@SequenceGenerator(name="prova",allocationSize=1)
public class Prova {

	@Id
	@GeneratedValue(generator="prova",strategy=GenerationType.SEQUENCE)
	private int codigo;
	
	@DecimalMin("0") 
	@DecimalMax("10")
	private float notaMaxima;
	
	@Future
	private Calendar data;

	@NotBlank
	private String descricao;
	
	@ManyToOne	
	private Disciplina disciplina;

	public int getCodigo() {
		return codigo;
	}

	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}

	public float getNotaMaxima() {
		return notaMaxima;
	}

	public void setNotaMaxima(float notaMaxima) {
		this.notaMaxima = notaMaxima;
	}

	public Calendar getData() {
		return data;
	}

	public void setData(Calendar data) {
		this.data = data;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public Disciplina getDisciplina() {
		return disciplina;
	}

	public void setDisciplina(Disciplina disciplina) {
		this.disciplina = disciplina;
	}
	
}