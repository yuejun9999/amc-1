<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="../Includes/DBConn.jsp"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.Date"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
 
<!DOCTYPE html>
<html>
  <head>
   
	
     <SCRIPT LANGUAGE="Javascript" SRC="FusionCharts/FusionCharts.js"></SCRIPT>     
    
    
  </head>
  
  <body >
          <h2 class="sub-header">销售总额情况</h2>
          
            
           <%
            /*
            In this example, we show how to connect FusionCharts to a database.
            For the sake of ease, we've used a database which contains two tables, which are linked to each
            other. 
            */
    
            //Database Objects - Initialization
            Statement st1;
            ResultSet rs1;
    
            String strQuery="";

            //strXML will be used to store the entire XML document generated
            String strXML="";
    

            //Generate the chart element
            strXML = "<graph  decimalPrecision='0' baseFontSize='18' showNames='1' numberSuffix=' Units' pieSliceDepth='30' formatNumberScale='0'>";
    
            //Construct the query to retrieve data
            strQuery = "select * from sale_account";
    
             st1=oConn.createStatement();
            rs1=st1.executeQuery(strQuery);

            Date Name=null;
            String Amount=null;
            String totalOutput="";
            //Iterate through each factory 
            while(rs1.next()) {
        
                Name=rs1.getDate("Time");
                Amount=rs1.getString("TotalAccount");
                //Now create second recordset to get details for this factory

                //Generate <set name='..' value='..'/> 
                strXML += "<set name='" + Name + "' value='" +Amount+ "'/>";
                //Close resultset

            } //end of while
            //Finally, close <graph> element
            strXML += "</graph>";
            //close the resulset,statement,connection
            try {
                if(null!=rs1){
                    rs1.close();
                    rs1=null;
            }
            }catch(java.sql.SQLException e){
                //do something
                System.out.println("Could not close the resultset");
            } 
            try {
                if(null!=st1) {
                    st1.close();
                    st1=null;
            }
            }catch(java.sql.SQLException e){
                //do something
                System.out.println("Could not close the statement");
            }
            try {
                if(null!=oConn) {
                    oConn.close();
                    oConn=null;
                }
            }catch(java.sql.SQLException e){
                //do something
                System.out.println("Could not close the connection");
            }

            //Create the chart - Pie 3D Chart with data from strXML 
            %> 
            <jsp:include page="../Includes/FusionChartsRenderer.jsp" flush="true"> 
                <jsp:param name="chartSWF" value="FusionCharts/FCF_Line.swf" /> 
                <jsp:param name="strURL" value="" /> 
                <jsp:param name="strXML" value="<%=strXML %>" /> 
                <jsp:param name="chartId" value="saleaccount" /> 
                <jsp:param name="chartWidth" value="500" /> 
                <jsp:param name="chartHeight" value="300" />
                <jsp:param name="debugMode" value="false" /> 
                <jsp:param name="registerWithJS" value="false" />
            </jsp:include>
    
   
    
  </body>
</html>