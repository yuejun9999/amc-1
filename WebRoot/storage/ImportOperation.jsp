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
function updatemsg(id){
  $.ajax({
        async: true,
        cache:true,
		url: "storageUpdate.do?id="+id,
		type: "POST",
		success: function(msg) {
			$("#message-box").removeClass();
					$("#message-box").show();
					$("#message-box").text(msg).fadeOut(5000);
					$("#message-box").addClass("alert alert-success");
					document.getElementById("admitpicking").disabled=true;
		}
	});
	
};
function back(){
$("#workspace").load("importList.do");
};
</SCRIPT>
  </head>
  
  <body onload="onload()">
    
  

          <h1 class="sub-header">库存管理-进货通知单列表</h1>
          <div class="table-responsive">
          
            <table id="t1" class="table table-striped">
              <thead>
                <tr>
                  <th colspan="4">进货通知单详细信息</th>
                </tr>
              </thead>
              <tbody>
              <tr>
              <td>进货通知单编号</td><td>${importid}</td><td>进货通知单状态</td><td>${importstate}</td>
              </tr>
              <tr>
              <td>进货通知单添加日期</td><td>${importtime}</td><td>添加用户</td><td>${username}</td>
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
                  <th>进货量 </th>
                </tr>
              </thead>
              <tbody>
                <c:forEach items="${importdetail}" var="importdetail">
                <tr>
                <td>${importdetail.ids}</td>
                <td>${importdetail.productid}</td>
                <td>${importdetail.productname}</td>
                <td>${importdetail.productsize}</td>
                <td>${importdetail.suppliercode}</td>
                <td>${importdetail.importnum}</td>     
                </tr>
                </c:forEach>
                 <tr >
                <td colspan="6"> <button id="admitpicking" class="btn btn-primary" onclick="updatemsg(${importid})">更新库存</button><button class="btn btn-default" onclick="back();">返回</button></td>
                </tr>
              </tbody>
            </table>
          
          </div>
      
  </body>
</html>
