package orm;

/**
 * Pickingdetail entity. @author MyEclipse Persistence Tools
 */

public class Pickingdetail implements java.io.Serializable {

	// Fields

	private Integer pickingdetailId;
	private Picking picking;
	private Product product;
	private Float pickingNum;

	// Constructors

	/** default constructor */
	public Pickingdetail() {
	}

	/** full constructor */
	public Pickingdetail(Picking picking, Product product, Float pickingNum) {
		this.picking = picking;
		this.product = product;
		this.pickingNum = pickingNum;
	}

	// Property accessors

	public Integer getPickingdetailId() {
		return this.pickingdetailId;
	}

	public void setPickingdetailId(Integer pickingdetailId) {
		this.pickingdetailId = pickingdetailId;
	}

	public Picking getPicking() {
		return this.picking;
	}

	public void setPicking(Picking picking) {
		this.picking = picking;
	}

	public Product getProduct() {
		return this.product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public Float getPickingNum() {
		return this.pickingNum;
	}

	public void setPickingNum(Float pickingNum) {
		this.pickingNum = pickingNum;
	}

}