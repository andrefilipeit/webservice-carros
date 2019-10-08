package br.com.livro.domain;

import java.util.ArrayList;
import java.util.List;

public class CarroService {
	private CarroDAO db = new CarroDAO();
	
	//Lista todos os carros do banco de dados
	public List<Carro> getCarros(){
		try {
			List<Carro> carros = db.getCarros();
			return carros;
		} catch (Exception e) {
			e.printStackTrace();
			return new ArrayList<Carro>();
		}
	}
	//Busca um carro pelo id
	public Carro getCarro(Long id) {
		try {
			return db.getCarroById(id);
		} catch (Exception e) {
			return null;
		}
	}
	//Deleta o carro pelo id
	public boolean delete(Long id) {
		try {
			 return db.deletar(id);
		} catch (Exception e) {
			return false;
		}
	}
	//Salva ou atualiza um carro
	public boolean save(Carro carro) {
		try {
			db.save(carro);
			return true;
		} catch (Exception e) {
			return false;
		}
	}
	//Busca carro pelo nome
	public List<Carro> findByName(String nome){
		try {
			return db.findByName(nome);
		} catch (Exception e) {
			return null;
		}
	}
	
	public List<Carro> findByTipo(String tipo){
		try {
			return db.findByTipo(tipo);
		} catch (Exception e) {
			return null;
		}
	}

}
