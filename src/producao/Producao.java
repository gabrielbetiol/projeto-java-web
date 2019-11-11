package producao;

public class Producao {

	private int 	id;
	private int 	idUsuario;
	private int 	qntd;
	private float 	precoUnit;
	private String 	tipo;
	private String 	descr;
	private String 	dataProd;
	
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
		return idUsuario;
	}

	public void setIdUsuario(int idUsuario) {
		this.idUsuario = idUsuario;
	}

	public int getQntd() {
		return qntd;
	}

	public void setQntd(int qntd) {
		this.qntd = qntd;
	}

	public float getPrecoUnit() {
		return precoUnit;
	}

	public void setPrecoUnit(float precoUnit) {
		this.precoUnit = precoUnit;
	}

	public String getTipo() {
		return tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}

	public String getDescr() {
		return descr;
	}

	public void setDescr(String descr) {
		this.descr = descr;
	}

	public String getDataProd() {
		return dataProd;
	}

	public void setDataProd(String dataProd) {
		this.dataProd = dataProd;
	}
	
}
