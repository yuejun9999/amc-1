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
function updatemsg(id){
  $.ajax({
        data:$('#userupdate').serialize(),// 你的formid
        async: true,
        cache:true,
		url: "userUpdate2.do?id="+id,
		type: "POST",
		success: function(msg) {
			console.log(msg);
			if(msg=="SUCCESS"){
				$("#message-box").removeClass();
				$("#message-box").show();
				$("#message-box").text("操作成功！").fadeOut(5000);
				$("#message-box").addClass("alert alert-success");
			}
			else{
				$("#message-box").removeClass();
				$("#message-box").show();
				$("#message-box").text(msg).fadeOut(5000);
				$("#message-box").addClass("alert alert-danger");
			}
			$("#workspace").load("userList.do");
			$("#updateUserModal").modal("hide");
			 
			
		}
	});
	
};
</SCRIPT>
  </head>
  
  <body >
   <div class="modal fade" id="updateUserModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">添加用户</h4>
      </div>
         
          <form id="userupdate" target="empty" onsubmit="updatemsg(${userid})">
          <div class="modal-body">
          	<div id="alert-div-update-user"></div>
            <table class="table table-striped">  
      <tr>   
        <th colspan="2">编辑用户信息</th>   
      </tr>    
      <tr>  
        <td>用户名</td>  
        <td><input  type="text" name="username" value="${username}" required /></td>    
      </tr>  
      <tr>  
        <td>员工姓名</td>  
        <td><input  type="text" name="staffname" value="${staffname}" required/></td>   
      </tr>  
      <tr>  
        <td>工作部门</td>  
        <td><select id="select_depart" name="department">
        <option value="人事">人事</option>
        <option value="财务">财务</option>
        <option value="仓库">仓库</option>
        <option value="销售">销售</option>
        <option value="采购">采购</option>
        <option value="总公司">总公司</option>
       </select></td>
        <script language="javascript">select("select_depart",'${department}');</script>  
      </tr>  
      <tr>  
        <td>职称</td>  
        <td><select id="select_title" name="stafftitle"><option value="经理">经理</option>
        <option value="普通员工">普通员工</option>
        </select></td>
        <script language="javascript">select("select_title",'${stafftitle}');</script>
      </tr>  
      
    </table> 
    </div>
    <div class="modal-footer">
      	<button type="submit" class="btn btn-primary">确认修改</button>
        <button id="close" type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
      </div>
    </form>
      
    </div>
  </div>
</div>
<iframe name="empty" style="display:none"></iframe>
          
      <script type="text/javascript">
      $("#updateUserModal").modal("show");
      </script> 
     
  </body>
</html>
