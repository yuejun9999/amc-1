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
function addmsg(id,out){
  $.ajax({
        data:"id="+id+"&out="+out,
        async: true,
        cache:true,
		url: "orderOperation2.do",
		type: "POST",
		success: function(msg) {
			alert(msg);
			 
			
		}
	});
	
};
</SCRIPT>
  </head>
  
  <body onload="onload()">
    

          <h2 class="sub-header">订单列表</h2>
          <div class="table-responsive">
         
            <table id="t1" class="table table-striped">
              <thead>
                <tr>
                  <th colspan="4">订单详细信息</th>
                </tr>
              </thead>
              <tbody>
              <tr>
              <td>订单编号</td><td>${orderid}</td><td>顾客姓名</td><td>${customername}</td>
              </tr>
              <tr>
              <td>收货人</td><td>${receiveperson}</td><td>收货地址</td><td>${receiveaddress}</td>
              </tr>
              <tr>
              <td>下单日期</td><td>${orderdate}</td><td>下单人员</td><td>${orderperson}</td>
              </tr>
              <tr>
              <td>订单状态</td><td colspan="3">${orderstate}</td>
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
                  <th>销售价 </th>
                  <th>订单量</th>
                  <th>库存</th>
                </tr>
              </thead>
              <tbody>
                <c:forEach items="${productlist}" var="productlist">
                <tr>
                <td>${productlist.ids}</td>
                <td>${productlist.productid}</td>
                <td>${productlist.productname}</td>
                <td>${productlist.productsize}</td>
                <td>${productlist.suppliercode}</td>
                <td>${productlist.saleprice}</td>
                <td>${productlist.demond}</td>
                <td>${productlist.amount}</td>
                
                </tr>
                </c:forEach>
                 <tr>
                 <td colspan="8"><button class="btn btn-primary" onclick="addmsg(${orderid},${out})">开备货单/缺货单</button></td>
                 
               <!--   <td colspan="2"><a href="/Strutsdemo/pickingAdd.do?id=${orderid}"><button>开备货单</button></a></td> <td colspan="2"> <a href="/Strutsdemo/outDemondAdd.do?id=${orderid}"><button>开缺货单</button></a></td>-->
                </tr>
              </tbody>
            </table>
           
          </div>
     
    
    
   
  </body>
</html>
