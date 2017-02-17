package orm;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Staff entity. @author MyEclipse Persistence Tools
 */

public class Staff implements java.io.Serializable {

	// Fields

	private Integer staffId;
	private String staffName;
	private Boolean gender;
	private Integer age;
	private Date startWorkYear;
	private String department;
	private String staffTitle;
	private String staffTel;
	private Set users = new HashSet(0);

	// Constructors

	/** default constructor */
	public Staff() {
	}

	/** full constructor */
	public Staff(String staffName, Boolean gender, Integer age,
			Date startWorkYear, String department, String staffTitle,
			String staffTel, Set users) {
		this.staffName = staffName;
		this.gender = gender;
		this.age = age;
		this.startWorkYear = startWorkYear;
		this.department = department;
		this.staffTitle = staffTitle;
		this.staffTel = staffTel;
		this.users = users;
	}

	// Property accessors

	public Integer getStaffId() {
		return this.staffId;
	}

	public void setStaffId(Integer staffId) {
		this.staffId = staffId;
	}

	public String getStaffName() {
		return this.staffName;
	}

	public void setStaffName(String staffName) {
		this.staffName = staffName;
	}

	public Boolean getGender() {
		return this.gender;
	}

	public void setGender(Boolean gender) {
		this.gender = gender;
	}

	public Integer getAge() {
		return this.age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	public Date getStartWorkYear() {
		return this.startWorkYear;
	}

	public void setStartWorkYear(Date startWorkYear) {
		this.startWorkYear = startWorkYear;
	}

	public String getDepartment() {
		return this.department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public String getStaffTitle() {
		return this.staffTitle;
	}

	public void setStaffTitle(String staffTitle) {
		this.staffTitle = staffTitle;
	}

	public String getStaffTel() {
		return this.staffTel;
	}

	public void setStaffTel(String staffTel) {
		this.staffTel = staffTel;
	}

	public Set getUsers() {
		return this.users;
	}

	public void setUsers(Set users) {
		this.users = users;
	}

}