<%-- 
    Document   : view_Compliant_List
    Created on : 20 Mar, 2023, 11:27:14 PM
    Author     : Snehal
--%>





<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>view driver Compliant</title>
        <link rel="stylesheet" href="bootstrap.min.css">
        <style>
            .compliant{
                margin: 20px;
                padding: 20px;
                background-color: white;
                 box-shadow: -7px -7px 20px rgba(0, 0, 0, 0.2),
                              7px  7px 20px rgba(0, 0, 0, 0.2)
            }
        </style>
    </head>
    <body>
          <%@include file="Header_Driver.jsp"%>
         <div class="container">
            <br>
            <br>
             <center><h1><b>View driver Compliant</b></h1></center>
            <br>
            <br>
            <form action="view_driverCompliant_List.jsp" method="POST">
                <div class="row">
                    <div class="col-sm-4"></div>
                <div class="col-sm-6">
                    <input type="text" name="txt_id"  class="form-control">
                </div>
                     <div class="col-sm-2">
                    <input type="submit" name="btn_save" value="Search" class="btn btn-primary">
                     </div>
                </div>
                <br>
                <br>
            </div>
         </form>
        <div class="container">
           
            <%
           Connection cn=null;
    Statement st=null;
    int counter=1;
 
    String sql="";
           String Regid=request.getParameter("txt_id");
           String Search=request.getParameter("btn_save");
    if(Search!=null)
           {
           sql="select * from driver_compliant where driver_id='"+Regid+"'";
           }
           else 
           {
           sql="select * from driver_compliant where driver_id='"+session.getAttribute("driver_id")+"'";
           }
 try
      {
       Class.forName("com.mysql.jdbc.Driver");
           cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/SMART_CAB_SYSTEM","root","root");
           st=cn.createStatement();
          
            ResultSet rs=st.executeQuery(sql);
            while(rs.next())
           
            {
            
            %>
                    
            <div class="compliant">
            <div class="row">
                <div class="col-sm-12">
                   
                   
                    <p><b>Driver Name : </b><%=rs.getString("name_of_driver")%></p>
                    <p><b>Contact: </b><%=rs.getString("contact")%></p>
                    <p><b>Email : </b><%=rs.getString("Email")%></p>
                    <p><b>Title : </b><%=rs.getString("Compliant_tile")%></p>
                    <p><b>Message : </b><%=rs.getString("message")%></p>
                    <p><b>Description : </b><%=rs.getString("Description")%></p>
                    
                    
                    <p><b>Solution : </b><%=rs.getString("solution")%></p>
                    </div>
            </div>
                     
                
            </div>
              <%
              
              }
}catch(Exception ex)
{
System.out.println(ex.toString());
}
              %>
              
        </div>
    </body>
</html>


