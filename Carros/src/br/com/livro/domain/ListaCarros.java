package br.com.livro.domain;

import java.io.Serializable;
import java.util.List;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name = "carros")
public class ListaCarros implements Serializable{
	private static final long serialVersionUID = 1L;
	private List<Carro> carros;

	@XmlElement(name = "carro")
	public List<Carro> getCarro() {
		return carros;
	}

	public void setCarro(List<Carro> carro) {
		this.carros = carro;
	}
	
	public String toString() {
		return "ListaCarros [carros=" + carros +"]";
	}
}
