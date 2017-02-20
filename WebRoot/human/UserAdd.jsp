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
 var a=document.getElementById("username").value;
 var re=/^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
 if(re.test(a)){
 return true;}
 else{
 $("#alert-div-add-user").removeClass();
 $("#alert-div-add-user").show();
 $("#alert-div-add-user").text("操作失败：请输入合法的邮箱作为用户名。").fadeOut(5000);
 $("#alert-div-add-user").addClass("alert alert-danger");
}
}
function consist(){
  var a=document.getElementById("password").value;
  var b=document.getElementById("new_password").value;
  if(a==b){
  return true;
  }
  else{
  $("#alert-div-add-user").removeClass();
  $("#alert-div-add-user").show();
 $("#alert-div-add-user").text("操作失败：请确认两次输入的密码一致。").fadeOut(5000);
 $("#alert-div-add-user").addClass("alert alert-danger");
  return false;
  }
}
function addmsg(){
console.log("Form is submitted!");
if(youxiang()&&consist()){
  $.ajax({
        data:$('#useradd').serialize(),// 你的formid
        async: false,
        cache:true,
		url: "userAdd.do",
		type: "POST",
		success: function(msg) {
		console.log(msg);
		if (msg=="SUCCESS") {
			$("#alert-div-add-user").removeClass();
			$("#alert-div-add-user").show();
 			$("#alert-div-add-user").text("操作成功，继续输入信息可继续添加。").fadeOut(5000);
 			$("#alert-div-add-user").addClass("alert alert-success");
 			$("input").val("");
		}
		
		else{
			$("#alert-div-add-user").removeClass();
			$("#alert-div-add-user").show();
 			$("#alert-div-add-user").text(msg).fadeOut(5000);
 			$("#alert-div-add-user").addClass("alert alert-danger");
		}
			
			 
			
		}
	});
	
	}
	
};
</SCRIPT>
  </head>
  
  <body >
   <div class="modal fade" id="addUserModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">添加用户</h4>
      </div>
         
          <form id="useradd" target="empty" onsubmit="addmsg();">
          <div class="modal-body" id="receivableDetailsInfo">
          	<div id="alert-div-add-user"></div>
            <table class="table table-striped">  
      <tr>   
        <th colspan="2">新增用户信息</th>   
      </tr>    
      <tr>  
        <td>用户名</td>  
        <td><input type="text" id="username" name="username" required /></td>    
      </tr>
       <tr>  
        <td>密码</td>  
        <td><input  type="password" id="password" name="password" required /></td>    
      </tr>
      <tr>  
        <td>确认密码</td>  
        <td><input type="password" id="new_password" name="new_password" required /></td>    
      </tr>  
      <tr>  
        <td>员工姓名</td>  
        <td><input  type="text" name="staffname" required/></td>   
      </tr>  
      <tr>  
        <td>工作部门</td>  
        <td><select id="select_depart" name="department">
        <option value="人事">人事</option>
        <option value="财务">财务</option>
        <option value="仓库">仓库</option>
        <option value="销售">销售</option>
        <option value="采购">采购</option>
        <option value="总公司">总公司</option>
       </select></td> 
      </tr>  
      <tr>  
        <td>职称</td>  
        <td><select id="select_title" name="stafftitle"><option value="经理">经理</option>
        <option value="普通员工">普通员工</option>
        </select></td>
      </tr>  
      
    </table> 
    </div>
    <div class="modal-footer">
      	<button type="submit" class="btn btn-primary">确认添加</button>
        <button id="close" type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
      </div>
    </form>
      
    </div>
  </div>
</div>
<iframe name="empty" style="display:none"></iframe>
          
      <script type="text/javascript">
      $("#addUserModal").modal("show");
      $("#close").click(function(e){
      	$("#workspace").load("userList.do");
      });
      </script>
  </body>
</html>
