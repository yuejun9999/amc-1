/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package struts.form;

import javax.servlet.http.HttpServletRequest;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;

/** 
 * MyEclipse Struts
 * Creation date: 01-30-2017
 * 
 * XDoclet definition:
 * @struts.form name="orderAddForm"
 */
public class OrderAddForm extends ActionForm {
	private String select_cus;
	private String address;
	private String person;
	private String[] ifchecked;
	private String[] demond;

	public String getSelect_cus() {
		return select_cus;
	}

	public void setSelect_cus(String select_cus) {
		this.select_cus = select_cus;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPerson() {
		return person;
	}

	public void setPerson(String person) {
		this.person = person;
	}

	public String[] getIfchecked() {
		return ifchecked;
	}

	public void setIfchecked(String[] ifchecked) {
		this.ifchecked = ifchecked;
	}

	public String[] getDemond() {
		return demond;
	}

	public void setDemond(String[] demond) {
		this.demond = demond;
	}

	/** 
	 * Method validate
	 * @param mapping
	 * @param request
	 * @return ActionErrors
	 */
	public ActionErrors validate(ActionMapping mapping,
			HttpServletRequest request) {
		// TODO Auto-generated method stub
		return null;
	}

	/** 
	 * Method reset
	 * @param mapping
	 * @param request
	 */
	public void reset(ActionMapping mapping, HttpServletRequest request) {
		// TODO Auto-generated method stub
	}
}