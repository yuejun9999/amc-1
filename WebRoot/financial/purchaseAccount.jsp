<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta name="content-type" content="text/html; charset=UTF-8">

  </head>
  <body>
    <h1>财务管理-采购业务帐查询</h1>
    <div>
      <table class="table table-striped">
      	<thead>
      	  <tr>
      	  <th>序号</th>
      	  <th>采购业务帐日期</th>
      	  <th>总金额</th>
      	  <th>处理人</th>
      	  </tr>
      	</thead>
		<tbody>
			<c:forEach items="${purchaseAccountList}" var="sa">
			<tr>
				<td>${sa.getPurchaseAccountId()}</td>
				<td>${sa.getAddTime()}</td>
				<td>${sa.getTotalAccount()}</td>
				<td>${sa.getStaffName()}</td>
			</tr>
			</c:forEach>
		</tbody>
	  </table>
  
  	</div>
</body>
</html>
