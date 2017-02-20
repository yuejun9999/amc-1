package orm;

/**
 * Againorderdetail entity. @author MyEclipse Persistence Tools
 */

public class Againorderdetail implements java.io.Serializable {

	// Fields

	private Integer againOrderDetailId;
	private Againorder againorder;
	private Product product;
	private Float productQua;

	// Constructors

	/** default constructor */
	public Againorderdetail() {
	}

	/** full constructor */
	public Againorderdetail(Againorder againorder, Product product,
			Float productQua) {
		this.againorder = againorder;
		this.product = product;
		this.productQua = productQua;
	}

	// Property accessors

	public Integer getAgainOrderDetailId() {
		return this.againOrderDetailId;
	}

	public void setAgainOrderDetailId(Integer againOrderDetailId) {
		this.againOrderDetailId = againOrderDetailId;
	}

	public Againorder getAgainorder() {
		return this.againorder;
	}

	public void setAgainorder(Againorder againorder) {
		this.againorder = againorder;
	}

	public Product getProduct() {
		return this.product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public Float getProductQua() {
		return this.productQua;
	}

	public void setProductQua(Float productQua) {
		this.productQua = productQua;
	}

}