<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<html>
  <head>
     <META http-equiv="Content-Type" content="text/html;charset=UTF-8"/>  
   
	
     <SCRIPT LANGUAGE="Javascript" SRC="FusionCharts/FusionCharts.js"></SCRIPT>     
    
    
    
  </head>
  
  <body >
          <h2 class="sub-header">产品订单情况</h2>    
          <%
           String strDataURL="statistics/OrderData.jsp";
            
            //Create the chart - Pie 3D Chart with dataURL as strDataURL
            %> 
            <jsp:include page="../Includes/FusionChartsRenderer.jsp" flush="true"> 
                <jsp:param name="chartSWF" value="FusionCharts/FCF_Column3D.swf" /> 
                <jsp:param name="strURL" value="<%=strDataURL%>" /> 
                <jsp:param name="strXML" value="" /> 
                <jsp:param name="chartId" value="order_amount" /> 
                <jsp:param name="chartWidth" value="500" /> 
                <jsp:param name="chartHeight" value="300" />
                <jsp:param name="debugMode" value="false" /> 
                <jsp:param name="registerWithJS" value="false" />
            </jsp:include>
    
   
    
  </body>
</html>