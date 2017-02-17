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
function submit(){
 
 return true;

}

function addmsg(){
 
  $.ajax({
        data:$('#supplieradd').serialize(),// 你的formid
        async: false,
        cache:true,
		url: "supplierAdd.do",
		type: "POST",
		success: function(msg) {
			alert(msg);
			 
			
		}
	});
	
};
</SCRIPT>
  </head>
  
  <body >
    
          <h1 class="sub-header">采购管理-添加供应商</h1>
          <div class="table-responsive">
         
          <form id="supplieradd" target="empty" onsubmit="addmsg();">
            <table class="table table-striped">  
      <tr>   
        <th colspan="2">新增供应商信息</th>   
      </tr>    
      <tr>  
        <td>名称</td>  
        <td><input  type="text" id="suppliername" name="suppliername" required /></td>    
      </tr>
       <tr>  
        <td>代码</td>  
        <td><input  type="text" id="suppliercode" name="suppliercode" required /></td>    
      </tr>
      <tr>  
        <td>联系人</td>  
        <td><input  type="text" id="suppliermaster" name="suppliermaster" required /></td>    
      </tr>
       <tr>  
        <td>地址</td>  
        <td><input  type="text" id="supplieraddress" name="supplieraddress" required/></td>    
      </tr>
       <tr>  
        <td>电话</td>  
        <td><input  type="text" id="suppliertel" name="suppliertel" required /></td>    
      </tr>
       <tr>  
        <td>email</td>  
        <td><input  type="text" id="supplieremail" name="supplieremail" required /></td>    
      </tr>
       <tr>  
        <td>产品范围</td>  
        <td><input  type="text" id="procudtrange" name="productrange" required /></td>    
      </tr>
      <tr>
      <td>
      </td>
      <td>
  <input class="btn btn-primary" type="submit"  value="提交"/>   <input class="btn btn-default" type="reset" value="取消"/>
      </td>
      </tr>
    </table> 
    <iframe name="empty" style="display:none"></iframe>
    </form>
          
          </div>
       
  </body>
</html>
