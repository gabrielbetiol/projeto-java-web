package usuario;

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
	
	public boolean checkLogin(){
		UsuarioDAO usuarioDAO = new UsuarioDAO();
		return (usuarioDAO.checkLogin(this.getEmail(), this.getSenha()));
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
