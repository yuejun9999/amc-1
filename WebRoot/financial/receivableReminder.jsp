<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>催款单</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<style>
	body{
	font-family:"Microsoft Yahei"
	}
	.right{
	align: right
	}
	.center{
	text-align: center;
	}
	.small{
	font-size:15
	}
	
	table{
	border-collapse:collapse;
	border-width:1;
	border-color:'#000000'
	}
	td{
	border-width:1;
	border-color:'#000000'
	}
	
	@media print{
	.noprint {
			display:none
		}
	}
	</style>

  </head>
  
  <body>
    <div style="text-align:center">
    	<h2>催款单</h2>
    	<div class="text-right" align="right"><span id="year"></span>年<span id="month"></span>月<span id="day"></span>日</div>
    	<table width=800 class="small center table table-bordered">
    		<tr>
    			<th width=20%>顾客姓名（单位）</th><td id="customerName" width=30%>${customerName}</td><th width=20%>开单人</th><td id="reminderCreator" width=30%>${receivableReminder}</td>
    		</tr>
    		<tr>
    			<th width=20%>订单号</th><td id="orderID" width=30%>${orderID}</td><th width=20%>交易时间</th><td id="orderDate" width=30%>${orderDate}</td>
    		</tr>
    		<tr>
    			<th width=20%>发货单号</th><td id="parcelsID" width=30%>${parcelID}</td><th width=20%>发货时间</th><td id="parcelsDate" width=30%>${parcelsDate}</td>
    		</tr>
    		<tr>
    			<th width=20%>收货人姓名</th><td id="receiveName" width=30%>${receiverName}</td><th width=20%>收货地址</th><td id="receiveAddress" width=30%>${receiveAddress}</td>
    		</tr>
    	</table>
    	<table width=800 class="small center table table-bordered">
    		<thead>
    			<tr width="auto">
    			<th>序号</th><th>产品编号</th><th>产品名称</th><th>单价</th><th>数量</th><th>金额小计</th>
    			</tr>
    		</thead>
    		<tbody>
    			<c:forEach items="${receivableDetails}" var="rd">
    			<tr>
    				<td>${rd.getCount()}</td>
    				<td>${rd.getProductID()}</td>
    				<td>${rd.getProductName()}</td>
    				<td>${rd.getSalePrice()}</td>
    				<td>${rd.getSaleAmount()}</td>
    				<td>${rd.getTotalAccount()}</td>
    			</tr>
    			</c:forEach>
    			<tr>
    			<td colspan="5">合计</td><td>${totalAccount}</td>
    			</tr>
    			<tr><td colspan="6" align="left">说明：以上款项请于收到该催款单后五天内付清。<br/>
    			银行账号：工商银行北京北城区洪山分理处8901-110</td></tr>
    		</tbody>
    	</table>
    	<button type="button" class="noprint btn btn-primary" onclick="print()">打印催款单</button>
    	<button type="button" class="noprint btn btn-default" onclick="window.close()">关闭</button>
    </div>
    <script src="js/jquery-3.1.1.js"></script>
    <script>
    	var myDate=new Date();
    	$("span#year").text(""+myDate.getFullYear());
    	$("span#month").text(""+(myDate.getMonth()+1));
    	$("span#day").text(""+myDate.getDate());
    </script>

  </body>
</html>
