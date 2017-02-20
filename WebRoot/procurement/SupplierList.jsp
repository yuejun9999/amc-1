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
$("#workspace").load("supplierDelete.do?id="+id);
return true;
}else{
return false;
}
}
function update(id){
    $("#workspace").load("supplierUpdate1.do?id="+id);
}

</SCRIPT>
  </head>
  
  <body >
  
          <h1 class="sub-header">采购管理-供应商列表</h1>
          <div class="table-responsive">
         
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>序号</th>
                  <th>名称</th>
                  <th>代码</th>
                  <th>联系人</th>
                  <th>产品范围  </th>
                  <th>地址</th>
                  <th>电话</th>
                  <th>email</th>
                  <th>操作   </th>
                </tr>
              </thead>
              <tbody>
                <c:forEach items="${supplierlist}" var="supplierlist">
                <tr>
                <td>${supplierlist.number}</td>
                <td>${supplierlist.suppliername}</td>
                <td>${supplierlist.suppliercode}</td>
                <td>${supplierlist.suppliermaster}</td>
                <td>${supplierlist.productrange}</td>
                <td>${supplierlist.supplieraddress}</td>
                <td>${supplierlist.suppliertel}</td>
                <td>${supplierlist.supplieremail}</td>
                <td ><button class="btn btn-default"  onclick="return del(${supplierlist.supplierid})">删除</button><button class="btn btn-default" onclick="update(${supplierlist.supplierid})">修改</button></td>
                </tr>
                </c:forEach>
              </tbody>
            </table>
          
          </div>
       
  </body>
</html>
