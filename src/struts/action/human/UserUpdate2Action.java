/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package struts.action.human;

import java.io.UnsupportedEncodingException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;






import struts.action.Result;
import struts.action.ResultBasedAction;
import struts.action.StringResult;

import struts.form.UserUpdateForm;

import dbconnection.MysqlCon;

/** 
 * MyEclipse Struts
 * Creation date: 01-28-2017
 * 
 * XDoclet definition:
 * @struts.action validate="true"
 */
public class UserUpdate2Action extends ResultBasedAction {
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
	**/
	@Override
	public Result execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request) throws Exception {
		String msg="����ʧ�ܣ������ԣ�";
		String userid=request.getParameter("id");
		UserUpdateForm userupdtf=(UserUpdateForm)form;
		String username=userupdtf.getUsername();
		String staffname="";
		String department="";
		String title="";
		staffname= userupdtf.getStaffname();
		department=userupdtf.getDepartment();
		title=userupdtf.getStafftitle();
		MysqlCon msq=new MysqlCon();
		Connection conn=msq.connection();
		msq.update("update user set userName='"+username+"' where userID="+userid);
		ResultSet rs=msq.query("select staffID from user where userID="+userid,conn);
		String staffid="";
		try {
			staffid=rs.getInt(1)+"";
			conn.close();
			msg="SUCCESS";
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		msq.update("update staff set staffName='"+staffname+"',department='"+department+"', staffTitle='"+title+"' where staffID="+staffid);
		StringResult string=new StringResult(msg);
		return string;
	}
}