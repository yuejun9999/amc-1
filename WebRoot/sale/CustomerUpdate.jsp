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
};
function updatemsg(id){
  $.ajax({
        data:$('#customerupdate').serialize(),// 你的formid
        async: true,
        cache:true,
		url: "customerUpdate2.do?id="+id,
		type: "POST",
		success: function(msg) {
			alert(msg);
			 
			
		}
	});
	
};
</SCRIPT>
  </head>
  
  <body >
   
          <h1 class="sub-header">销售管理-顾客列表-修改信息</h1>
          <div class="table-responsive">
          
          <form id="customerupdate" target="empty" onsubmit="true">
            <table class="table table-striped">  
      <tr>   
        <th colspan="2">编辑顾客信息</th>   
      </tr>    
      <tr>  
        <td>顾客姓名</td>  
        <td><input  type="text" name="customername" value="${customername}" required /></td>    
      </tr>  
      <tr>  
        <td>联系地址</td>  
        <td><input  type="text" name="address" value="${address}" required/></td>   
      </tr>  
      <tr>  
        <td>联系电话</td>  
        <td><input type="text" name="telephone" value="${telephone}" required/></td>   
      </tr>
      <tr>  
        <td>邮箱</td>  
        <td><input type="text" name="email" value="${email}" required/></td>   
      </tr>
      <tr>  
        <td>信用等级</td>  
        <td><input  type="text" name="creditrank" value="${creditrank}" required/></td>   
      </tr>
      <tr>
      <td>
      </td>
      <td>
      <input class="btn btn-primary" type="submit" onclick="updatemsg(${customerid})" value="提交"/><input class="btn btn-default" type="reset" value="重置"/>
      </td>
      </tr>
    </table> 
    <iframe name="empty" style="display:none"></iframe>
    </form>
           
          </div>
       
  </body>
</html>
