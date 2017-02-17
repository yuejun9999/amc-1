package orm;

import java.util.HashSet;
import java.util.Set;

/**
 * User entity. @author MyEclipse Persistence Tools
 */

public class User implements java.io.Serializable {

	// Fields

	private Integer userId;
	private Staff staff;
	private String userName;
	private String password;
	private Set purchaseaccounts = new HashSet(0);
	private Set standings = new HashSet(0);
	private Set saleaccounts = new HashSet(0);
	private Set againorders = new HashSet(0);
	private Set parcelses = new HashSet(0);
	private Set importpds = new HashSet(0);
	private Set outstocks = new HashSet(0);
	private Set receivables = new HashSet(0);
	private Set orders = new HashSet(0);
	private Set pickings = new HashSet(0);
	private Set payables = new HashSet(0);

	// Constructors

	/** default constructor */
	public User() {
	}

	/** full constructor */
	public User(Staff staff, String userName, String password,
			Set purchaseaccounts, Set standings, Set saleaccounts,
			Set againorders, Set parcelses, Set importpds, Set outstocks,
			Set receivables, Set orders, Set pickings, Set payables) {
		this.staff = staff;
		this.userName = userName;
		this.password = password;
		this.purchaseaccounts = purchaseaccounts;
		this.standings = standings;
		this.saleaccounts = saleaccounts;
		this.againorders = againorders;
		this.parcelses = parcelses;
		this.importpds = importpds;
		this.outstocks = outstocks;
		this.receivables = receivables;
		this.orders = orders;
		this.pickings = pickings;
		this.payables = payables;
	}

	// Property accessors

	public Integer getUserId() {
		return this.userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public Staff getStaff() {
		return this.staff;
	}

	public void setStaff(Staff staff) {
		this.staff = staff;
	}

	public String getUserName() {
		return this.userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Set getPurchaseaccounts() {
		return this.purchaseaccounts;
	}

	public void setPurchaseaccounts(Set purchaseaccounts) {
		this.purchaseaccounts = purchaseaccounts;
	}

	public Set getStandings() {
		return this.standings;
	}

	public void setStandings(Set standings) {
		this.standings = standings;
	}

	public Set getSaleaccounts() {
		return this.saleaccounts;
	}

	public void setSaleaccounts(Set saleaccounts) {
		this.saleaccounts = saleaccounts;
	}

	public Set getAgainorders() {
		return this.againorders;
	}

	public void setAgainorders(Set againorders) {
		this.againorders = againorders;
	}

	public Set getParcelses() {
		return this.parcelses;
	}

	public void setParcelses(Set parcelses) {
		this.parcelses = parcelses;
	}

	public Set getImportpds() {
		return this.importpds;
	}

	public void setImportpds(Set importpds) {
		this.importpds = importpds;
	}

	public Set getOutstocks() {
		return this.outstocks;
	}

	public void setOutstocks(Set outstocks) {
		this.outstocks = outstocks;
	}

	public Set getReceivables() {
		return this.receivables;
	}

	public void setReceivables(Set receivables) {
		this.receivables = receivables;
	}

	public Set getOrders() {
		return this.orders;
	}

	public void setOrders(Set orders) {
		this.orders = orders;
	}

	public Set getPickings() {
		return this.pickings;
	}

	public void setPickings(Set pickings) {
		this.pickings = pickings;
	}

	public Set getPayables() {
		return this.payables;
	}

	public void setPayables(Set payables) {
		this.payables = payables;
	}

}