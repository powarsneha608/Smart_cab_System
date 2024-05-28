<%-- 
    Document   : List_Rule
    Created on : 8 Mar, 2023, 8:05:26 PM
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
        <title>List Driver Rules</title>
        <link rel="stylesheet" href="bootstrap.min.css">
    </head>
    <body>
        <%@include file="Header_Admin.jsp"%>
          <div class="container">
            <br>
            <br>
           <center> <h1 style="color:Blue"><b>Rules List</b></h1></center>
            <br>
            <br>
<!--            <form action="List_Rule.jsp" method="POST">-->
<!--                <div class="row">
                <div class="col-sm-10">
                    <input type="text" name="txt_id"  class="form-control">
                </div>
                     <div class="col-sm-2">
                    <input type="submit" name="btn_save" value="Search" class="btn btn-primary">
                     </div>
                </div>
            </form>
            </div>-->
          <br>
          <br>
        <table class="table table-bordered">
    <thead>
      <tr>
        <th><b>no</b></th>
        <th><b>Rules</b></th>
        <th><b>Description</b></th>
        <th><b>Action</b></th>
        
      </tr>
    </thead>
    
        <%
    Connection cn=null;
   Statement st=null;
   int counter=1;
  
       try
       {
           Class.forName("com.mysql.jdbc.Driver");
           cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/SMART_CAB_SYSTEM","root","root");
           st=cn.createStatement();
           String sql="select * from rules ;";
           ResultSet rs=st.executeQuery(sql);
           while(rs.next())
                             {
           %>
           <tbody>
            <tr>
          <form action="update_rules.jsp" method="POST">
              
        <td><%=rs.getString("rules_no")%></td>
          <input type="hidden" value="<%=rs.getString("rules_no")%>" type="text" name="txt_id" onkeypress="Javascript:return isNumber(event)" placeholder="Enter Number" class="form-control">

        <td><%=rs.getString("Rules")%></td>
         <input type="hidden" value="<%=rs.getString("Rules")%>"style="border:solid black;" type="text" name="txt_rules" class="form-control" onkeypress="Javascript:return isString(event)" placeholder="Enter Rules" rows="2" cols="15">

         <td><%=rs.getString("Description")%></td> 
         <input type="hidden" value="<%=rs.getString("Description")%>"style="border:solid black;" type="text" name="txt_description" class="form-control"onkeypress="Javascript:return isString(event)" placeholder="Enter Description" rows="2" cols="15">

         


         <td>
              <input type="submit" class="btn btn-success" name="btn_save" value="Update">
             <input type="submit" class="btn btn-danger" name="btn_save" value="Delete ">
           
         </td>
          </form>
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



