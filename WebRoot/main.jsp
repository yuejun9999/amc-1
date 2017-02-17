<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
 
<!DOCTYPE html>
<html>
  <head>
   <base href="<%=basePath%>">
   <meta charset="utf-8"> 
   <meta http-equiv="X-UA-Compatible" content="IE=edge"> 
   <meta name="viewport" content="width=device-width, initial-scale=1">
   
    <title>AMC管理系统</title>
	
    <meta name="keywords" content="keyword1,keyword2,keyword3">
    <meta name="description" content="AMC管理系统">
    <meta name="content-type" content="text/html; charset=UTF-8">
    <meta name="HandheldFriendly" content="True" />
    
    <link rel="stylesheet" type="text/css" href="css/menu.css">
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/dashboard.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/amc.css">
    

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  
  <body >
    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            
          </button>
          <!--  
          <p class="navbar-brand" href="#">今天的日期是: <%= (new java.util.Date()).toLocaleString()%></p>
          -->
          <a class="navbar-brand" href="main.jsp">AMC管理系统</a>
          <div id="userID" class="hidden">${sessionScope.user.getUserId()}</div>
          
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
          	<li class="dropdown">
  				<a href="javascript:void(0)" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
   					 ${user.getUserName()}
    					<span class="caret"></span>
 				</a>
 				<ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
    				<li id="changePassword"><a href="javascript:void(0)"><span class="glyphicon glyphicon-cog"></span> 修改密码</a></li>
    				<li role="separator" class="divider"></li>
    				<li><a href="#"><span class="glyphicon glyphicon-log-out"></span> 退出</a></li>
  				</ul>
 			</li>
 		  </ul>
  
