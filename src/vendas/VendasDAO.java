package vendas;

import database.DBQuery;

public class VendasDAO extends DBQuery {

	private Vendas vendas = null;
	
	public VendasDAO(Vendas vendas) {
		this.setTable	("vendas");
		this.setFields	(new String[]{"id","data"});
		this.setKeyField("id");
		this.setVendas(vendas);
	}
	
	public VendasDAO(){
		this.setTable	("vendas");
		this.setFields	(new String[]{"id","data"});
		this.setKeyField("id");
	}
	
	//funções para acesso de dados de vendas
	
	public Vendas getVendas() {
		return vendas;
	}

	public void setVendas(Vendas vendas) {
		this.vendas = vendas;
	}

	
}
