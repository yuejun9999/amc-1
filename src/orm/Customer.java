package orm;

import java.util.HashSet;
import java.util.Set;

/**
 * Customer entity. @author MyEclipse Persistence Tools
 */

public class Customer implements java.io.Serializable {

	// Fields

	private Integer customerId;
	private String customerName;
	private String address;
	private String telephone;
	private String email;
	private Boolean creditRank;
	private Set orders = new HashSet(0);

	// Constructors

	/** default constructor */
	public Customer() {
	}

	/** full constructor */
	public Customer(String customerName, String address, String telephone,
			String email, Boolean creditRank, Set orders) {
		this.customerName = customerName;
		this.address = address;
		this.telephone = telephone;
		this.email = email;
		this.creditRank = creditRank;
		this.orders = orders;
	}

	// Property accessors

	public Integer getCustomerId() {
		return this.customerId;
	}

	public void setCustomerId(Integer customerId) {
		this.customerId = customerId;
	}

	public String getCustomerName() {
		return this.customerName;
	}

	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getTelephone() {
		return this.telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Boolean getCreditRank() {
		return this.creditRank;
	}

	public void setCreditRank(Boolean creditRank) {
		this.creditRank = creditRank;
	}

	public Set getOrders() {
		return this.orders;
	}

	public void setOrders(Set orders) {
		this.orders = orders;
	}

}