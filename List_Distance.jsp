<%-- 
    Document   : List_Distance
    Created on : 24 Apr, 2023, 8:53:12 PM
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
        <title>List Distance</title>
        <link rel="stylesheet" href="bootstrap.min.css">
    </head>
    <body>
        <%@include file="Header_Admin.jsp"%>
       <div class="container">
            <br>
            <br>
           <center> <h1 style="color:Blue"><b>List Distance</b></h1></center>
            <br>
            <br>
            <form action="List_cab.jsp" method="POST">
                <div class="row">
                <div class="col-sm-5">
                    <input type="text" name="txt_id"  class="form-control">
                </div>
                     <div class="col-sm-4">
                    <input type="submit" name="btn_save" value="Search" class="btn btn-primary">
                     </div>
                </div>
            
            </form>
            <br>
        <table class="table table-bordered">
    <thead>
      <tr>
          
        <th><b>id</b></th>
        <th><b>Address To</b></th>
        <th><b>Address Form</b></th>
        <th><b>Distance(in Km)</b></th>
        <th><b>Action</b></th>
        
      </tr>
           
    </thead>
    
        <%
    Connection cn=null;
   Statement st=null;
  
       try
       {
           Class.forName("com.mysql.jdbc.Driver");
           cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/SMART_CAB_SYSTEM","root","root");
           st=cn.createStatement();
           String sql="select * from Admin_Add_Distance";
           ResultSet rs=st.executeQuery(sql);
           while(rs.next())
                             {
           %>
           <tbody>
            <tr>
                
           <form action="Update_Distance.jsp" method="POST">
        <td><%=rs.getString("id")%></td>
        <input value="<%=rs.getString("id")%> "onkeypress="javascript:return isNumber(event)" type="hidden" name="txt_id"   class="form-control">
        <td><%=rs.getString("add_to")%></td>
        <input  value="<%=rs.getString("add_to")%>" required=""  onkeypresss="javascript:return isString(event)"type="hidden" name="txt_picaddress" placeholder="Add Brand Name" class="form-control">
         <td><%=rs.getString("add_from")%></td> 
          <input value="<%=rs.getString("add_from")%>" required="" type="hidden" style=" border:solid black;" name="txt_dropaddress" class="form-control">                          
         <td><%=rs.getString("Distance")%></td> 
          <input type="hidden"value="<%=rs.getString("Distance")%>" required="" style=" border:solid black;" name="txt_dis" class="form-control">

        <td>
              <input type="submit" class="btn btn-success  " name="btn_save" value="Update">
               
            <input type="submit" class="btn btn-danger " name="btn_save" value="Delete">
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



</div>
    </body>
</html>



