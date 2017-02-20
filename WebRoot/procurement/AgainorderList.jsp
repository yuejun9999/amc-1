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

function viewoperation(id,state){
    $("#workspace").load("/amc/againorderDetail.do?id="+id+"&&state="+state);
};

</SCRIPT>
  </head>
  
  <body onload="onload()">
   
          <h1 class="sub-header">采购管理-再订货通知单列表</h1>
          <div class="table-responsive">
         
            <table id="t1" class="table table-striped">
              <thead>
                <tr>
                  <th>序号</th>
                  <th>再订货通知单编号</th>
                  <th>下单人员</th>
                  <th>下单时间</th>
                  <th>状态  </th>
                  <th>操作</th>
                </tr>
              </thead>
              <tbody>
                <c:forEach items="${againorderlist}" var="againorderlist">
                <tr>
                <td>${againorderlist.number}</td>
                <td>${againorderlist.againorderid}</td>
                <td>${againorderlist.username}</td>
                <td>${againorderlist.againordertime}</td>
                <td>${againorderlist.againorderstate}</td>
               
                <td > <button class="btn btn-default" onclick="viewoperation('${againorderlist.againorderid}','${againorderlist.againorderstate}')">查看并处理</button></td>
                </tr>
                </c:forEach>
              </tbody>
            </table>
          
          </div>
       
  </body>
</html>
