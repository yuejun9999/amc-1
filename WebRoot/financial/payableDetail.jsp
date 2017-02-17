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
    
    <meta name="content-type" content="text/html; charset=UTF-8">

  </head>
  
  <body>
  <div class="modal fade" id="payableDetailModel" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">应付账款明细</h4>
      </div>
      <div class="modal-body">
    <div id="receivableInfo" class="row">
    <div class="col-md-4">
    	应付账款编号<br/>
    	<h2 id="receivableIDH2">${payableID}</h2><br/>
    	应付账款产生日期<br/>
    	<h2 id="dateH2">${addTime}</h2>
    </div>
    <div class="col-md-4">
    	金额<br/>
    	<h2 id="totalAmountH2">${totalAccount}</h2><br/>
    	状态<br/>
    	<h2 id="stateH2">${payState}</h2>
    </div>
    <div class="col-md-4">
    	付款期限<br/>
    	<h2 id="invoiceRange">${invoiceRange}</h2><br/>
    	采购负责人<br/>
    	<h2 id="userName">${userName}</h2>
    </div>
    </div>
    </div>
    <div class="modal-body" id="receivableDetailsInfo">
    <table class="table table-striped">
    	<thead>
    		<tr>
    			<th>编号</th><th>产品编号</th><th>产品名称</th><th>单价</th><th>数量</th><th>金额小计</th>
    		</tr>
    	</thead>
    	<tbody id="payableDetailTbody">
    	<c:forEach items="${payableDetailList}" var="pd">
    	<tr>
    		<td>${pd.getPayableDetailId()}</td>
    		<td>${pd.getProductID()}</td>
    		<td>${pd.getProductName()}</td>
    		<td>${pd.getSalePrice()}</td>
    		<td>${pd.getImportNum()}</td>
    		<td>${pd.getTotalAccount()}</td>
    	</tr>
    	</c:forEach>
    	</tbody>
    </table>
    </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" data-dismiss="modal">关闭</button>
      </div>
    </div>
  </div>
</div>
<script type="text/javascript">
$("#payableDetailModel").modal("show");
</script>
    
  </body>
</html>
