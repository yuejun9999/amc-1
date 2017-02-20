package orm;

/**
 * Payabledetail entity. @author MyEclipse Persistence Tools
 */

public class Payabledetail implements java.io.Serializable {

	// Fields

	private Integer payableDetailId;
	private int payableID;
	private int productID;
	private Float salePrice;
	private String productName;
	private Float importNum;
	private Float totalAccount;

	// Constructors

	/** default constructor */
	public Payabledetail() {
	}

	/** full constructor */
	public Payabledetail(int payable, int product, Float salePrice,
			String productName, Float importNum, Float totalAccount) {
		this.setPayableID(payable);
		this.setProductID(product);
		this.salePrice = salePrice;
		this.productName = productName;
		this.importNum = importNum;
		this.totalAccount = totalAccount;
	}

	// Property accessors

	public Integer getPayableDetailId() {
		return this.payableDetailId;
	}

	public void setPayableDetailId(Integer payableDetailId) {
		this.payableDetailId = payableDetailId;
	}
	
	public Float getSalePrice() {
		return this.salePrice;
	}

	public void setSalePrice(Float salePrice) {
		this.salePrice = salePrice;
	}

	public String getProductName() {
		return this.productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public Float getImportNum() {
		return this.importNum;
	}

	public void setImportNum(Float importNum) {
		this.importNum = importNum;
	}

	public Float getTotalAccount() {
		return this.totalAccount;
	}

	public void setTotalAccount(Float totalAccount) {
		this.totalAccount = totalAccount;
	}

	public int getPayableID() {
		return payableID;
	}

	public void setPayableID(int payableID) {
		this.payableID = payableID;
	}

	public int getProductID() {
		return productID;
	}

	public void setProductID(int productID) {
		this.productID = productID;
	}

}