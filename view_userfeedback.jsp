<%-- 
    Document   : view_userfeedback
    Created on : 21 Mar, 2023, 2:07:45 PM
    Author     : Snehal
--%>

<%-- 
    Document   : view_driverfeedback
    Created on : 17 Mar, 2023, 9:29:11 PM
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
        <title>view_user_feedback_Page</title>
        <link rel="stylesheet" href="bootstrap.min.css">
        <style>
            .driverfedback{
               margin: 20px;
                padding: 20px;
                background-color: white;
                 box-shadow: -7px -7px 20px rgba(0, 0, 0, 0.2),
                              7px  7px 20px rgba(0, 0, 0, 0.2)
            }
        </style>
    </head>
    <body>
        <%@include file="Header_Admin.jsp"%>
        <div class="container">
            <br>
            <center><h1><b>View Feedback</b></h1></center>
            <br>
            <%
           Connection cn=null;
    Statement st=null;
    int counter=1;
    
 try
      {
       Class.forName("com.mysql.jdbc.Driver");
           cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/SMART_CAB_SYSTEM","root","root");
           st=cn.createStatement();
           String sql="select * from user_feedback";
            ResultSet rs=st.executeQuery(sql);
            while(rs.next())
           
            {
            
            %>
                    
            <div class="driverfedback">
            <div class="row">
                <div class="col-sm-12">
                   
                   
                    <h3><b>user Name : </b><%=rs.getString("name_of_user")%></h3>
                    <h3><b>Contact : </b><%=rs.getString("contact")%></h3>
                    <h3><b>Email : </b><%=rs.getString("Email")%></h3>
                    <h3><b>Message : </b><%=rs.getString("Message")%></h3>
                     
<!--                     <div class="row">
                              <div class="col-sm-5"></div>
                <div class="col-sm-6">
                          <input  style="border:solid black;" type="submit" name="btn_save" class="btn btn-success" value="View">
                </div>
                              <div class="col-sm-3"></div>
                          </div>-->
                
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


