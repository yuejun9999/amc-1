package orm;

import java.sql.Timestamp;

/**
 * Standing entity. @author MyEclipse Persistence Tools
 */

public class Standing implements java.io.Serializable {

	// Fields

	private Integer standingId;
	private Product product;
	private User user;
	private Boolean importOrExport;
	private Float standingQua;
	private Timestamp standingTime;
	private String summary;

	// Constructors

	/** default constructor */
	public Standing() {
	}

	/** full constructor */
	public Standing(Product product, User user, Boolean importOrExport,
			Float standingQua, Timestamp standingTime, String summary) {
		this.product = product;
		this.user = user;
		this.importOrExport = importOrExport;
		this.standingQua = standingQua;
		this.standingTime = standingTime;
		this.summary = summary;
	}

	// Property accessors

	public Integer getStandingId() {
		return this.standingId;
	}

	public void setStandingId(Integer standingId) {
		this.standingId = standingId;
	}

	public Product getProduct() {
		return this.product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Boolean getImportOrExport() {
		return this.importOrExport;
	}

	public void setImportOrExport(Boolean importOrExport) {
		this.importOrExport = importOrExport;
	}

	public Float getStandingQua() {
		return this.standingQua;
	}

	public void setStandingQua(Float standingQua) {
		this.standingQua = standingQua;
	}

	public Timestamp getStandingTime() {
		return this.standingTime;
	}

	public void setStandingTime(Timestamp standingTime) {
		this.standingTime = standingTime;
	}

	public String getSummary() {
		return this.summary;
	}

	public void setSummary(String summary) {
		this.summary = summary;
	}

}