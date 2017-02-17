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
function youxiang(){
 var a=document.getElementById("email").value;
 var re=/^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
 if(re.test(a)){
 return true;}
 else{
 alert("不是有效用户名");}
};
function addmsg(){
  
  $.ajax({
        data:$('#customeradd').serialize(),// 你的formid
        async: false,
        cache:true,
		url: "customerAdd.do",
		type: "POST",
		success: function(msg) {
			alert(msg);
			 
			
		}
	});
	
};
</SCRIPT>
  </head>
  
  <body >
   <h1>销售管理-添加顾客</h1>
          <div >
          
          <form id="customeradd" target="empty" onsubmit="addmsg();">
            <table class="table table-striped">  
      <tr>   
        <th colspan="2">新增顾客信息</th>   
      </tr>    
      <tr>  
        <td>顾客姓名</td>  
        <td><input  type="text" id="customername" name="customername" required /></td>    
      </tr>
       <tr>  
        <td>联系电话</td>  
        <td><input  type="text" id="telephone" name="telephone" required /></td>    
      </tr>
      <tr>  
        <td>联系地址</td>  
        <td><input  type="text" id="address" name="address" required /></td>    
      </tr>  
      <tr>  
        <td>邮箱</td>  
        <td><input  type="text" id="email" name="email" required/></td>   
      </tr>  
      <tr>
      <td>
      </td>
      <td>
  <input class="btn btn-primary" type="submit"   value="提交"/>   <input class="btn btn-default" type="reset" value="重置"/>
      </td>
      </tr>
    </table> 
     <iframe name="empty" style="display:none"></iframe>
    </form>
           
          </div>
        
    
    
   
  </body>
</html>
