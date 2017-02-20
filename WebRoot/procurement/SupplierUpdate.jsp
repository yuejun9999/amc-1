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
function updatemsg(id){
  $.ajax({
        data:$('#supplierupdate').serialize(),// 你的formid
        async: true,
        cache:true,
		url: "supplierUpdate2.do?id="+id,
		type: "POST",
		success: function(msg) {
			alert(msg);
			
		}
	});
	
};
</SCRIPT>
  </head>
  
  <body >
    

          <h1 class="sub-header">采购管理-编辑供应商</h1>
          <div class="table-responsive">
         
          <form id="supplierupdate" target="empty" onsubmit="updatemsg(${supplierid})">
            <table class="table table-striped">  
      <tr>   
        <th colspan="2">编辑供应商信息</th>   
      </tr>    
      <tr>  
        <td>名称</td>  
        <td><input  type="text" name="suppliername" value="${suppliername}" required /></td>    
      </tr>  
     <tr>  
        <td>代码</td>  
        <td><input  type="text" name="suppliercode" value="${suppliercode}" required /></td>    
      </tr>  
      <tr>  
        <td>联系人</td>  
        <td><input  type="text" name="suppliermaster" value="${suppliermaster}" required /></td>    
      </tr>  
      <tr>  
        <td>地址</td>  
        <td><input  type="text" name="supplieraddress" value="${supplieraddress}"  required/></td>    
      </tr>  
      <tr>  
        <td>电话</td>  
        <td><input  type="text" name="suppliertel" value="${suppliertel}" required /></td>    
      </tr>  
      <tr>  
        <td>邮箱</td>  
        <td><input  type="text" name="supplieremail" value="${supplieremail}" required /></td>    
      </tr>  
      <tr>  
        <td>产品范围</td>  
        <td><input  type="text" name="productrange" value="${productrange}" required /></td>    
      </tr>  
      <tr>
      <td>
      </td>
      <td>
      <input class="btn btn-primary" type="submit" value="提交" ><input class="btn btn-default" type="reset" value="取消"/>
      </td>
      </tr>
    </table> 
    <iframe name="empty" style="display:none"></iframe>
    </form>
           
          </div>
       
  </body>
</html>