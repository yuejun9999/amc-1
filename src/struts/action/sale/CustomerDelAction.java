/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package struts.action.sale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import dbconnection.MysqlCon;

/** 
 * MyEclipse Struts
 * Creation date: 02-02-2017
 * 
 * XDoclet definition:
 * @struts.action validate="true"
 */
public class CustomerDelAction extends Action {
	/*
	 * Generated Methods
	 */

	/** 
	 * Method execute
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		String id=request.getParameter("id");
		MysqlCon msq=new MysqlCon();
		msq.delete("delete from amc.customer where customerID="+id);
		return mapping.findForward("clist");
	}
}