package orm;

import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;

/**
 * Receivable entity. @author MyEclipse Persistence Tools
 */

public class Receivable implements java.io.Serializable {

	// Fields

	private Integer receivableId;
	private User user;
	private Parcels parcels;
	private Timestamp drawBillDate;
	private String payState;
	private Float totalAccount;
	private Set receivabledetails = new HashSet(0);
	private Set saleaccounts = new HashSet(0);

	// Constructors

	/** default constructor */
	public Receivable() {
	}

	/** full constructor */
	public Receivable(User user, Parcels parcels, Timestamp drawBillDate,
			String payState, Float totalAccount, Set receivabledetails,
			Set saleaccounts) {
		this.user = user;
		this.parcels = parcels;
		this.drawBillDate = drawBillDate;
		this.payState = payState;
		this.totalAccount = totalAccount;
		this.receivabledetails = receivabledetails;
		this.saleaccounts = saleaccounts;
	}

	// Property accessors

	public Integer getReceivableId() {
		return this.receivableId;
	}

	public void setReceivableId(Integer receivableId) {
		this.receivableId = receivableId;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Parcels getParcels() {
		return this.parcels;
	}

	public void setParcels(Parcels parcels) {
		this.parcels = parcels;
	}

	public Timestamp getDrawBillDate() {
		return this.drawBillDate;
	}

	public void setDrawBillDate(Timestamp drawBillDate) {
		this.drawBillDate = drawBillDate;
	}

	public String getPayState() {
		return this.payState;
	}

	public void setPayState(String payState) {
		this.payState = payState;
	}

	public Float getTotalAccount() {
		return this.totalAccount;
	}

	public void setTotalAccount(Float totalAccount) {
		this.totalAccount = totalAccount;
	}

	public Set getReceivabledetails() {
		return this.receivabledetails;
	}

	public void setReceivabledetails(Set receivabledetails) {
		this.receivabledetails = receivabledetails;
	}

	public Set getSaleaccounts() {
		return this.saleaccounts;
	}

	public void setSaleaccounts(Set saleaccounts) {
		this.saleaccounts = saleaccounts;
	}

}