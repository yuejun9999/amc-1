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
 * Creation date: 02-16-2017
 * 
 * XDoclet definition:
 * @struts.form name="changePasswordForm"
 */
public class ChangePasswordForm extends ActionForm {
	/*
	 * Generated fields
	 */

		
	private int userID;
	/** confirmNewPassword property */
	private String confirmNewPassword;

	/** newPassword property */
	private String newPassword;

	/** oldPassword property */
	private String oldPassword;

	/*
	 * Generated Methods
	 */

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

	/** 
	 * Returns the confirmNewPassword.
	 * @return String
	 */
	public String getConfirmNewPassword() {
		return confirmNewPassword;
	}

	/** 
	 * Set the confirmNewPassword.
	 * @param confirmNewPassword The confirmNewPassword to set
	 */
	public void setConfirmNewPassword(String confirmNewPassword) {
		this.confirmNewPassword = confirmNewPassword;
	}

	/** 
	 * Returns the newPassword.
	 * @return String
	 */
	public String getNewPassword() {
		return newPassword;
	}

	/** 
	 * Set the newPassword.
	 * @param newPassword The newPassword to set
	 */
	public void setNewPassword(String newPassword) {
		this.newPassword = newPassword;
	}

	/** 
	 * Returns the oldPassword.
	 * @return String
	 */
	public String getOldPassword() {
		return oldPassword;
	}

	/** 
	 * Set the oldPassword.
	 * @param oldPassword The oldPassword to set
	 */
	public void setOldPassword(String oldPassword) {
		this.oldPassword = oldPassword;
	}

	public int getUserID() {
		return userID;
	}

	public void setUserID(int userID) {
		this.userID = userID;
	}
}