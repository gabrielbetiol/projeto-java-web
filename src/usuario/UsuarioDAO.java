package usuario;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.sun.crypto.provider.RSACipher;

import database.DBQuery;

public class UsuarioDAO extends DBQuery {
	
	private  Usuario usuario = null;
	
	public UsuarioDAO(Usuario usuario) {
		this.setTable	("usuario");
		this.setFields	(new String[]{"id","nome","cpf","email","senha","end"});
		this.setKeyField("id");
		this.setUsuario(usuario);
	}
	
	public UsuarioDAO() {
		this.setTable	("usuario");
		this.setFields	(new String[]{"id","nome","cpf","email","senha","end"});
		this.setKeyField("id");
	}
	
	public ResultSet checkLogin(String email, String senha){
		ResultSet rs = select("email = '"+ email +"' AND senha = '"+ senha +"'");
		return (rs);
	}

	public Usuario getUsuario() {
		return usuario;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}
	
}
