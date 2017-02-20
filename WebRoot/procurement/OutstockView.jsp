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
function del(){
if(confirm("真的要删除该条记录吗?")){
return true;
}else{
return false;
}
}
function back(){
$("#workspace").load("outstockList.do");
};
</SCRIPT>
<style type="text/css" media=print>  
.noprint{display : none }  
</style> 
  </head>
  
  <body >
    
          <h1 class="sub-header">采购管理-缺货通知单详情</h1>
          <div class="table-responsive">
         
            <table id="t1" class="table table-striped">
              <thead>
                <tr>
                  <th colspan="4">缺货通知单详细信息</th>
                </tr>
              </thead>
              <tbody>
              <tr>
              <td>缺货通知单编号</td><td>${outstockid}</td><td>缺货通知单状态</td><td>${outstockstate}</td>
              </tr>
              <tr>
              <td>缺货通知单添加日期</td><td>${outstocktime}</td><td>下单人员</td><td>${username}</td>
              </tr>
             
                             </tbody>
            </table>
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>序号</th>
                  <th>配件编号</th>
                  <th>配件名称</th>
                  <th>缺货数量</th>
                  </tr>
              </thead>
              <tbody>
                <c:forEach items="${outstockdetail}" var="outstockdetail">
                <tr>
                <td>${outstockdetail.number}</td>
                <td>${outstockdetail.productid}</td>
                <td>${outstockdetail.productname}</td>
                <td>${outstockdetail.outstocknum}</td>
                </tr>
                </c:forEach>
                 <tr><td><button class="btn btn-default" onclick="back();">返回</button></td></tr>
              </tbody>
            </table>
           
          </div>
       
  </body>
</html>