package br.com.livro.domain;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.ResultSetRow;
import com.mysql.jdbc.Statement;

public class CarroDAO extends BaseDAO{
	
	public Carro getCarroById(Long id) throws SQLException{
		Connection conn = null;
		PreparedStatement stmt = null;
		
		conn = getConnection();
		stmt = conn.prepareStatement("SELECT * FROM carro WHERE id=?");
		stmt.setLong(1, id);
		ResultSet rs = stmt.executeQuery();
		
		try {
			if(rs.next()) {
				Carro carro = createCarro(rs);
				rs.close();
				return carro;
			}
		}finally {
			if(stmt != null) {
				stmt.close();
			}
			if(conn != null) {
				conn.close();
			}
		}
		
		return null;
	}
	
	public List<Carro> findByName(String name) throws SQLException {
		List<Carro> carros = new ArrayList<>();
		Connection conn = null;
		PreparedStatement stmt = null;
		
		conn = getConnection();
		stmt = conn.prepareStatement("SELECT * FROM carro WHERE lower(nome) like ? ");
		stmt.setString(1, "%" + name.toLowerCase() + "%");
		ResultSet rs = stmt.executeQuery();
		
		try {
			//Dessa vez, usaremos o while, porque a consulta pode retornar um ou vários registros
			while(rs.next()) {
				Carro carro = this.createCarro(rs);
				carros.add(carro);
			}
			rs.close();
		} finally {
			if(conn != null) {
				conn.close();
			}
			if(stmt != null) {
				stmt.close();
			}
		}
		return carros;
	}
	
	public List<Carro> findByTipo(String tipo) throws SQLException {
		List<Carro> carros = new ArrayList<>();
		Connection conn = null;
		PreparedStatement stmt = null;
		
		conn = getConnection();
		stmt = conn.prepareStatement("SELECT * FROM carro WHERE lower(tipo) = ? ");
		stmt.setString(1, tipo.toLowerCase());
		ResultSet rs = stmt.executeQuery();
		
		try {
			//Dessa vez, usaremos o while, porque a consulta pode retornar um ou vários registros
			while(rs.next()) {
				Carro carro = this.createCarro(rs);
				carros.add(carro);
			}
			rs.close();
		} finally {
			if(conn != null) {
				conn.close();
			}
			if(stmt != null) {
				stmt.close();
			}
		}
		return carros;
	}
	
	public List<Carro> getCarros() throws SQLException{
		List<Carro> lista = new ArrayList<>();
		Connection conn = null;
		PreparedStatement stmt = null;
		try {
			conn = this.getConnection();
			stmt = conn.prepareStatement("SELECT * FROM carro");
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				Carro carro = createCarro(rs);
				lista.add(carro);
			}
			rs.close();
			return lista;
		} finally {
			if(stmt != null) {
				stmt.close();
			}
			if(conn != null) {
				conn.close();
			}
		}
	}
	
	public void save(Carro carro) throws SQLException {
		Connection conn = null;
		PreparedStatement stmt = null;
		
		try {
			conn = getConnection();
			if(carro.getId() == null) {
				stmt = conn.prepareStatement("INSERT INTO carro (nome, descricao, url_foto, url_video, latitude, "
						+ "longitude, tipo) VALUES(?,?,?,?,?,?,?)", Statement.RETURN_GENERATED_KEYS); 
			}else {
				stmt = conn.prepareStatement("UPDATE carro SET nome=?, descricao=?, url_foto=?, url_video=?, latitude=?,"
						+ "longitude=?, tipo=? WHERE id=?");
			}
			stmt.setString(1, carro.getNome());
			stmt.setString(2, carro.getDesc());
			stmt.setString(3, carro.getUrlFoto());
			stmt.setString(4, carro.getUrlVideo());
			stmt.setString(5, carro.getLatitude());
			stmt.setString(6, carro.getLongitude());
			stmt.setString(7, carro.getTipo());
			if(carro.getId() != null) {
				//Se o id passado não for nulo, estaremos fazendo o UPDATE, nesse cenário, teremos 1 parâmetro a mais
				stmt.setLong(8, carro.getId());
			}
			//Se o código DML for executado, retorna 1, se não for executado, retorna 0.
			int count = stmt.executeUpdate();
			
			if(count == 0) {
				throw new SQLException("Erro ao inserir o carro");
			}
			
			//Se inseriu, ler o id do auto_increment
			if(carro.getId() == null) {
				Long id = getGeneratedId(stmt);
				carro.setId(id);
			}
		} finally {
			if(stmt != null) {
				stmt.close();
			}
			if(conn != null) {
				conn.close();
			}
		}
	}
	
	public static Long getGeneratedId(PreparedStatement stmt) throws SQLException {
		ResultSet rs = stmt.getGeneratedKeys();
		if(rs.next()) {
			Long id = rs.getLong(1);
			return id;
		}
		return 0L;
	}
	
	public boolean deletar(Long id) throws SQLException {
		Connection conn = null;
		PreparedStatement stmt = null;
		try {
			conn = this.getConnection();
			stmt = conn.prepareStatement("DELETE FROM carro WHERE id=?");
			stmt.setLong(1, id);
			
			//Se o código DML for executado, retorna 1, se não for executado, retorna 0.
			int count = stmt.executeUpdate();
			
			boolean ok = count > 0;
			return ok;
		} finally {
			if(conn != null) {
				conn.close();
			}
			if(stmt != null) {
				stmt.close();
			}
		}
	}
	public Carro createCarro(ResultSet rs) throws SQLException {
		Carro c = new Carro();
		c.setId(rs.getLong("id"));
		c.setNome(rs.getString("nome"));
		c.setDesc(rs.getString("descricao"));
		c.setUrlFoto(rs.getString("url_foto"));
		c.setUrlVideo(rs.getString("url_video"));
		c.setLatitude(rs.getString("latitude"));
		c.setLongitude(rs.getString("longitude"));
		c.setTipo(rs.getString("tipo"));
		return c;
	}

}
