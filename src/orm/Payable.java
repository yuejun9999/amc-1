package orm;

import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;

/**
 * Payable entity. @author MyEclipse Persistence Tools
 */

public class Payable implements java.io.Serializable {

	// Fields

	private int payableId;
	private int importpdId;
	private int userId;
	private String userName;
	private float totalAccount;
	private String invoiceRange;
	private String addTime;
	private String payState;
	private Set payabledetails = new HashSet(0);
	private Set purchaseaccounts = new HashSet(0);
	private int counter;

	// Constructors

	/** default constructor */
	public Payable() {
	}

	/** full constructor */
	public Payable(int importpdId, int userId, Float totalAccount,
			String invoiceRange, String addTime, String payState,
			Set payabledetails, Set purchaseaccounts) {
		this.importpdId = importpdId;
		this.userId = userId;
		this.totalAccount = totalAccount;
		this.invoiceRange = invoiceRange;
		this.addTime = addTime;
		this.payState = payState;
		this.payabledetails = payabledetails;
		this.purchaseaccounts = purchaseaccounts;
	}

	// Property accessors

	public Integer getPayableId() {
		return this.payableId;
	}

	public void setPayableId(Integer payableId) {
		this.payableId = payableId;
	}

	public int getImportpdId() {
		return this.importpdId;
	}

	public void setImportpdId(int importpd) {
		this.importpdId = importpd;
	}

	public int getUserId() {
		return this.userId;
	}

	public void setUserId(int user) {
		this.userId = user;
	}

	public Float getTotalAccount() {
		return this.totalAccount;
	}

	public void setTotalAccount(Float totalAccount) {
		this.totalAccount = totalAccount;
	}

	public String getInvoiceRange() {
		return this.invoiceRange;
	}

	public void setInvoiceRange(String invoiceRange) {
		this.invoiceRange = invoiceRange;
	}

	public String getAddTime() {
		return this.addTime;
	}

	public void setAddTime(String addTime) {
		this.addTime = addTime;
	}

	public String getPayState() {
		return this.payState;
	}

	public void setPayState(String payState) {
		this.payState = payState;
	}

	public Set getPayabledetails() {
		return this.payabledetails;
	}

	public void setPayabledetails(Set payabledetails) {
		this.payabledetails = payabledetails;
	}

	public Set getPurchaseaccounts() {
		return this.purchaseaccounts;
	}

	public void setPurchaseaccounts(Set purchaseaccounts) {
		this.purchaseaccounts = purchaseaccounts;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public int getCounter() {
		return counter;
	}

	public void setCounter(int counter) {
		this.counter = counter;
	}

}