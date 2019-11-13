package prod_venda;

import database.DBQuery;

public class ProdVendaDAO extends DBQuery {

	private ProdVenda prod_vend = null;
	
	public ProdVendaDAO(ProdVenda prod_venda) {
		this.setTable	("prod_vend");
		this.setFields	(new String[]{"id_prod_vend","qtd","id_venda","id_prod"});
		this.setKeyField("id_prod_vend");
		this.setProd_venda(prod_vend);
	}
	
	public ProdVendaDAO(){
		this.setTable	("prod_vend");
		this.setFields	(new String[]{"id_prod_vend","qtd","id_venda","id_prod"});
		this.setKeyField("id_prod_vend");
	}
	
	//funções para acesso de dados de Vendas de Produtos

	public ProdVenda getProd_venda() {
		return prod_vend;
	}

	public void setProd_venda(ProdVenda prod_vend) {
		this.prod_vend = prod_vend;
	}
	
}
