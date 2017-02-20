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
    <h1>财务管理-应付账管理</h1>
    <div>
      <table class="table table-striped">
      	<thead>
      	  <tr>
      	  <th>序号</th>
      	  <th>应付账产生日期</th>
      	  <th>付款期限</th>
      	  <th>总金额</th>
      	  <th>付款状态</th>
      	  <th>采购负责人</th>
      	  <th>可用操作</th>
      	  </tr>
      	</thead>
		<tbody>
			<c:forEach items="${payableList}" var="p">
			<tr>
				<td>${p.getCounter()}<div class="hidden payableid">${p.getPayableId()}</div></td>
				<td class="addTime">${p.getAddTime()}</td>
				<td class="invoiceRange">${p.getInvoiceRange()}</td>
				<td class="totalAccount">${p.getTotalAccount()}</td>
				<td class="payState">${p.getPayState()}</td>
				<td class="userName">${p.getUserName()}</td>
				<td>
					<button type="button" class="btn btn-default btn-sm payable-detail">查看详情</button>
					<c:if test="${p.getPayState()=='未付款'}"><button type="button" class="btn btn-default btn-sm confirm-pay">确认付款</button></c:if>
				</td>
			</tr>
			</c:forEach>
		</tbody>
	  </table>
  
  	</div>
  	<script>
  		$(".payable-detail").click(function(e){
  			tr = $(this).parent().parent();
  			payableID = tr.find(".payableid").text();
  			addTime = tr.find(".addTime").text();
  			invoiceRange = tr.find(".invoiceRange").text();
  			totalAccount = tr.find(".totalAccount").text();
  			payState = tr.find(".payState").text();
  			userName = tr.find(".userName").text();

  			$.ajax({
  				url: "payableDetail.do",
  				data: "payableID="+payableID+"&addTime="+addTime+"&invoiceRange="+invoiceRange+"&totalAccount="+totalAccount+"&payState="+payState+"&userID="+userName,
  				success: function(msg){
  					$("#modal-div").load("financial/payableDetail.jsp");
  				},
  				method: "POST"
  			});
  		});
  		
  		$(".confirm-pay").click(function(e){
  			console.log("Hi! Confirm Pay Button!");
  			tr = $(this).parent().parent();
  			payableID = tr.find(".payableid").text();
  			totalAccount = tr.find(".totalAccount").text();
  			$.ajax({
  				url: "financial/confirmPayAlert.html",
  				method: "GET",
  				success: function(msg){
  					$("#modal-div").html(msg);
  					$("#totalAccountSpan").text(totalAccount);
  					$("#confirmMoneyPayed").click(function(e){
  						currentUser = $("#userID").text();
  						$.ajax({
  							url: "confirmPay.do",
  							data:"payableID="+payableID+"&totalAccount="+totalAccount+"&currentUser="+currentUser,
  							method: "POST",
  							success: function(msg){
  								if (msg=="SUCCESS"){
									tr.find(".payState").text("已付款");
									tr.find(".confirm-pay").addClass("hidden");
									htmltxt = '<div class="alert alert-success">操作成功！<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button></div>';
									$("message-box").html(htmltxt);
								}
				
								else {
									htmltxt = '<div class="alert alert-danger">ERROR: 操作未成功，数据库错误。<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button></div>';
								}
				
								$("#message-box").html(htmltxt);
  							}
  						});
  					});
  					$("#confirmPayModal").modal("show");
  				}
  			});
  		});
  		
  	</script>
</body>
</html>
