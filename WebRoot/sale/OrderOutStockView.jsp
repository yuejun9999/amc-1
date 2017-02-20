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
function pickingaddmsg(outstockid,orderid){
  $.ajax({
        data:"outstockid="+outstockid+"&orderid="+orderid,
        async: true,
        cache:true,
		url: "pickingAdd2.do",
		type: "POST",
		success: function(msg) {
			$("#message-box").removeClass();
					$("#message-box").show();
					$("#message-box").text(msg).fadeOut(5000);
					$("#message-box").addClass("alert alert-success");
			document.getElementById("orderover").disabled=true;
		}
	});
	
};
function back(){
$("#workspace").load("orderList.do");
};
</SCRIPT>
  </head>
  
  <body onload="onload()">
    
  

          <h1 class="sub-header">订单列表</h1>
          <div class="table-responsive">
          
            <table id="t1" class="table table-striped">
              <thead>
                <tr>
                  <th colspan="4">缺货单详细信息</th>
                </tr>
              </thead>
              <tbody>
              <tr>
              <td>订单编号</td><td>${orderid}</td><td>缺货单编号</td><td>${outstockid}</td>
              </tr>
              <tr>
              <td>下单人</td><td>${person}</td><td>下单日期</td><td>${outstockdate}</td>
              </tr>
              <tr>
              <td>缺货单状态</td><td>${outstockstate}</td>
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
                  <th>库存量</th>
                  <th>尚缺数量</th>
                </tr>
              </thead>
              <tbody>
                <c:forEach items="${productlist}" var="productlist">
                <tr>
                <td>${productlist.ids}</td>
                <td>${productlist.productid}</td>
                <td>${productlist.productname}</td>
                <td>${productlist.productsize}</td>
                <td>${productlist.amount}</td>
                <td>${productlist.demond}</td>
                
                </tr>
                </c:forEach>
                 <tr>
                <td colspan="6"><button id="orderover" class="btn btn-primary" id="picking" onclick="pickingaddmsg(${outstockid},${orderid})">开备货单</button><button class="btn btn-default" onclick="back();">返回</button></td> 
               <script>
                var b=document.getElementById("picking");
           var tip= '<%=request.getAttribute("isout")%>';
           
           if("true"==tip){
              b.disabled=true;
           }
                </script>
                </tr>
              </tbody>
            </table>
          
          </div>
       
  </body>
</html>
