package orm;

import java.util.HashSet;
import java.util.Set;

/**
 * Product entity. @author MyEclipse Persistence Tools
 */

public class Product implements java.io.Serializable {

	// Fields

	private Integer productId;
	private Supplier supplier;
	private String productName;
	private String productSize;
	private Float salePrice;
	private Float amount;
	private Float safeNum;
	private Set standings = new HashSet(0);
	private Set pickingdetails = new HashSet(0);
	private Set outstockdetails = new HashSet(0);
	private Set againorderdetails = new HashSet(0);
	private Set orderdetails = new HashSet(0);
	private Set receivabledetails = new HashSet(0);
	private Set importpddetails = new HashSet(0);
	private Set payabledetails = new HashSet(0);

	// Constructors

	/** default constructor */
	public Product() {
	}

	/** full constructor */
	public Product(Supplier supplier, String productName, String productSize,
			Float salePrice, Float amount, Float safeNum, Set standings,
			Set pickingdetails, Set outstockdetails, Set againorderdetails,
			Set orderdetails, Set receivabledetails, Set importpddetails,
			Set payabledetails) {
		this.supplier = supplier;
		this.productName = productName;
		this.productSize = productSize;
		this.salePrice = salePrice;
		this.amount = amount;
		this.safeNum = safeNum;
		this.standings = standings;
		this.pickingdetails = pickingdetails;
		this.outstockdetails = outstockdetails;
		this.againorderdetails = againorderdetails;
		this.orderdetails = orderdetails;
		this.receivabledetails = receivabledetails;
		this.importpddetails = importpddetails;
		this.payabledetails = payabledetails;
	}

	// Property accessors

	public Integer getProductId() {
		return this.productId;
	}

	public void setProductId(Integer productId) {
		this.productId = productId;
	}

	public Supplier getSupplier() {
		return this.supplier;
	}

	public void setSupplier(Supplier supplier) {
		this.supplier = supplier;
	}

	public String getProductName() {
		return this.productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getProductSize() {
		return this.productSize;
	}

	public void setProductSize(String productSize) {
		this.productSize = productSize;
	}

	public Float getSalePrice() {
		return this.salePrice;
	}

	public void setSalePrice(Float salePrice) {
		this.salePrice = salePrice;
	}

	public Float getAmount() {
		return this.amount;
	}

	public void setAmount(Float amount) {
		this.amount = amount;
	}

	public Float getSafeNum() {
		return this.safeNum;
	}

	public void setSafeNum(Float safeNum) {
		this.safeNum = safeNum;
	}

	public Set getStandings() {
		return this.standings;
	}

	public void setStandings(Set standings) {
		this.standings = standings;
	}

	public Set getPickingdetails() {
		return this.pickingdetails;
	}

	public void setPickingdetails(Set pickingdetails) {
		this.pickingdetails = pickingdetails;
	}

	public Set getOutstockdetails() {
		return this.outstockdetails;
	}

	public void setOutstockdetails(Set outstockdetails) {
		this.outstockdetails = outstockdetails;
	}

	public Set getAgainorderdetails() {
		return this.againorderdetails;
	}

	public void setAgainorderdetails(Set againorderdetails) {
		this.againorderdetails = againorderdetails;
	}

	public Set getOrderdetails() {
		return this.orderdetails;
	}

	public void setOrderdetails(Set orderdetails) {
		this.orderdetails = orderdetails;
	}

	public Set getReceivabledetails() {
		return this.receivabledetails;
	}

	public void setReceivabledetails(Set receivabledetails) {
		this.receivabledetails = receivabledetails;
	}

	public Set getImportpddetails() {
		return this.importpddetails;
	}

	public void setImportpddetails(Set importpddetails) {
		this.importpddetails = importpddetails;
	}

	public Set getPayabledetails() {
		return this.payabledetails;
	}

	public void setPayabledetails(Set payabledetails) {
		this.payabledetails = payabledetails;
	}

}