<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>

<html lang="en" class="full">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>AMC信息管理系统</title>

    <!-- Bootstrap core CSS -->
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="css/ie10-viewport-bug-workaround.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/full.css" rel="stylesheet">
    <link href="css/amc.css" rel="stylesheet">
    <script src="js/jquery-3.1.1.js"></script>

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    
    <script type="text/javascript">
  function login() {
  	var username = loginForm.username.value;
  	var password = loginForm.password.value;
  	data = "username="+username+"&password="+password;
	
	$.ajax({
		url: "login.do",
		data: data,
		type: "POST",
		success: function(msg) {
			if(msg!="登录成功！") {
				$("div#alertmessage").text(msg);
				$("div#alertmessage").addClass("alert alert-danger chinese");
			}
			else {
				window.location.href="main.jsp";
			}
			
		}
	});
	
};
</script>
  </head>

  <body>


    <!-- Put your page content here! -->
	<div class="full" id="all-div">
	<div class="container" id="login-div">

      <form name=loginForm class="form-signin" onsubmit="login()" target="empty" method="post">
        <h2 class="form-signin-heading">请登录</h2>
        <div id="alertmessage"></div>
        <label for="inputEmail" class="sr-only">电子邮箱</label>
        <input type="email" name="username" property="username" class="form-control" placeholder="电子邮箱" required autofocus>
        <label for="inputPassword" class="sr-only">密码</label>
        <input type="password" name="password" property="password" class="form-control" placeholder="密码" required>
        
        <button class="btn btn-lg btn-primary btn-block" >登录</button>
      </form>
      <iframe name="empty" style="display:none"></iframe>

    </div> <!-- /container -->
	</div>

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="js/ie10-viewport-bug-workaround.js"></script>
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>
