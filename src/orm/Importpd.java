package orm;

import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;

/**
 * Importpd entity. @author MyEclipse Persistence Tools
 */

public class Importpd implements java.io.Serializable {

	// Fields

	private Integer importPdId;
	private User user;
	private Timestamp addTime;
	private String state;
	private Set payables = new HashSet(0);
	private Set importpddetails = new HashSet(0);

	// Constructors

	/** default constructor */
	public Importpd() {
	}

	/** full constructor */
	public Importpd(User user, Timestamp addTime, String state, Set payables,
			Set importpddetails) {
		this.user = user;
		this.addTime = addTime;
		this.state = state;
		this.payables = payables;
		this.importpddetails = importpddetails;
	}

	// Property accessors

	public Integer getImportPdId() {
		return this.importPdId;
	}

	public void setImportPdId(Integer importPdId) {
		this.importPdId = importPdId;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Timestamp getAddTime() {
		return this.addTime;
	}

	public void setAddTime(Timestamp addTime) {
		this.addTime = addTime;
	}

	public String getState() {
		return this.state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public Set getPayables() {
		return this.payables;
	}

	public void setPayables(Set payables) {
		this.payables = payables;
	}

	public Set getImportpddetails() {
		return this.importpddetails;
	}

	public void setImportpddetails(Set importpddetails) {
		this.importpddetails = importpddetails;
	}

}