package orm;

import java.sql.Timestamp;

/**
 * Purchaseaccount entity. @author MyEclipse Persistence Tools
 */

public class Purchaseaccount implements java.io.Serializable {

	// Fields

	private Integer purchaseAccountId;
	private int payableID;
	private String staffName;
	private String addTime;
	private Float totalAccount;

	// Constructors

	/** default constructor */
	public Purchaseaccount() {
	}

	/** full constructor */
	public Purchaseaccount(int payable, String user, String addTime,
			Float totalAccount) {
		this.setPayableID(payable);
		this.setStaffName(user);
		this.addTime = addTime;
		this.totalAccount = totalAccount;
	}

	// Property accessors

	public Integer getPurchaseAccountId() {
		return this.purchaseAccountId;
	}

	public void setPurchaseAccountId(Integer purchaseAccountId) {
		this.purchaseAccountId = purchaseAccountId;
	}

	public String getAddTime() {
		return this.addTime;
	}

	public void setAddTime(String addTime) {
		this.addTime = addTime;
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

	public String getStaffName() {
		return staffName;
	}

	public void setStaffName(String staffName) {
		this.staffName = staffName;
	}

}