package orm;

/**
 * Outstockdetail entity. @author MyEclipse Persistence Tools
 */

public class Outstockdetail implements java.io.Serializable {

	// Fields

	private Integer outStockDetailId;
	private Product product;
	private Outstock outstock;
	private Float outStockNum;

	// Constructors

	/** default constructor */
	public Outstockdetail() {
	}

	/** full constructor */
	public Outstockdetail(Product product, Outstock outstock, Float outStockNum) {
		this.product = product;
		this.outstock = outstock;
		this.outStockNum = outStockNum;
	}

	// Property accessors

	public Integer getOutStockDetailId() {
		return this.outStockDetailId;
	}

	public void setOutStockDetailId(Integer outStockDetailId) {
		this.outStockDetailId = outStockDetailId;
	}

	public Product getProduct() {
		return this.product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public Outstock getOutstock() {
		return this.outstock;
	}

	public void setOutstock(Outstock outstock) {
		this.outstock = outstock;
	}

	public Float getOutStockNum() {
		return this.outStockNum;
	}

	public void setOutStockNum(Float outStockNum) {
		this.outStockNum = outStockNum;
	}

}