<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%request.setCharacterEncoding("UTF-8");%>  
<%response.setCharacterEncoding("UTF-8");%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
 
<!DOCTYPE html>
<html>
  <head>
    <SCRIPT type="text/JavaScript">
function test(o,id,productid){
if(o.checked==true){
o.value=id+","+productid;
}
else{
o.value=0;
}
}
function addmsg(){
  $.ajax({
        data:$('#orderadd').serialize(),// 你的formid
		url: "orderAdd1.do",
		type: "POST",
		success: function(msg) {
			if(msg=="数据插入成功"){
			$("#message-box").removeClass();
					$("#message-box").show();
					$("#message-box").text("操作成功！").fadeOut(5000);
					$("#message-box").addClass("alert alert-success");
			}
			else{
					$("#message-box").removeClass();
					$("#message-box").show();
					$("#message-box").text(msg).fadeOut(5000);
					$("#message-box").addClass("alert alert-danger");
					}
			 
			
		}
	});
	
};
</SCRIPT>
  </head>
  
  <body >
    

          <h1>销售管理-添加订单</h1> 
          <div class="table-responsive">
           
          <form id="orderadd" target="empty" onsubmit="addmsg()">
            <table class="table table-striped">  
      <tr>   
        <th colspan="2">新增订单信息</th>   
      </tr>  
      <tr>  
        <td>顾客</td>  
        <td>
        <select id="select_cus" name="select_cus">
        <c:forEach items="${customerlist}" var="customerlist">
        <option value="${customerlist.customername}">${customerlist.customername}</option>
        </c:forEach>
       </select></td> 
      </tr>    
       <tr>  
        <td>收货地址</td>  
        <td><input  id="address" name="address" size=45 required /></td>    
      </tr>
      <tr>  
        <td>收货人</td>  
        <td><input  id="person" name="person" required /></td>    
      </tr>      
   
      </table>
    
    
    <table id="orderde" class="table table-striped">
     <tr>   
        <th colspan="8">订单详情</th>   
      </tr>
      <tr>
      <th>是否选择</th><th>序号</th><th>产品编号</th><th>产品名称</th><th>型号</th><th>售价</th><th>库存量</th><th>需求量</th>
      </tr>
      <c:forEach items="${productlist}" var="productlist">
      <tr>
      <td><input id="ifchecked" name="ifchecked" type="checkbox" value="${productlist.ids},${productlist.productid}"   /></td>
      <td>${productlist.ids}</td>
      <td>${productlist.productid}</td>
      <td>${productlist.productname}</td>
      <td>${productlist.productsize}</td>
      <td>${productlist.saleprice}</td>
      <td >${productlist.amount}</td>
      <td><input id="demond" name="demond" value="0" size=10/></td>
      </tr>
      </c:forEach>
       <tr>
      <td colspan="8">
  <input class="btn btn-primary" type="submit"  value="提交"/>   <input class="btn btn-default" type="reset" value="重置"/>
      </td>
      </tr>
    </table>
    <iframe name="empty" style="display:none"></iframe>
    </form>
   
    </div>
      
    
   
  </body>
</html>
