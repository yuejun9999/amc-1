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
function onload(){ 
		    var table = document.getElementById("t1")
                    //var table = document.getElementById("t1").rows[0].cells[0]; 
                    var rowObj = null;  
                    for (var i = 0; i < table.rows.length; i ++){ 
                        rowObj = table.rows[i];                        
			var s = rowObj.cells[4].innerHTML;			
			if(s=="未处理"){
				rowObj.cells[4].style.color='red';
				//rowObj.cells[4].style.backgroundColor="red";
			}
			if(s=="处理中"){
			rowObj.cells[4].style.color='yellow';
			}
			if(s=="已处理"){
			rowObj.cells[4].style.color='green';
			}

                    } 
                } 

</SCRIPT>
  </head>
  
  <body onload="onload()">
   
  

          <h1 class="sub-header">库存管理-备货单详情</h1>
          <div class="table-responsive">
          
            <table id="t1" class="table table-striped">
              <thead>
                <tr>
                  <th colspan="4">备货单详细信息</th>
                </tr>
              </thead>
              <tbody>
              <tr>
              <td>备货单编号</td><td>${pickingid}</td><td>订单编号</td><td>${orderid}</td>
              </tr>
              <tr>
              <td>备货单添加日期</td><td>${pickingtime}</td><td>订单添加日期</td><td>${ordertime}</td>
              </tr>
              <tr>
              <td>顾客姓名</td><td>${customername}</td><td>收货人</td><td>${receiveman}</td>
              </tr>
              <tr>
              <td>收获地址</td><td colspan="3">${receiveaddress}</td>
              </tr>
                             </tbody>
            </table>
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>序号</th>
                  <th>产品编号</th>
                  <th>产品名称</th>
                  <th>产品规格</th>
                  <th>原厂编号</th>
                  <th>备货量 </th>
                </tr>
              </thead>
              <tbody>
                <c:forEach items="${pickingdetail}" var="pickingdetail">
                <tr>
                <td>${pickingdetail.ids}</td>
                <td>${pickingdetail.productid}</td>
                <td>${pickingdetail.productname}</td>
                <td>${pickingdetail.productsize}</td>
                <td>${pickingdetail.suppliercode}</td>
                <td>${pickingdetail.pickingdetailnum}</td>     
                </tr>
                </c:forEach>
              </tbody>
            </table>
          
          </div>
        
  </body>
</html>
