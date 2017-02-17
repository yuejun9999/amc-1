package orm;

import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;

/**
 * Outstock entity. @author MyEclipse Persistence Tools
 */

public class Outstock implements java.io.Serializable {

	// Fields

	private Integer outstockId;
	private User user;
	private Order order;
	private Timestamp outStockTime;
	private String outStockState;
	private Set outstockdetails = new HashSet(0);

	// Constructors

	/** default constructor */
	public Outstock() {
	}

	/** full constructor */
	public Outstock(User user, Order order, Timestamp outStockTime,
			String outStockState, Set outstockdetails) {
		this.user = user;
		this.order = order;
		this.outStockTime = outStockTime;
		this.outStockState = outStockState;
		this.outstockdetails = outstockdetails;
	}

	// Property accessors

	public Integer getOutstockId() {
		return this.outstockId;
	}

	public void setOutstockId(Integer outstockId) {
		this.outstockId = outstockId;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Order getOrder() {
		return this.order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}

	public Timestamp getOutStockTime() {
		return this.outStockTime;
	}

	public void setOutStockTime(Timestamp outStockTime) {
		this.outStockTime = outStockTime;
	}

	public String getOutStockState() {
		return this.outStockState;
	}

	public void setOutStockState(String outStockState) {
		this.outStockState = outStockState;
	}

	public Set getOutstockdetails() {
		return this.outstockdetails;
	}

	public void setOutstockdetails(Set outstockdetails) {
		this.outstockdetails = outstockdetails;
	}

}