package br.com.fiap.spring.dao.impl;

import java.util.Calendar;
import java.util.List;

import org.springframework.stereotype.Repository;

import br.com.fiap.spring.dao.PassagemDAO;
import br.com.fiap.spring.model.Passagem;

@Repository
public class PassagemDAOImpl extends GenericDAOImpl<Passagem, Integer> 
							implements PassagemDAO {

	@Override
	public List<Passagem> buscarPor(String origem, String destino, Calendar data) {
		
		return em.createQuery
				("from Passagem where origem like :o and "
						+ "destino like :des and data = :d order by valor",Passagem.class)
				.setParameter("o", "%"+origem+"%")
				.setParameter("des", "%"+destino+"%")
				.setParameter("d", data)
				.getResultList();
	}

	@Override
	public void fazerCheckin(int codigo) {
		Passagem passagem = buscar(codigo);
		passagem.setCheckin(true);
		atualizar(passagem);
		
	}

}
