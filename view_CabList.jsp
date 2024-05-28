    <%-- 
    Document   : view_CabList
    Created on : 15 Mar, 2023, 9:43:28 PM
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
        
        <title>view Cab</title>
        <link rel="stylesheet" href="bootstrap.min.css">
        <style>
        .Cab{
               hight:100%;
                margin: 10px;
                padding: 10px;
                background-color:white;
                border-color: black;
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
            <center><h1 style="color:black"><b>CAB DETAILS</b></h1></center>
            <br>
              <hr style="height:2px;border-width:0;color:white;background-color:black">
      
              <br>
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
           String sql="select * from add_cab_details where brand_name='"+session.getAttribute("brand_name")+"' and status='Active'";
            ResultSet rs=st.executeQuery(sql);
            while(rs.next())
            {

      %>
     <div class="Cab">
         <form action="view_cab_List" method="POST">
                <div class="row">
                    <div class="col-sm-4">
                    
                        <img src="<%=rs.getString("Select_cab_image")%>" width="250" height=350">
         </div>
                    <div class="col-sm-8">
         
         
          <input  value="<%=rs.getString("driver_name")%>"  type="hidden" name="txt_cname">
          <input value="<%=rs.getString("brand_name")%>" type="hidden" name="txt_bname" >
          <input  value="<%=rs.getString("cab_no")%>"  type="hidden" name="txt_no" >
         

               <input  type="hidden" name="txt_id"  value="<%=rs.getString("driver_id")%>" class="form-control">
           
         <h2 style="color:red"><b><%=rs.getString("brand_name")%></b></h2> 
         <br>
           <h5 style="color:blue">Driver Name :<%=rs.getString("driver_name")%></h5>
         <p style="color:black">Cab Number :<%=rs.getString("cab_no")%></p>  
         <p style="color:black"> Model :<%=rs.getString("Cab_model")%></p>  

           <p style="color:gray">(<%=rs.getString("Description")%>)</p>
            <p style="color:gray">Fuel Type : <%=rs.getString("fuel_type")%></p>
           <p style="color:gray">Rate(in per km): <%=rs.getString("Km_rate")%></p>
            <input  type="hidden" name="txt_rate"  value="<%=rs.getString("Km_rate")%>" class="form-control">
            <br>
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
    </body>
</html>

