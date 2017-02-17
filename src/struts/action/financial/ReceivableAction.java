package struts.action.financial;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;

import dbconnection.MysqlCon;
import orm.Receivable;
import orm.User;
import struts.action.JsonResult;
import struts.action.Result;
import struts.action.ResultBasedAction;
import net.sf.json.JSON;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class ReceivableAction extends ResultBasedAction {

	@Override
	public Result execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request) throws Exception {
		// TODO Auto-generated method stub
		MysqlCon mysqlCon = new MysqlCon();
		Connection c = mysqlCon.connection();
		ResultSet rs = mysqlCon.query("select * from receivable", c);
//		JSONArray json = JSONArray.fromObject(resultList);
		List data = new ArrayList();
		if (rs!=null){
			do{
				Map map = new HashMap();
				map.put("receivableID", rs.getInt(1));
				SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd"); 
		
				map.put("drawBillDate",formatter.format(rs.getTimestamp(3)));
				map.put("parcelID", rs.getInt(2));
				map.put("payState", rs.getString(4));
				map.put("totalAccount", rs.getFloat(5));
				map.put("userID", rs.getInt(6));
				
				data.add(map);
				
			}while(rs.next());
		
			
		}
		c.close();
		JSONArray json = JSONArray.fromObject(data);
		JsonResult jsonResult = new JsonResult(json);
		return jsonResult;
	}
	

}
