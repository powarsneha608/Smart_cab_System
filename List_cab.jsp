


<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>List Cab</title>
        <link rel="stylesheet" href="bootstrap.min.css">
    </head>
    <body>
        <%@include file="Header_Driver.jsp"%>
         <div class="container-fluid" >
            
        <div class="row">
            <div class="col-sm-1">
                
            </div>
             <div class="col-sm-10">
                 
       <div class="container">
            <br>
            <br>
           <center> <h1 style="color:Blue"><b>Cab List</b></h1></center>
            <br>
            <br>
            <form action="List_cab.jsp" method="POST">
<!--                <div class="row">
                <div class="col-sm-6">
                    <input type="text" name="txt_name"  class="form-control">
                </div>
                     <div class="col-sm-6">
                    <input type="submit" name="btn_save" value="Search" class="btn btn-primary">
                     </div>
                </div>-->
            
            </form>
            <br>
            
        <table class="table table-bordered">
    <thead>
        <tr style="background-color: skyblue">
        <th><b>Cab id</b></th>
        <th><b>Driver name</b></th>
        <th><b>brand name</b></th>
        <th><b>Cab type</b></th>
        <th><b>cab no</b></th>
        <th><b>Cab chess no</b></th>
        <th><b>model</b></th>
        <th><b>rate</b></th>
        <th><b>fuel type</b></th>
        <th><b>Description</b></th>
         <th><b>image</b></th>
         <th><b>status</b></th>
        <th><b>Action</b></th>
        
      </tr>
           
    </thead>
    
        <%
    Connection cn=null;
   Statement st=null;
  int counter=1;
  
   String sql="";
           String fullname=request.getParameter("txt_name");
           String Search=request.getParameter("btn_save");
           
            if(Search!=null)
           {
           sql="select * from ADD_Cab_Details where driver_name='"+fullname+"'";
           }
           else
           {
           sql="select * from ADD_Cab_Details where driver_name='"+session.getAttribute("fullname")+"'";
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
           <form action="update_Add_cab.jsp" method="POST">
        <td><%=rs.getString("cab_id")%></td>
        <input value="<%=rs.getString("cab_id")%> "onkeypress="javascript:return isNumber(event)" type="hidden" name="txt_id" placeholder=" Brand id"  class="form-control">
        <td><%=rs.getString("driver_name")%></td>
        <input  value="<%=rs.getString("driver_name")%>" required=""  onkeypresss="javascript:return isString(event)"type="hidden" name="txt_cname" placeholder="Add Brand Name" class="form-control">
         <td><%=rs.getString("brand_name")%></td> 
          <input value="<%=rs.getString("brand_name")%>" required="" type="hidden" style=" border:solid black;" name="txt_bname" class="form-control">                          
         <td><%=rs.getString("cab_type")%></td> 
          <input type="hidden"value="<%=rs.getString("cab_type")%>" required="" style=" border:solid black;" name="txt_cabtype" class="form-control">
         <td><%=rs.getString("cab_no")%></td> 
         <input type="hidden"required="" value="<%=rs.getString("cab_no")%>" name="txt_no" placeholder="Enter cab no"  class="form-control">
         <td><%=rs.getString("cab_chess_no")%></td> 
         <input type="hidden" required="" value="<%=rs.getString("cab_chess_no")%>" name="txt_chno" placeholder="Enter Chess number"  class="form-control">
         <td><%=rs.getString("Cab_model")%></td> 
           <input required=""value="<%=rs.getString("Cab_model")%>" type="hidden" name="txt_model" placeholder="Cab Model"  class="form-control">
         <td><%=rs.getString("Km_rate")%></td> 
           <input type="hidden" required="" value="<%=rs.getString("Km_rate")%>"  name="txt_rate" class="form-control">
         <td><%=rs.getString("fuel_type")%></td> 
         <input  type="hidden" required="" value="<%=rs.getString("fuel_type")%>" style=" border:solid black;" name="txt_ftype" class="form-control">
         <td><%=rs.getString("Description")%></td>
           <input type="hidden" value="<%=rs.getString("Description")%>" name="discription">
           <td><img src="<%=rs.getString("Select_cab_image")%>" height="70" width="70"></td> 
           <input  value="<%=rs.getString("Select_cab_image")%>" type="hidden" name="file_image" placeholder="image" class="form-control">
            <td><%=rs.getString("status")%> </td>
       <input type="hidden"value="<%=rs.getString("status")%>"id="status" onkeypress="javascript:return isNumber(event)"  style=" border:solid black;" placeholder="status" name="status"  class="form-control">

           
         <td>
              <input type="submit" class="btn btn-success" name="btn_save" value="Update">
             <br>
             <br>   
            <input type="submit" class="btn btn-danger" name="btn_save" value="Delete">
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
 </div>
<div class="col-sm-1">
                
            </div>
 </div>
 </div>

    </body>
</html>

   
