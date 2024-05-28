<%-- 
    Document   : view_brandList
    Created on : 15 Mar, 2023, 7:36:22 PM
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
        <title>view_brand_List</title>
        <link rel="stylesheet" href="bootstrap.min.css">
        <style>
            .brand
             {
     width: 25%;
     display: inline-block;
                margin: 40px;
                padding: 20px;
                background-color: whitesmoke;
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
           <center> <h1 style="color:red"><b>Brands View</b></h1></center>
            <br>
            <br>
             <div class="row"> 
      <%   
          
          Connection cn=null;
          Statement st=null;
          int counter=1;
      try
      {
            Class.forName("com.mysql.jdbc.Driver");
           cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/SMART_CAB_SYSTEM","root","root");
           st=cn.createStatement();
           String sql="select * from brand_name  where cab_type='"+session.getAttribute("cab_type")+"'";
            ResultSet rs=st.executeQuery(sql);
            while(rs.next())
            {
       
      %>
      
      
      
       <div class="brand">
          <form action="view_Brand" method="POST">
                <div class="row">
                  <div class="col-sm-1"></div>
                    <div class="col-sm-8">
          <img src="<%=rs.getString("brand_image")%>" style="width: 120%; height: 250px">
         <br>
         <br>
         <h6>Vehicle Type:<%=rs.getString("cab_type")%></h6>
         <center> <h5> <%=rs.getString("brand_name")%></h5></center>
         <input type="hidden" name="txt_bname" value="<%=rs.getString("brand_name")%>">
              
        
                    </div>
          <div class="col-sm-1"></div>
                </div>
              
           <div class="row">
                 <div class="col-sm-4"></div>   
                    <div class="col-sm-4">
           <input type="submit" name="btn_save" value="Select" class="btn btn-primary" class="form-control">
            </div>

         <div class="col-sm-4"></div>
                </div>
         </form>
            </div>

         
    <%
        }
     }catch(Exception ex)
    {
    out.println(ex.toString());

     }
    %>
             </div>  
              </div>  
    </body>
</html>


             
           
            
             
