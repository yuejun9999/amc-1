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
 * Creation date: 02-05-2017
 * 
 * XDoclet definition:
 * @struts.form name="againorderDetailForm"
 */
public class AgainorderDetailForm extends ActionForm {
	
	private String number;
	private String againorderdetailid;
	private String againorderid;
	private String productid;
	private String productname;
	private String productqua;
	
	
	/*
	 * Generated Methods
	 */

	public String getNumber() {
		return number;
	}

	public String getAgainorderid() {
		return againorderid;
	}

	public void setAgainorderid(String againorderid) {
		this.againorderid = againorderid;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	public String getAgainorderdetailid() {
		return againorderdetailid;
	}

	public void setAgainorderdetailid(String againorderdetailid) {
		this.againorderdetailid = againorderdetailid;
	}

	public String getProductid() {
		return productid;
	}

	public void setProductid(String productid) {
		this.productid = productid;
	}

	public String getProductname() {
		return productname;
	}

	public void setProductname(String productname) {
		this.productname = productname;
	}

	public String getProductqua() {
		return productqua;
	}

	public void setProductqua(String productqua) {
		this.productqua = productqua;
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