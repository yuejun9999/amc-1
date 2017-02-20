package orm;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Parcels entity. @author MyEclipse Persistence Tools
 */

public class Parcels implements java.io.Serializable {

	// Fields

	private Integer parcelsId;
	private User user;
	private Integer pickingId;
	private Date parcelsDate;
	private Set receivables = new HashSet(0);

	// Constructors

	/** default constructor */
	public Parcels() {
	}

	/** full constructor */
	public Parcels(User user, Integer pickingId, Date parcelsDate,
			Set receivables) {
		this.user = user;
		this.pickingId = pickingId;
		this.parcelsDate = parcelsDate;
		this.receivables = receivables;
	}

	// Property accessors

	public Integer getParcelsId() {
		return this.parcelsId;
	}

	public void setParcelsId(Integer parcelsId) {
		this.parcelsId = parcelsId;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Integer getPickingId() {
		return this.pickingId;
	}

	public void setPickingId(Integer pickingId) {
		this.pickingId = pickingId;
	}

	public Date getParcelsDate() {
		return this.parcelsDate;
	}

	public void setParcelsDate(Date parcelsDate) {
		this.parcelsDate = parcelsDate;
	}

	public Set getReceivables() {
		return this.receivables;
	}

	public void setReceivables(Set receivables) {
		this.receivables = receivables;
	}

}