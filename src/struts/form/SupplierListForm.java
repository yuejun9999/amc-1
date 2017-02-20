package struts.form;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;

/** 
 * MyEclipse Struts
 * Creation date: 01-25-2017
 * 
 * XDoclet definition:
 * @struts.form name="supplierListForm"
 */

public class SupplierListForm {
	private String number;
	private String supplierid;
	private String suppliername;
	private String suppliercode;
	private String suppliermaster;
	private String supplieraddress;
	private String suppliertel;
	private String supplieremail;
	private String productrange;
	public String getSupplierid() {
		return supplierid;
	}
	public void setSupplierid(String supplierid) {
		this.supplierid = supplierid;
	}
	public String getSuppliername() {
		return suppliername;
	}
	public void setSuppliername(String suppliername) {
		this.suppliername = suppliername;
	}
	public String getSuppliercode() {
		return suppliercode;
	}
	public void setSuppliercode(String suppliercode) {
		this.suppliercode = suppliercode;
	}
	public String getSuppliermaster() {
		return suppliermaster;
	}
	public void setSuppliermaster(String suppliermaster) {
		this.suppliermaster = suppliermaster;
	}
	public String getProductrange() {
		return productrange;
	}
	public void setProductrange(String productrange) {
		this.productrange = productrange;
	}

	
	public String getSupplieraddress() {
		return supplieraddress;
	}
	public void setSupplieraddress(String supplieraddress) {
		this.supplieraddress = supplieraddress;
	}
	public String getSuppliertel() {
		return suppliertel;
	}
	public void setSuppliertel(String suppliertel) {
		this.suppliertel = suppliertel;
	}
	public String getSupplieremail() {
		return supplieremail;
	}
	public void setSupplieremail(String supplieremail) {
		this.supplieremail = supplieremail;
	}
	
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
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
