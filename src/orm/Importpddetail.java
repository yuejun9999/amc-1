package orm;

/**
 * Importpddetail entity. @author MyEclipse Persistence Tools
 */

public class Importpddetail implements java.io.Serializable {

	// Fields

	private Integer importPdDetailId;
	private Product product;
	private Importpd importpd;
	private Float importNum;

	// Constructors

	/** default constructor */
	public Importpddetail() {
	}

	/** full constructor */
	public Importpddetail(Product product, Importpd importpd, Float importNum) {
		this.product = product;
		this.importpd = importpd;
		this.importNum = importNum;
	}

	// Property accessors

	public Integer getImportPdDetailId() {
		return this.importPdDetailId;
	}

	public void setImportPdDetailId(Integer importPdDetailId) {
		this.importPdDetailId = importPdDetailId;
	}

	public Product getProduct() {
		return this.product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public Importpd getImportpd() {
		return this.importpd;
	}

	public void setImportpd(Importpd importpd) {
		this.importpd = importpd;
	}

	public Float getImportNum() {
		return this.importNum;
	}

	public void setImportNum(Float importNum) {
		this.importNum = importNum;
	}

}