package orm;

import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;

/**
 * Againorder entity. @author MyEclipse Persistence Tools
 */

public class Againorder implements java.io.Serializable {

	// Fields

	private Integer againOrderId;
	private User user;
	private Timestamp againOrderTime;
	private String againOrderState;
	private Set againorderdetails = new HashSet(0);

	// Constructors

	/** default constructor */
	public Againorder() {
	}

	/** full constructor */
	public Againorder(User user, Timestamp againOrderTime,
			String againOrderState, Set againorderdetails) {
		this.user = user;
		this.againOrderTime = againOrderTime;
		this.againOrderState = againOrderState;
		this.againorderdetails = againorderdetails;
	}

	// Property accessors

	public Integer getAgainOrderId() {
		return this.againOrderId;
	}

	public void setAgainOrderId(Integer againOrderId) {
		this.againOrderId = againOrderId;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Timestamp getAgainOrderTime() {
		return this.againOrderTime;
	}

	public void setAgainOrderTime(Timestamp againOrderTime) {
		this.againOrderTime = againOrderTime;
	}

	public String getAgainOrderState() {
		return this.againOrderState;
	}

	public void setAgainOrderState(String againOrderState) {
		this.againOrderState = againOrderState;
	}

	public Set getAgainorderdetails() {
		return this.againorderdetails;
	}

	public void setAgainorderdetails(Set againorderdetails) {
		this.againorderdetails = againorderdetails;
	}

}