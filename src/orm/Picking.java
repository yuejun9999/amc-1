package orm;

import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;

/**
 * Picking entity. @author MyEclipse Persistence Tools
 */

public class Picking implements java.io.Serializable {

	// Fields

	private Integer pickingId;
	private User user;
	private Order order;
	private Timestamp pickingTime;
	private String pickingState;
	private Set pickingdetails = new HashSet(0);

	// Constructors

	/** default constructor */
	public Picking() {
	}

	/** full constructor */
	public Picking(User user, Order order, Timestamp pickingTime,
			String pickingState, Set pickingdetails) {
		this.user = user;
		this.order = order;
		this.pickingTime = pickingTime;
		this.pickingState = pickingState;
		this.pickingdetails = pickingdetails;
	}

	// Property accessors

	public Integer getPickingId() {
		return this.pickingId;
	}

	public void setPickingId(Integer pickingId) {
		this.pickingId = pickingId;
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

	public Timestamp getPickingTime() {
		return this.pickingTime;
	}

	public void setPickingTime(Timestamp pickingTime) {
		this.pickingTime = pickingTime;
	}

	public String getPickingState() {
		return this.pickingState;
	}

	public void setPickingState(String pickingState) {
		this.pickingState = pickingState;
	}

	public Set getPickingdetails() {
		return this.pickingdetails;
	}

	public void setPickingdetails(Set pickingdetails) {
		this.pickingdetails = pickingdetails;
	}

}