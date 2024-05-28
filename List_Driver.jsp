<%-- 
    Document   : List_Driver
    Created on : 7 Apr, 2023, 12:03:01 PM
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
        <title>List driver</title>
        <link rel="stylesheet" href="bootstrap.min.css">
    </head>
    <body>
         <%@include file="Header_Admin.jsp"%>
    <div class="container">
            <br>
            <br>
           <center> <h1 style="color:Blue"><b>Driver List</b></h1></center>
            <br>
            <br>
            <form action="List_Driver.jsp" method="POST">
                <div class="row">
                <div class="col-sm-10">
                    <input type="text" name="txt_name"  class="form-control">
                </div>
                     <div class="col-sm-2">
                    <input type="submit" name="btn_save" value="Search" class="btn btn-primary">
                     </div>
                </div>
            </div>
    <br>
    <br>
        <table class="table table-bordered">
            
    <thead>
      <tr>
        <th><b>id</b></th>
        <th> <b>Driver name</b></th>
        <th><b>Contact</b></th>
        <th><b>Email</b></th>
<!--        <th><b>Action</b></th>-->
        
      </tr>
    </thead>
    
        <%
    Connection cn=null;
   Statement st=null;
  int counter=1; 
   String sql="";
   
           String name=request.getParameter("txt_name");
           String Search=request.getParameter("btn_save");
           
            if(Search!=null)
           {
           sql="select * from driver_registration driver_name ='"+name+"' ";
           }
           else
           {
           sql="select * from driver_registration";
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
           <tbody>
                
            <tr>
               

             
        <td><%=rs.getString("driver_id")%></td>
        <input  value="<%=rs.getString("driver_id")%>"onkeypress="javascript:return isNumber(event)" type="hidden" name="txt_id" placeholder=" Compliant id"  class="form-control">

        <td><%=rs.getString("fullname")%></td>
         <input value="<%=rs.getString("fullname")%>" onkeypress="javascript:return isString(event)" type="hidden" name="txt_fname" placeholder="Enter Name" class="form-control">

         <td><%=rs.getString("contact")%></td> 
         <input value="<%=rs.getString("contact")%>"type="hidden" name="txt_no" placeholder="Enter contact"  class="form-control">

         <td><%=rs.getString("email")%></td> 
          <input value="<%=rs.getString("email")%>"onkeypress="javascript:return isNumber(event)"maxlength="10" type="hidden"    name="txt_email" placeholder="Enter Email id" class="form-control">

         

<!--
         <td>
              <input type="submit" class="btn btn-success" name="btn_save" value="Update">
             <input type="submit" class="btn btn-danger" name="btn_save" value="Delete ">
           
         </td>-->


      </tr>
                
    </tbody>
           <%
           }
       }catch(Exception ex)
       {
           out.println(ex.toString());
       }
     

%>
     
  </table>




    </body>
</html>

    


