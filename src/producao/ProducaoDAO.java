package producao;

import database.DBQuery;

public class ProducaoDAO extends DBQuery{

	private Producao producao = null;
	
	public ProducaoDAO(Producao producao) {
		this.setTable	("producao");
		this.setFields	(new String[]{"id","tipo","qtd","preco_uni","descricao","data_prod", "id_usu"});
		this.setKeyField("id");
		this.setProducao(producao);
	}
	
	public ProducaoDAO(){
		this.setTable	("producao");
		this.setFields	(new String[]{"id","tipo","qtd","preco_uni","descricao","data_prod", "id_usu"});
		this.setKeyField("id");
	}
	
	//funções para acesso dos dados de produção

	public Producao getProducao() {
		return producao;
	}

	public void setProducao(Producao producao) {
		this.producao = producao;
	}
	
}
