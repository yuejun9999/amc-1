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
$("#workspace").load("customerDel.do?id="+id);
return true;
}else{
return false;
}
}
function update(id){
    $("#workspace").load("customerUpdate1.do?id="+id);
}
</SCRIPT>
  </head>
  
  <body >
   

          <h1 class="sub-header">销售管理-顾客列表</h1>
          <div class="table-responsive">
         
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>序号</th>
                  <th>客户姓名</th>
                  <th>地址</th>
                  <th>联系电话</th>
                  <th>email </th>
                  <th>信用等级</th>
                  <th>操作   </th>
                </tr>
              </thead>
              <tbody>
                <c:forEach items="${customerlist}" var="customerlist">
                <tr>
                <td>${customerlist.id}</td>
                <td>${customerlist.customername}</td>
                <td>${customerlist.address}</td>
                <td>${customerlist.telephone}</td>
                <td>${customerlist.email}</td>
                <td>${customerlist.creditrank}</td>
                <td ><button class="btn btn-default" onclick="return del(${customerlist.customerid})">删除</button><button class="btn btn-default" onclick="update(${customerlist.customerid})">修改</button></td>
                </tr>
                </c:forEach>
              </tbody>
            </table>
           
          </div>
      
    
    
   
  </body>
</html>
