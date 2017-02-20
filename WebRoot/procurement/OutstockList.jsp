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
function onload(){ 
		    var table = document.getElementById("t1")
                    //var table = document.getElementById("t1").rows[0].cells[0]; 
                    var rowObj = null;  
                    for (var i = 0; i < table.rows.length; i ++){ 
                        rowObj = table.rows[i];                        
			var s = rowObj.cells[5].innerHTML;			
			if(s=="未处理"){
				rowObj.cells[5].style.color='red';
				//rowObj.cells[4].style.backgroundColor="red";
			}
			if(s=="处理中"){
			rowObj.cells[5].style.color='yellow';
			}
			if(s=="已处理"){
			rowObj.cells[5].style.color='green';
			}

                    } 
                } 
function viewoperation(id,state){
    $("#workspace").load("/amc/outstockDetail.do?id="+id+"&&state="+state);
};
</SCRIPT>
  </head>
  
  <body onload="onload()">
   
          <h1 class="sub-header">采购管理-缺货通知单列表</h1>
          <div class="table-responsive">
          
            <table id="t1" class="table table-striped">
              <thead>
                <tr>
                  <th>序号</th>
                  <th>缺货通知单编号</th>
                  <th>订单编号</th>
                  <th>添加人员</th>
                  <th>下单日期</th>
                  <th>订单状态</th>
                  <th>操作   </th>
                </tr>
              </thead>
              <tbody>
                <c:forEach items="${outstocklist}" var="outstocklist">
                <tr>
                <td>${outstocklist.number}</td>
                <td>${outstocklist.outstockid}</td>
                <td>${outstocklist.orderid}</td>
                <td>${outstocklist.username}</td>
                <td>${outstocklist.outstocktime}</td>
                <td>${outstocklist.outstockstate}</td>
                <td ><button class="btn btn-default" onclick="viewoperation('${outstocklist.outstockid}','${outstocklist.outstockstate}')">查看并处理</button></td>
                </tr>
                </c:forEach>
              </tbody>
            </table>
           
          </div>
       
  </body>
</html>
