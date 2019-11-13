package producao;

public class Producao {

	private int 	id;
	private String 	tipo;
	private int 	qtd;
	private float 	preco_uni;
	private String 	descricao;
	private String 	data_prod;
	private int 	id_usu;
	
	public Producao() {
		// TODO Auto-generated constructor stub
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getIdUsuario() {
		return id_usu;
	}

	public void setIdUsuario(int idUsuario) {
		this.id_usu = idUsuario;
	}

	public int getQntd() {
		return qtd;
	}

	public void setQntd(int qntd) {
		this.qtd = qntd;
	}

	public float getPrecoUnit() {
		return preco_uni;
	}

	public void setPrecoUnit(float precoUnit) {
		this.preco_uni = precoUnit;
	}

	public String getTipo() {
		return tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}

	public String getDescr() {
		return descricao;
	}

	public void setDescr(String descr) {
		this.descricao = descr;
	}

	public String getDataProd() {
		return data_prod;
	}

	public void setDataProd(String dataProd) {
		this.data_prod = dataProd;
	}
	
}
