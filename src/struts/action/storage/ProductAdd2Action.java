/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package struts.action.storage;

import java.io.UnsupportedEncodingException;
import java.sql.Connection;
import java.sql.ResultSet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import struts.action.Result;
import struts.action.ResultBasedAction;
import struts.action.StringResult;




import struts.form.ProductUpdateForm;

import dbconnection.MysqlCon;

/** 
 * MyEclipse Struts
 * Creation date: 02-07-2017
 * 
 * XDoclet definition:
 * @struts.action validate="true"
 */
public class ProductAdd2Action extends ResultBasedAction {
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
		 String msg="操作错误";
		String productname="";
		String productsize="";
		Float saleprice;
		Float amount;
		int supplier=0;
		Float safenum;
		ProductUpdateForm productupdate=(ProductUpdateForm)form;
		productname=productupdate.getProductname();
		productsize=productupdate.getProductsize();
		saleprice=Float.parseFloat(productupdate.getSaleprice());
		amount=Float.parseFloat(productupdate.getAmount());
		supplier=Integer.parseInt(productupdate.getSelect_supplier());
		safenum=Float.parseFloat(productupdate.getSafenum());
		MysqlCon msq=new MysqlCon();
		Connection conn=msq.connection();
		ResultSet rs=msq.query("select * from amc.product where productName='"+productname+"'", conn);
		//rs.beforeFirst();
		if(rs!=null){
			msg="已有记录,操作失败";
			StringResult string=new StringResult(msg);
			conn.close();
			return string;
		}
		else{
		//System.out.println("update amc.product set productName='"+productname+"',productSize='"+productsize+"',salePrice="+saleprice+",amount="+amount+",supplierID="+supplier+",safeNum="+safenum+" where productID="+id);
		msq.insert("insert into amc.product(productName,productSize,salePrice,amount,supplierID,safeNum) values('"+productname+"','"+productsize+"',"+saleprice+","+amount+","+supplier+","+safenum+")");
		msg="操作成功";
		StringResult string=new StringResult(msg);
		return string;
		}
	}
}