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
 alert("不是有效用户名");}
}
function consist(){
  var a=document.getElementById("password").value;
  var b=document.getElementById("new_password").value;
  if(a==b){
  return true;
  }
  else{
  alert("两次输入密码不一致");
  return false;
  }
}
function addmsg(){
if(youxiang()&&consist()){
  $.ajax({
        data:$('#useradd').serialize(),// 你的formid
        async: false,
        cache:true,
		url: "userAdd.do",
		type: "POST",
		success: function(msg) {
			alert(msg);
			 
			
		}
	});
	
	}
	
};
</SCRIPT>
  </head>
  
  <body >
   

          <h1 class="sub-header">人事管理-添加用户</h1>
          <div class="table-responsive">
         
          <form id="useradd" target="empty" onsubmit="addmsg();">
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
      <tr>
      <td>
      </td>
      <td>
  <input class="btn btn-primary" type="submit"  value="提交"/>   <input class="btn btn-default" type="reset" value="重置"/>
      </td>
      </tr>
    </table> 
    <iframe name="empty" style="display:none"></iframe>
    </form>
           
          </div>
      
  </body>
</html>
