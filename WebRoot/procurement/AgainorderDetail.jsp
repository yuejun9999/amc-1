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
function admitmsg(id){
 
  $.ajax({
        data:"source=againorder&&id="+id,
        async: false,
        cache:true,
		url: "purchasingConfirm.do",
		type: "POST",
		success: function(msg) {
			$("#message-box").removeClass();
					$("#message-box").show();
					$("#message-box").text(msg).fadeOut(5000);
					$("#message-box").addClass("alert alert-success");
					document.getElementById("admitagain").disabled=true;
		}
	});
	
};
function back(){
$("#workspace").load("againorderList.do");
};
</SCRIPT>
<style type="text/css" media=print>  
.noprint{display : none }  
</style> 
  </head>
  
  <body >
   
          <h1 class="noprint">再订货通知单列表</h1>
          <div class="table-responsive">
          
            <table id="t1" class="table table-striped">
              <thead>
                <tr>
                  <th colspan="4">再订货通知单详细信息</th>
                </tr>
              </thead>
              <tbody>
              <tr>
              <td>再订货通知单编号</td><td>${againorderid}</td><td>再订货通知单状态</td><td>${againorderstate}</td>
              </tr>
              <tr>
              <td>再订货通知单添加日期</td><td>${againordertime}</td><td>下单人员</td><td>${username}</td>
              </tr>
             
                             </tbody>
            </table>
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>序号</th>
                  <th>配件编号</th>
                  <th>配件名称</th>
                  <th>配件数量</th>
                  </tr>
              </thead>
              <tbody>
                <c:forEach items="${againorderdetail}" var="againorderdetail">
                <tr>
                <td>${againorderdetail.number}</td>
                <td>${againorderdetail.productid}</td>
                <td>${againorderdetail.productname}</td>
                <td>${againorderdetail.productqua}</td>
                </tr>
                </c:forEach>
                 <tr class="noprint">
                <td colspan="3"><button class="btn btn-primary" onclick="javascript:window.print();">打印再订货单</button></td><td colspan="3"><button id="admitagain" class="btn btn-primary" onclick="admitmsg(${againorderid})">采购确认</button><button class="btn btn-default" onclick="back();">返回</button></td>
                </tr>
              </tbody>
            </table>
           
          </div>
        
  </body>
</html>
