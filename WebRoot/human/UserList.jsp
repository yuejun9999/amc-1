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
function del(id){
if(confirm("真的要删除该条记录吗?")){
$("#workspace").load("userDel.do?id="+id);
return true;
}else{
return false;
}
}
function update(id){
    $("#workspace").load("userUpdate1.do?id="+id);
}

</SCRIPT>
  </head>
  
  <body >
    
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
                <td ><button class="btn btn-default btn-sm" onclick="del(${userlist.userid})" >删除</button><button class="btn btn-default btn-sm" onclick="update(${userlist.userid})">修改</button></td>
                </tr>
                </c:forEach>
              </tbody>
            </table>
           
          </div>
       
  </body>
</html>
