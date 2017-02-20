package orm;

import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;

/**
 * Order entity. @author MyEclipse Persistence Tools
 */

public class Order implements java.io.Serializable {

	// Fields

	private Integer orderId;
	private Customer customer;
	private User user;
	private Timestamp orderDate;
	private String receiveAddress;
	private String receiveMan;
	private String orderState;
	private Set orderdetails = new HashSet(0);
	private Set pickings = new HashSet(0);
	private Set outstocks = new HashSet(0);

	// Constructors

	/** default constructor */
	public Order() {
	}

	/** full constructor */
	public Order(Customer customer, User user, Timestamp orderDate,
			String receiveAddress, String receiveMan, String orderState,
			Set orderdetails, Set pickings, Set outstocks) {
		this.customer = customer;
		this.user = user;
		this.orderDate = orderDate;
		this.receiveAddress = receiveAddress;
		this.receiveMan = receiveMan;
		this.orderState = orderState;
		this.orderdetails = orderdetails;
		this.pickings = pickings;
		this.outstocks = outstocks;
	}

	// Property accessors

	public Integer getOrderId() {
		return this.orderId;
	}

	public void setOrderId(Integer orderId) {
		this.orderId = orderId;
	}

	public Customer getCustomer() {
		return this.customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Timestamp getOrderDate() {
		return this.orderDate;
	}

	public void setOrderDate(Timestamp orderDate) {
		this.orderDate = orderDate;
	}

	public String getReceiveAddress() {
		return this.receiveAddress;
	}

	public void setReceiveAddress(String receiveAddress) {
		this.receiveAddress = receiveAddress;
	}

	public String getReceiveMan() {
		return this.receiveMan;
	}

	public void setReceiveMan(String receiveMan) {
		this.receiveMan = receiveMan;
	}

	public String getOrderState() {
		return this.orderState;
	}

	public void setOrderState(String orderState) {
		this.orderState = orderState;
	}

	public Set getOrderdetails() {
		return this.orderdetails;
	}

	public void setOrderdetails(Set orderdetails) {
		this.orderdetails = orderdetails;
	}

	public Set getPickings() {
		return this.pickings;
	}

	public void setPickings(Set pickings) {
		this.pickings = pickings;
	}

	public Set getOutstocks() {
		return this.outstocks;
	}

	public void setOutstocks(Set outstocks) {
		this.outstocks = outstocks;
	}

}