/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package struts.action.procurement;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import dbconnection.MysqlCon;


/** 
 * MyEclipse Struts
 * Creation date: 02-07-2017
 * 
 * XDoclet definition:
 * @struts.action validate="true"
 */
public class SupplierDeleteAction extends Action {
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
		// TODO Auto-generated method stub
		
		String id=request.getParameter("id");
		MysqlCon msq=new MysqlCon();
		msq.delete("delete from supplier where supplierID="+id);
	
		return mapping.findForward("slist");
	}
	
}