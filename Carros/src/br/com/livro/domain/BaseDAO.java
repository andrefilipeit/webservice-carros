package br.com.livro.domain;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class BaseDAO {
	
	public BaseDAO() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			//Erro de driver JDBC (adicione o driver .jar do MySQL em /WEB-INF/lib)
			e.printStackTrace();
		}
	}
	
	protected Connection getConnection() throws SQLException {
		//URL de conexão com o banco de dados
		String url = "jdbc:mysql://localhost/livro";
		//Conecta à URL usando usuário e senha.
		Connection conn = DriverManager.getConnection(url, "root", "Aandreforcer2");
		
		return conn;
	}
	
	/**
	 * Método main feito apenas para testar conexão
	 * @param args
	 * @throws SQLException
	 * @author andre.filipe.it@gmail.com
	 */
	public static void main(String[] args) throws SQLException {
		BaseDAO db = new BaseDAO();
		//Testa a conexão
		Connection conn = db.getConnection();
		System.out.println(conn);
	}
}
