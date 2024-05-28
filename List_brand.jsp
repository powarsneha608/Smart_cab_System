

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>List brand</title>
        <link rel="stylesheet" href="bootstrap.min.css">
    </head>
    <body>
        <%@include file="Header_Admin.jsp"%>
         <div class="container">
            <br>
            <br>
           <center> <h1 style="color:Blue"><b>Brand List</b></h1></center>
            <br>
            <br>
            <form action="List_brand.jsp" method="POST">
                <div class="row">
                <div class="col-sm-8">
                    <input type="text" name="txt_bname"  class="form-control">
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
      <tr style="background-color:gray">
        <th><b>id</b></th>
        <th><b>Brand name</b></th>
        <th><b>Cab Type</b></th>
        <th><b>image</b></th>
        <th><b>Action</b></th>
       
      </tr>
    </thead>
    
        <%
    Connection cn=null;
   Statement st=null;
  
   
   String sql="";
           String brandname=request.getParameter("txt_bname");
           String Search=request.getParameter("btn_save");
           
            if(Search!=null)
           {
           sql="select * from brand_name where brand_name='"+brandname+"' ";
           }
           else
           {
           sql="select * from brand_name";
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
        <form action="update_Add_brand.jsp" method="POST">
            
        <td><%=rs.getString("brand_id")%></td>
       <input  type="hidden" name="txt_id" placeholder="Brand id"  value="<%=rs.getString("brand_id")%>" class="form-control">
        <td><%=rs.getString("brand_name")%></td>
        <input  type="hidden" name="txt_bname" placeholder="Add Brand Name"  value="<%=rs.getString("brand_name")%>" class="form-control">
          <td><%=rs.getString("cab_type")%></td> 
          <input type="hidden"value="<%=rs.getString("cab_type")%>" required="" style=" border:solid black;" name="txt_cabtype" class="form-control">
         <td><img src="<%=rs.getString("brand_image")%>" height="70" width="70"></td> 
         <input  type="hidden" name="file_image" placeholder="image"  value="<%=rs.getString("brand_image")%>" class="form-control">
       
         <td>
             <input type="submit" class="btn btn-success" name="btn_save" value="Update">
             <input type="submit" class="btn btn-danger" name="btn_save" value="Delete">
         </td>
          </form>         

      </tr>
    
           <%
           }
       }catch(Exception ex)
       {
           out.println(ex.toString());
       }
     

%>
        </tbody>
  </table>
        
         </div>


    </body>
</html>
