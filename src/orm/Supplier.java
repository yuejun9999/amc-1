package orm;

import java.util.HashSet;
import java.util.Set;

/**
 * Supplier entity. @author MyEclipse Persistence Tools
 */

public class Supplier implements java.io.Serializable {

	// Fields

	private Integer supplierId;
	private String supplierCode;
	private String supplierName;
	private String supplierMaster;
	private String address;
	private String supplierTel;
	private String email;
	private String productRange;
	private Set products = new HashSet(0);

	// Constructors

	/** default constructor */
	public Supplier() {
	}

	/** full constructor */
	public Supplier(String supplierCode, String supplierName,
			String supplierMaster, String address, String supplierTel,
			String email, String productRange, Set products) {
		this.supplierCode = supplierCode;
		this.supplierName = supplierName;
		this.supplierMaster = supplierMaster;
		this.address = address;
		this.supplierTel = supplierTel;
		this.email = email;
		this.productRange = productRange;
		this.products = products;
	}

	// Property accessors

	public Integer getSupplierId() {
		return this.supplierId;
	}

	public void setSupplierId(Integer supplierId) {
		this.supplierId = supplierId;
	}

	public String getSupplierCode() {
		return this.supplierCode;
	}

	public void setSupplierCode(String supplierCode) {
		this.supplierCode = supplierCode;
	}

	public String getSupplierName() {
		return this.supplierName;
	}

	public void setSupplierName(String supplierName) {
		this.supplierName = supplierName;
	}

	public String getSupplierMaster() {
		return this.supplierMaster;
	}

	public void setSupplierMaster(String supplierMaster) {
		this.supplierMaster = supplierMaster;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getSupplierTel() {
		return this.supplierTel;
	}

	public void setSupplierTel(String supplierTel) {
		this.supplierTel = supplierTel;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getProductRange() {
		return this.productRange;
	}

	public void setProductRange(String productRange) {
		this.productRange = productRange;
	}

	public Set getProducts() {
		return this.products;
	}

	public void setProducts(Set products) {
		this.products = products;
	}

}