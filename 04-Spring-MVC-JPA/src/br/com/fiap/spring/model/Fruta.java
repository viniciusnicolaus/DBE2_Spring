package br.com.fiap.spring.model;

import java.util.Calendar;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="T_FRUTA")
@SequenceGenerator(name="fruta", sequenceName="SQ_T_FRUTA", allocationSize=1)
public class Fruta {
	
	@Id
	@GeneratedValue(generator="fruta", strategy=GenerationType.SEQUENCE)
	private int codigo;
	
	@Column(name="Nome", length=100)
	private String nome;
	
	@Column(name="Orgânico")
	private boolean organico;
	
	@Column(name="Quantidade")
	private int quantidade;
	
	@Column(name="Valor")
	private double valor;
	
	@DateTimeFormat(pattern="dd/MM/yyyy")
	@Temporal(TemporalType.DATE)
	@Column(name="DataVencimento")
	private Calendar dataVencimento;
	
	@Column(name="Promoção")
	private boolean promocao;
	
	
	public Fruta() {
		super();
	}

	public Fruta(int codigo, String nome, boolean organico, int quantidade, double valor) {
		super();
		this.codigo = codigo;
		this.nome = nome;
		this.organico = organico;
		this.quantidade = quantidade;
		this.valor = valor;
	}

	public int getCodigo() {
		return codigo;
	}

	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public boolean isOrganico() {
		return organico;
	}

	public void setOrganico(boolean organico) {
		this.organico = organico;
	}

	public int getQuantidade() {
		return quantidade;
	}

	public void setQuantidade(int quantidade) {
		this.quantidade = quantidade;
	}

	public double getValor() {
		return valor;
	}

	public void setValor(double valor) {
		this.valor = valor;
	}

	public Calendar getDataVencimento() {
		return dataVencimento;
	}

	public void setDataVencimento(Calendar dataVencimento) {
		this.dataVencimento = dataVencimento;
	}

	public boolean isPromocao() {
		return promocao;
	}

	public void setPromocao(boolean promocao) {
		this.promocao = promocao;
	}
}
