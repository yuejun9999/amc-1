package struts.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class JsonResult implements Result{
	private JSONObject json;
	private JSONArray jsonArray;
	
	public JsonResult(JSONObject json) {
		this.json = json;
	}
	
	public JsonResult(JSONArray json) {
		this.jsonArray = json;
	}

	@Override
	public void applyResult(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		response.addHeader("Content-Type", "application/json");
		if (jsonArray!=null){
			response.getOutputStream().write(jsonArray.toString().getBytes("UTF-8"));
		}
		else{
			response.getOutputStream().write(json.toString().getBytes("UTF-8"));
		}
		response.getOutputStream().flush();
	}

}
