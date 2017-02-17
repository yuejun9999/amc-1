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
function del(){
if(confirm("真的要删除该条记录吗?")){
return true;
}else{
return false;
}
}
function find(id){
 return document.getElementById(id);
}
function select(id,selectvalue){
  m=find(id);
  for(i=0;i<=m.options.length;i++){
    if(m.options[i].value==selectvalue){
    m.options[i].selected=true;
    break;}
  }
}
function addmsg(){
  
  $.ajax({
        data:$('#productadd').serialize(),// 你的formid
        async: false,
        cache:true,
		url: "productAdd2.do",
		type: "POST",
		success: function(msg) {
			alert(msg);
			 
			
		}
	});
	
};
</SCRIPT>
  </head>
  
  <body >
   
          <h1 class="sub-header">库存管理-添加产品</h1>
          <div class="table-responsive">
         
          <form id="productadd" target="empty" onsubmit="addmsg();">
            <table class="table table-striped">  
      <tr>   
        <th colspan="2">编辑产品信息</th>   
      </tr>    
      <tr>  
        <td>产品名称</td>  
        <td><input  type="text" name="productname"  required /></td>    
      </tr>  
      <tr>  
        <td>产品型号</td>  
        <td><input type="text" name="productsize"  required/></td>   
      </tr>
      <tr>  
        <td>售价</td>  
        <td><input  type="text" name="saleprice"  required/></td>   
      </tr>
      <tr>  
        <td>库存数量</td>  
        <td><input  type="text" name="amount"  required/></td>   
      </tr>  
      <tr>  
        <td>供应商编号</td>  
        <td><select id="select_supplier" name="select_supplier">
        <c:forEach items="${suppliercode}" var="suppliercode">
        <option value="${suppliercode.supplierid}">${suppliercode.suppliercode}</option>
        </c:forEach>
       </select></td>  
      </tr> 
      <tr>  
        <td>安全库存</td>  
        <td><input  type="text" name="safenum"  required/></td>   
      </tr>  
      <tr>
      <td>
      </td>
      <td>
      <input class="btn btn-primary" type="submit" value="提交"/> <input class="btn btn-default" type="reset" value="重置"/>
      </td>
      </tr>
    </table> 
     <iframe name="empty" style="display:none"></iframe>
    </form>
          
          </div>
       
  </body>
</html>
