<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
 
<!DOCTYPE html>
<html>
  <head>
 
    <SCRIPT type="text/JavaScript">
function del(id, name){
$.ajax({
	url:"human/ConfirmDeleteUser.html",
	method: "GET",
	success:function(msg){
		$("#modal-div").html(msg);
		$("#confirmDelUserModal").modal("show");
		$("#staffnameSpan").text(name);
		$("#confirmDelUserButton").click(function(e){
			$.get({
				url:"userDel.do?id="+id,
				success: function(msg){
					$("#workspace").load("userList.do");
					if (msg=="SUCCESS"){
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
		});
	}
});
}
function update(id){
    $("#modal-div").load("userUpdate1.do?id="+id);
}

</SCRIPT>
<style type="text/css">
#addUser{
	float: right;
}
</style>
  </head>
  
  <body >
		  <button id="addUser" class="btn btn-lg btn-primary"><span class="glyphicon glyphicon-plus"></span> 添加用户</button>
          <h1 class="sub-header">人事管理-用户列表</h1>
          <div class="table-responsive">
        
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>用户编号</th>
                  <th>用户名</th>
                  <th>员工姓名</th>
                  <th>工作部门</th>
                  <th>职称  </th>
                  <th>操作   </th>
                </tr>
              </thead>
              <tbody>
                <c:forEach items="${userlist}" var="userlist">
                <tr>
                <td>${userlist.userid}</td>
                <td>${userlist.username}</td>
                <td>${userlist.staffname}</td>
                <td>${userlist.department}</td>
                <td>${userlist.title}</td>
                <td ><button class="btn btn-default btn-sm" onclick="del(${userlist.userid},'${userlist.staffname}')" >删除</button>
                	<button class="btn btn-default btn-sm" onclick="update(${userlist.userid})">修改</button></td>
                </tr>
                </c:forEach>
              </tbody>
            </table>
           
          </div>
       <script type="text/javascript">
       $("#addUser").click(function(e){
           $("#modal-div").load("human/UserAdd.jsp");
       });
       </script>
  </body>
</html>
