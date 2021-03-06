/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package struts.action.storage;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import struts.action.Result;
import struts.action.ResultBasedAction;
import struts.action.StringResult;

import struts.form.AgainOrderAddForm;

import dbconnection.MysqlCon;
import orm.User;

/** 
 * MyEclipse Struts
 * Creation date: 02-08-2017
 * 
 * XDoclet definition:
 * @struts.action validate="true"
 */
public class AgainOrderAdd1Action extends ResultBasedAction {
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
	
	@Override
	public Result execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request) throws Exception {
		String msg="操作失败";
		Date time=new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String againorderdate=sdf.format(time);
		System.out.println(againorderdate);
		HttpSession session = request.getSession();
		User user=(User)session.getAttribute("user");
		Integer userid=user.getUserId();
		MysqlCon msq=new MysqlCon();
		msq.insert("insert into amc.againorder(userID,againOrderTime,againOrderState) values("+userid+",'"+againorderdate+"','未处理')");
		Connection conn=msq.connection();
		int againid=0;
		ResultSet rs=msq.query("select * from amc.againorder where againorder.againOrderTime='"+againorderdate+"'", conn);
		try {
			rs.beforeFirst();
			while(rs.next())
				againid=rs.getInt(1);
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		AgainOrderAddForm again=(AgainOrderAddForm)form;
		String[] products=again.getProductid();
		String[] demonds=again.getDemond();
		for(int i=0;i<products.length;i++){
			msq.insert("insert into amc.againorderdetail(againOrderID,productID,productQua) values("+againid+","+Integer.parseInt(products[i])+","+Float.parseFloat(demonds[i])+")");
			msq.update("update amc.product set product.state='正在补货' where product.productID="+Integer.parseInt(products[i]));
		}
		msg="操作成功";
		//msq.update("update amc.againorder set againorder.againOrderState='正在补货' where againorder.againOrderID="+againid);
		StringResult string=new StringResult(msg);
		return string;
	}
}