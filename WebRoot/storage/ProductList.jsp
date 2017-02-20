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
function del(id){
if(confirm("真的要删除该条记录吗?")){
$("#workspace").load("productDel.do?id="+id);
return true;
}else{
return false;
}
}
function update(id){
    $("#workspace").load("productUpdate1.do?id="+id);
}
function onload(){ 
		    var table = document.getElementById("tablep");
                    //var table = document.getElementById("t1").rows[0].cells[0]; 
                    var rowObj = null;  
                    for (var i = 1; i < table.rows.length; i ++){ 
                        rowObj = table.rows[i];                        
			var s = parseInt(rowObj.cells[5].innerHTML);	
			var t=	parseInt(rowObj.cells[6].innerHTML);	
			if(s<=t){
				rowObj.cells[5].style.color='red';
				//rowObj.cells[4].style.backgroundColor="red";
			}
			else{
			rowObj.cells[5].style.color='green';
			}

                    } 
           
                } 
function addmsg(){
  $("#workspace").load("againOrderAdd.do");
	
};
</SCRIPT>
  </head>
  
  <body onload="onload()">
   
  

          <h1 class="sub-header">库存管理-产品列表</h1>
          <div class="table-responsive">
         
            <table id="tablep" class="table table-striped">
              <thead>
                <tr>
                  <th>序号</th>
                  <th>产品编号</th>
                  <th>产品名称</th>
                  <th>产品型号</th>
                  <th>售价 </th>
                  <th>库存数量</th>
                  <th>安全库存</th>
                  <th>操作   </th>
                </tr>
              </thead>
              <tbody>
                <c:forEach items="${productlist}" var="productlist">
                <tr>
                <td>${productlist.ids}</td>
                <td>${productlist.productid}</td>
                <td>${productlist.productname}</td>
                <td>${productlist.productsize}</td>
                <td>${productlist.saleprice}</td>
                <td>${productlist.amount}</td>
                <td>${productlist.safenum}</td>
                <td ><button class="btn btn-default" onclick="del(${productlist.productid})">删除</button><button class="btn btn-default" onclick="update(${productlist.productid})">修改</button></td>
                </tr>
                </c:forEach>
                <tr>
                <td colspan="8"><button class="btn btn-primary" id="againorderbutton" onclick="addmsg();"    >再订货通知单</button></td>
                <script>
                var b=document.getElementById("againorderbutton");
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
