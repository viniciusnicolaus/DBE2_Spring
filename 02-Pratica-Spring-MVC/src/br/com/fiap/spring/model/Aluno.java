package br.com.fiap.spring.model;

public class Aluno {
	private String nome;
	private int idade;
	private String status;
	private boolean bolsista;
	public Aluno(String nome, int idade, String status, boolean bolsista) {
		super();
		this.nome = nome;
		this.idade = idade;
		this.status = status;
		this.bolsista = bolsista;
	}
	public Aluno() {
		super();
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public int getIdade() {
		return idade;
	}
	public void setIdade(int idade) {
		this.idade = idade;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public boolean isBolsista() {
		return bolsista;
	}
	public void setBolsista(boolean bolsista) {
		this.bolsista = bolsista;
	}

}
