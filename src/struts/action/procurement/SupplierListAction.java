package struts.action.procurement;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import dbconnection.MysqlCon;
import entity.Supplier;


public class SupplierListAction extends Action {
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		
		
		List<Supplier> supplierlist=new ArrayList<Supplier>();
		int ids=0;
		ResultSet rs=null;
		try {
			MysqlCon msq=new MysqlCon();
			Connection conn=msq.connection();
			rs=msq.query("select supplier.supplierID,supplier.supplierName,supplier.supplierCode,supplier.supplierMaster,supplier.productRange,supplier.address,supplier.supplierTel,supplier.email from amc.supplier",conn);
			rs.beforeFirst();
			while(rs.next()){
				Supplier supplier=new Supplier();
				supplier.setNumber(++ids+"");
				supplier.setSupplierid(rs.getString(1));
				supplier.setSuppliername(rs.getString(2));
				supplier.setSuppliercode(rs.getString(3));
				supplier.setSuppliermaster(rs.getString(4));
				supplier.setProductrange(rs.getString(5));
				supplier.setSupplieraddress(rs.getString(6));
				supplier.setSuppliertel(rs.getString(7));
				supplier.setSupplieremail(rs.getString(8));
				supplierlist.add(supplier);	
			}
			request.setAttribute("supplierlist", supplierlist);
			conn.close();
			return mapping.findForward("supplierlist");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

}
