package orm;

/**
 * Receivabledetail entity. @author MyEclipse Persistence Tools
 */

public class Receivabledetail implements java.io.Serializable {

	// Fields
	private int count;
	private Integer receivableDetailId;
	private Receivable receivable;
	private int productID;
	private String productName;
	private Float salePrice;
	private Float saleAmount;
	private Float totalAccount;

	// Constructors

	/** default constructor */
	public Receivabledetail() {
	}

	/** full constructor */
	public Receivabledetail(Receivable receivable, int productID,
			String productName, Float salePrice, Float saleAmount,
			Float totalAccount) {
		this.receivable = receivable;
		this.productID = productID;
		this.productName = productName;
		this.salePrice = salePrice;
		this.saleAmount = saleAmount;
		this.totalAccount = totalAccount;
	}

	// Property accessors

	public Integer getReceivableDetailId() {
		return this.receivableDetailId;
	}

	public void setReceivableDetailId(Integer receivableDetailId) {
		this.receivableDetailId = receivableDetailId;
	}

	public Receivable getReceivable() {
		return this.receivable;
	}

	public void setReceivable(Receivable receivable) {
		this.receivable = receivable;
	}

	public int getProductID() {
		return this.productID;
	}

	public void setProductID(int productID) {
		this.productID = productID;
	}

	public String getProductName() {
		return this.productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public Float getSalePrice() {
		return this.salePrice;
	}

	public void setSalePrice(Float salePrice) {
		this.salePrice = salePrice;
	}

	public Float getSaleAmount() {
		return this.saleAmount;
	}

	public void setSaleAmount(Float saleAmount) {
		this.saleAmount = saleAmount;
	}

	public Float getTotalAccount() {
		return this.totalAccount;
	}

	public void setTotalAccount(Float totalAccount) {
		this.totalAccount = totalAccount;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

}