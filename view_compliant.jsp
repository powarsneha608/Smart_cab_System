<%-- 
    Document   : view_compliant
    Created on : 20 Mar, 2023, 11:36:33 PM
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
        <title>view Compliant</title>
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
         <%@include file="Header_User.jsp"%>
        <div class="container">
            <br>
            <br>
             <center><h1><b>Your Compliant</b></h1></center>
            <br>
            <br>
            <form action="view_compliant.jsp" method="POST">
                <div class="row">
                    <div class="col-sm-4"></div>
                <div class="col-sm-4">
                    <input type="text" name="txt_id"  class="form-control">
                </div>
                     <div class="col-sm-2">
                    <input type="submit" name="btn_save" value="Search" class="btn btn-primary">
                     </div>
                </div>
                <br>
                <br>
           
         </form>
        
            <br>
            <%
           Connection cn=null;
    Statement st=null;
    int counter=1;
     String sql="";
           String Regid=request.getParameter("txt_id");
           String Search=request.getParameter("btn_save");
    if(Search!=null)
           {
           sql="select * from user_compliant where us_id='"+Regid+"'";
           }
           else 
           {
           sql="select * from user_compliant where us_id='"+session.getAttribute("us_id")+"'";
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
                <div class="col-sm-8">
                   
                   
                    <h5><b>User Name : </b><%=rs.getString("name_of_user")%></h5>
                    <br>
                    
                    <h5><b>Contact : </b><%=rs.getString("contact")%></h5>
                    <br>
                    <h5><b>Email : </b><%=rs.getString("Email")%></h5>
                    <br>
                    <h5><b>Title : </b><%=rs.getString("Compliant_tile")%></h5>
                    <br>
                    
                    <h5><b>Message : </b><%=rs.getString("message")%></h5>
                    <br>
                    
                    <h5><b>Description : </b><%=rs.getString("Description")%></h5>
                    <br>
                    
                       <%
         
         if(rs.getString("solution").equals("Pending"))
                         {
         %>
 <h5 style="color:red"><b>Solution : </b><%=rs.getString("solution")%></h5><%

         }else
                         {
%>

 <h5 style="color: green"><b>Solution : </b><%=rs.getString("solution")%></h5>             <%
}


%>
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



