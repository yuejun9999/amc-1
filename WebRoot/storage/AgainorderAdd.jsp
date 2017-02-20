<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%request.setCharacterEncoding("UTF-8");%>  
<%response.setCharacterEncoding("UTF-8");%>
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
function find(id){
 return document.getElementById(id);
}
function select(id,selectvalue){
  m=find(id);
  for(i=0;i<=m.options.length;i++){
    if(m.options[i].value==selectvalue){
    m.options[i].selected=true;
    break;}
  }
}
function addmsg(){
  $.ajax({
        data:$('#againorderadd').serialize(),// 你的formid
        async: false,
        cache:true,
		url: "againOrderAdd1.do",
		type: "POST",
		success: function(msg) {
			alert(msg);
			 
			
		}
	});
	
};
</SCRIPT>
  </head>
  
  <body >

          <h1 class="sub-header">库存管理-编辑再订货通知单</h1>
          <div class="table-responsive">
          
          <form id="againorderadd" target="empty" onsubmit="addmsg();">
             <table class="table table-striped">
     <tr>   
        <th colspan="8">编辑再订货通知单详情</th>   
      </tr>
      <tr>
      <th>序号</th><th>产品编号</th><th>产品名称</th><th>型号</th><th>安全库存量</th><th>需求量</th>
      </tr>
      <c:forEach items="${againorder}" var="againorder">
      <tr>
      <td >${againorder.ids}</td>
      <td ><input id="productid" name="productid" value="${againorder.productid}" readonly="readonly"/></td>
      <td>${againorder.productname}</td>
      <td>${againorder.productsize}</td>
      <td>${againorder.safenum}</td>
      <td><input id="demond" name="demond" value="${againorder.safenum }" size=10/></td>
      </tr>
      </c:forEach>
       <tr>
      <td colspan="6">
  <input class="btn btn-primary" type="submit"  value="提交"/>   <input class="btn btn-default" type="reset" value="重置"/>
      </td>
      </tr>
    </table>
    <iframe name="empty" style="display:none"></iframe>
    </form>
           
          </div>
        
  </body>
</html>
