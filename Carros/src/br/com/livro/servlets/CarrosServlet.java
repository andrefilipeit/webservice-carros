package br.com.livro.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.bind.JAXBException;

import br.com.livro.domain.Carro;
import br.com.livro.domain.CarroService;
import br.com.livro.domain.ListaCarros;
import br.com.livro.util.JAXBUtil;
import br.com.livro.util.ServletUtil;

@WebServlet("/carros/*")
public class CarrosServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;
	private static final CarroService carroService = new CarroService();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<Carro> carros = carroService.getCarros();
		ListaCarros listaCarros = new ListaCarros();
		listaCarros.setCarro(carros);
		
		/* Gera o XML
		 * String xml = JAXBUtil.toXML(listaCarros);
		 * //Escreve o XML na response da requisição utilizando o mime-type *application/xml*
		 * ServletUtil.writeXML(resp, xml);
		 */
		
		try {
			//Gera o JSON
			String json = JAXBUtil.toJSON(listaCarros);
			//Escreveo JSON na response da requisição do servlet com *text/json*
			ServletUtil.writeJSON(resp, json);
		} catch (JAXBException e) {
			e.printStackTrace();
		}
	}
}