</div>
          	
          </div>
         
        </div>
      </div>
    </nav>
     
    <div class="container-fluid">
      <div class="row">

        <div class="col-sm-3 col-md-2 sidebar panel-group table-responsive" role="tablist">
                    <div class="panel panel-primary leftMenu">
                        <!-- 利用data-target指定要折叠的分组列表 -->
                        <div class="panel-heading" id="collapseListGroupHeading1" data-toggle="collapse" data-target="#collapseListGroup1" role="tab" >
                            <h4 class="panel-title">
                                领导视图
                                <span class="glyphicon glyphicon-chevron-up right"></span>
                            </h4>
                        </div>
                        <!-- .panel-collapse和.collapse标明折叠元素 .in表示要显示出来 -->
                        <div id="collapseListGroup1" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="collapseListGroupHeading1">
                            <ul class="list-group">
                              <li class="list-group-item">
                                <!-- 利用data-target指定URL -->
                                <button class="menu-item-left" id="statistics">
                                    <span class="glyphicon glyphicon-triangle-right"></span>查询统计
                                </button>
                              </li>
                              
                            </ul>
                        </div>
                    </div><!--panel end-->
                    <div class="panel panel-primary leftMenu">
                        <div class="panel-heading" id="collapseListGroupHeading2" data-toggle="collapse" data-target="#collapseListGroup2" role="tab" >
                            <h4 class="panel-title">
                                销售管理
                                <span class="glyphicon glyphicon-chevron-down right"></span>
                            </h4>
                        </div>
                        <div id="collapseListGroup2" class="panel-collapse collapse" role="tabpanel" aria-labelledby="collapseListGroupHeading2">
                            <ul class="list-group">
                              <li class="list-group-item">
                                <button id="order-list" class="menu-item-left">
                                    <span class="glyphicon glyphicon-triangle-right"></span>订单列表
                                </button>
                              </li>
                              <li class="list-group-item">
                                <button id="order-add" class="menu-item-left">
                                    <span class="glyphicon glyphicon-triangle-right"></span>添加订单
                                </button>
                              </li>
                              <li class="list-group-item">
                                <button id="customer-list" class="menu-item-left">
                                    <span class="glyphicon glyphicon-triangle-right"></span>顾客列表
                                </button>
                              </li>
                              <li class="list-group-item">
                                <button id="customer-add" class="menu-item-left">
                                    <span class="glyphicon glyphicon-triangle-right"></span>添加顾客
                                </button>
                              </li>
                            </ul>
                        </div>
                    </div>  
                    <div class="panel panel-primary leftMenu">
                        <div class="panel-heading" id="collapseListGroupHeading3" data-toggle="collapse" data-target="#collapseListGroup3" role="tab" >
                            <h4 class="panel-title">
                                库存管理
                                <span class="glyphicon glyphicon-chevron-down right"></span>
                            </h4>
                        </div>
                        <div id="collapseListGroup3" class="panel-collapse collapse" role="tabpanel" aria-labelledby="collapseListGroupHeading2">
                            <ul class="list-group">
                              <li class="list-group-item">
                                <button id="picking-list" class="menu-item-left">
                                    <span class="glyphicon glyphicon-triangle-right"></span>备货单列表
                                </button>
                              </li>
                              <li class="list-group-item">
                                <button id="import" class="menu-item-left">
                                    <span class="glyphicon glyphicon-triangle-right"></span>进货通知单列表
                                </button>
                              </li>
                              <li class="list-group-item">
                                <button id="product-list" class="menu-item-left">
                                    <span class="glyphicon glyphicon-triangle-right"></span>产品管理
                                </button>
                              </li>
                              <li class="list-group-item">
                                <button id="product-add" class="menu-item-left">
                                    <span class="glyphicon glyphicon-triangle-right"></span>添加产品
                                </button>
                              </li>
                            </ul>
                        </div>
                    </div> 
                    <div class="panel panel-primary leftMenu">
                        <div class="panel-heading" id="collapseListGroupHeading4" data-toggle="collapse" data-target="#collapseListGroup4" role="tab" >
                            <h4 class="panel-title">
                                采购管理
                                <span class="glyphicon glyphicon-chevron-down right"></span>
                            </h4>
                        </div>
                        <div id="collapseListGroup4" class="panel-collapse collapse" role="tabpanel" aria-labelledby="collapseListGroupHeading2">
                            <ul class="list-group">
                              <li class="list-group-item">
                                <button id="outstock" class="menu-item-left">
                                    <span class="glyphicon glyphicon-triangle-right"></span>缺货单列表
                                </button>
                              </li>
                              <li class="list-group-item">
                                <button id="againorder" class="menu-item-left">
                                    <span class="glyphicon glyphicon-triangle-right"></span>再订货单列表
                                </button>
                              </li>
                              <li class="list-group-item">
                                <button id="supplier-list" class="menu-item-left">
                                    <span class="glyphicon glyphicon-triangle-right"></span>供应商列表
                                </button>
                              </li>
                              <li class="list-group-item">
                                <button id="supplier-add" class="menu-item-left">
                                    <span class="glyphicon glyphicon-triangle-right"></span>添加供应商
                                </button>
                              </li>
                            </ul>
                        </div>
                    </div> 
                    <div class="panel panel-primary leftMenu">
                        <div class="panel-heading" id="collapseListGroupHeading5" data-toggle="collapse" data-target="#collapseListGroup5" role="tab" >
                            <h4 class="panel-title">
                                财务管理
                                <span class="glyphicon glyphicon-chevron-down right"></span>
                            </h4>
                        </div>
                        <div id="collapseListGroup5" class="panel-collapse collapse" role="tabpanel" aria-labelledby="collapseListGroupHeading2">
                            <ul class="list-group">
                              <li class="list-group-item">
                                <button id="receivable"class="menu-item-left">
                                    <span class="glyphicon glyphicon-triangle-right"></span>应收账管理
                                </button>
                              </li>
                              <li class="list-group-item">
                                <button id="payable" class="menu-item-left">
                                    <span class="glyphicon glyphicon-triangle-right"></span>应付账管理
                                </button>
                              </li>
                              <li class="list-group-item">
                                <button id="saleAccount" class="menu-item-left">
                                    <span class="glyphicon glyphicon-triangle-right"></span>销售帐查询
                                </button>
                              </li>
                              <li class="list-group-item">
                                <button id="purchaseAccount" class="menu-item-left">
                                    <span class="glyphicon glyphicon-triangle-right"></span>采购业务帐查询
                                </button>
                              </li>
                            </ul>
                        </div>
                    </div> 
                    <div class="panel panel-primary leftMenu">
                        <div class="panel-heading" id="collapseListGroupHeading6" data-toggle="collapse" data-target="#collapseListGroup6" role="tab" >
                            <h4 class="panel-title">
                                人事管理
                                <span class="glyphicon glyphicon-chevron-down right"></span>
                            </h4>
                        </div>
                        <div id="collapseListGroup6" class="panel-collapse collapse" role="tabpanel" aria-labelledby="collapseListGroupHeading2">
                            <ul class="list-group">
                              <li class="list-group-item">
                                <button id="user-list"class="menu-item-left">
                                    <span class="glyphicon glyphicon-triangle-right"></span>用户列表
                                </button>
                              </li>
                              <li class="list-group-item">
                                <button id="user-add" class="menu-item-left">
                                    <span class="glyphicon glyphicon-triangle-right"></span>添加用户
                                </button>
                              </li>
                              
                            </ul>
                        </div>
                    </div> 
                </div>

        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main"  >
 	<div id="message-box"></div>
	<div id="workspace">
          <div class="jumbotron">
          <div class="row">
          <div class="col-md-4"><img src="pics/amc_main.jpg" class="img-rounded" width=100%></div>
          <div class="col-md-4"><img class="img-rounded" alt="" src="pics/amc_main2.jpg" width=100%></div>
          <div class="col-md-4"><img class="img-rounded" src="pics/amc_main3.png" width=100%></div>
          </div>
          <div class="row">
          <div class="col-md-4"><h3>高效沟通</h3><p class="small text-info">大幅度提升工作效率。</p></div>
          <div class="col-md-4"><h3>无纸化办公</h3><p class="small text-info">让环境保护更进一步。</p></div>
          <div class="col-md-4"><h3>数据可视化</h3><p class="small text-info">快速面板、一目了然。</p></div>
          </div>
          <h1 style="padding-top:20">欢迎使用AMC管理系统</h1>
          <p>开发者：王月君、李琦、刘艺珂、王玥、陈欠</p>
          <p><a class="btn btn-primary btn-lg" href="about.html" target="_blank" role="button">了解更多</a></p>
          </div>
          </div>
        </div>
      </div>
    <div id="modal-div">
    
    </div>
    
    
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    <script>
        $(function(){
            $(".panel-heading").click(function(e){
                /*切换折叠指示图标*/
                $(this).find("span").toggleClass("glyphicon-chevron-down");
                $(this).find("span").toggleClass("glyphicon-chevron-up");
            });
            $(".menu-item-left").click(function(e){
            if (this.id=="order-list"){
            	$("#workspace").load("orderList.do");
            }
            if (this.id=="order-add"){
            	$("#workspace").load("orderAdd.do");
            }
            if (this.id=="customer-list"){
            	$("#workspace").load("customerList.do");
            }
            if (this.id=="customer-add"){
            	$("#workspace").load("/amc/sale/CustomerAdd.jsp");
            }
            if (this.id=="picking-list"){
            	$("#workspace").load("pickingList.do");
            }
            if (this.id=="import"){
            	$("#workspace").load("importList.do");
            }
            if (this.id=="product-list"){
            	$("#workspace").load("productList.do");
            }
            if (this.id=="product-add"){
            	$("#workspace").load("productAdd1.do");
            }
            if (this.id=="outstock"){
            	$("#workspace").load("outstockList.do");
            }
            if (this.id=="againorder"){
            	$("#workspace").load("againorderList.do");
            }
            if (this.id=="supplier-list"){
            	$("#workspace").load("supplierList.do");
            }
            if (this.id=="supplier-add"){
            	$("#workspace").load("/amc/procurement/SupplierAdd.jsp");
            }
            if (this.id=="receivable"){
            	$.getJSON({
            	url:"receivable.do",
            	success: function(msg){
            		$.ajax({
            			url: "financial/receivable.html",
            			async: false,
            			method: "POST",
            			success: function(data) {
            				$("#workspace").html(data);
            			}
            		});
            		
            		htmltxt = "";
            		$.each(msg,function(i,item){
            			var receivableID = item.receivableID;
            			htmltxt+='<tr><td class="receivableid">'+receivableID+'</td>';
            			var drawBillDate = item.drawBillDate;
            			htmltxt+='<td class="drawBillDate">'+drawBillDate+'</td>';
            			var totalAccount = item.totalAccount;
            			htmltxt+='<td class="totalAccount">'+totalAccount+'</td>';
            			var parcelID = item.parcelID;
            			htmltxt+='<td class="parcelID">'+parcelID+'</td>';;
            			var payState = item.payState;
            			htmltxt+='<td class="payState">'+payState+'</td>';
            			var userID = item.userID;
            			console.log("User ID: "+userID);
            			htmltxt+='<td><button type="button" class="btn btn-default btn-sm receivableDetail">查看明细</button>';
            			if (payState!="已付款"){
            				htmltxt+='<button type="button" class="btn btn-default btn-sm confirmReceive">确认付款</button>';
            				currentUser=${sessionScope.user.getUserId()};
            				if (userID!=0){
            					htmltxt+='<a target="_blank" href="receivableReminder.do?receivableID='+receivableID+'&userID='+userID+'&currentUser='+currentUser+'" type="button" class="btn btn-default btn-sm reminder">查看催款单</a>';
            				}
            				else {
            					htmltxt+='<a target="_blank" href="receivableReminder.do?receivableID='+receivableID+'&userID=-1&currentUser='+currentUser+'" type="button" class="sign-reminder btn btn-default btn-sm reminder">开具催款单</a>';
            				}
            			}
            			htmltxt+="</td></tr>";
            			
            		});
            		
            		$("#receivable-table").html(htmltxt);
            		$.getScript("js/receivable.js");
            		console.log("Finished loading js");

            	}
            	});
            }
            
            if (this.id=="saleAccount") {
            	$("#workspace").load("saleAccount.do");
            }
            
            if (this.id=="payable"){
            	$("#workspace").load("payable.do");
            }
            
            if (this.id=="purchaseAccount"){
            	$("#workspace").load("purchaseAccount.do");
            }
            if (this.id=="user-list"){
            	$("#workspace").load("userList.do");
            }
            if (this.id=="user-add"){
            	$("#workspace").load("human/UserAdd.jsp");
            }
            
            if (this.id=="statistics"){
            	$("#workspace").load("statistics/statistics_main.html");
            }
            });
        });
        
        $("#changePassword").click(function(e){
        	$("#modal-div").load("changePassword.html");
        });
     </script>
  </body>
</html>
