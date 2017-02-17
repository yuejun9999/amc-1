<% byte[] utf8Bom = new byte[]{(byte) 0xef, (byte) 0xbb, (byte) 0xbf};
String utf8BomStr = new String(utf8Bom,"UTF-8");
%><%=utf8BomStr%>
<?xml version='1.0' encoding='UTF-8'?>
<%@ page language="java" contentType="text/xml; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ include file="../Includes/DBConn.jsp" %><%@ page import="java.sql.Statement,java.sql.ResultSet"%><% 


//Database Objects - Initialization
    Statement st1=null;
    ResultSet rs1=null;

String strQuery="";
//strXML will be used to store the entire XML document generated
String strXML ="";
//Generate the chart element
strXML = "<graph  baseFontSize='18' decimalPrecision='0' showNames='1' numberSuffix=' Units' pieSliceDepth='30' formatNumberScale='0'>";

//Query to retrieve data about factory
strQuery = "select * from user_purchase";
//Create the statement
st1=oConn.createStatement();
//Execute the query
rs1=st1.executeQuery(strQuery);

 String Name=null;
String Amount=null;


while(rs1.next()) {
//    factoryId=rs1.getString("FactoryId");
    byte[] b = rs1.getBytes("userName");
    Name=new String (b, "UTF-8");
    Amount=rs1.getString("TotalAccount");

    //Now create second resultset to get details for this factory
 
    //Generate <set name='..' value='..'/> 
    strXML += "<set name='" + Name + "' value='" +Amount+ "' />";

}
//Finally, close <graph> element
strXML += "</graph>";

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
     System.out.println("Could not close the statement");
}
try {
     if(null!=oConn) {
          oConn.close();
          oConn=null;
     }
}catch(java.sql.SQLException e){
     System.out.println("Could not close the connection");
}

//Just write out the XML data
//NOTE THAT THIS PAGE DOESN'T CONTAIN ANY HTML TAG, WHATSOEVER
%><%=strXML%>