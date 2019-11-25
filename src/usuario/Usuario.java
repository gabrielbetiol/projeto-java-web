package usuario;

import java.sql.ResultSet;
import java.sql.SQLException;


public class Usuario {

	private int 	id;
	private String 	nome;
	private String 	cpf;
	private String 	email;
	private String 	senha;
	private String 	end;
	
	public Usuario() {
		
	}
	
	public Usuario(String id, String nome, String cpf, String email, String senha, String end) {
		this.id =  ((id=="") ? 0 : new Integer(id));
		this.nome		= nome;
		this.cpf		= cpf;
		this.email		= email;
		this.senha		= senha;
		this.end		= end;
	}
	
	public Usuario(String id, String email, String senha) {
		this.id 	=  ((id=="") ? 0 : new Integer(id));
		this.nome 	= "";
		this.cpf	= "";
		this.email	= email;
		this.senha	= senha;
		this.end	= "";
	}
	
	public boolean checkLogin(){
		UsuarioDAO usuarioDAO = new UsuarioDAO();
		ResultSet rs = usuarioDAO.checkLogin(this.getEmail(), this.getSenha());
		try {
			if (rs.next()){
				this.id = rs.getInt("id");
				this.nome = rs.getString("nome");
				this.cpf = rs.getString("cpf");
				this.email = rs.getString("email");
				this.end = rs.getString("end");
				
				return (true);
			} else {
				return (false);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return (false);
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getCpf() {
		return cpf;
	}

	public void setCpf(String cpf) {
		this.cpf = cpf;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	public String getEndereco() {
		return end;
	}

	public void setEndereco(String endereco) {
		this.end = endereco;
	}
}
