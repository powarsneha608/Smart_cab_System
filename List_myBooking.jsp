<%-- 
    Document   : List_myBooking
    Created on : 30 Mar, 2023, 7:01:33 AM
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
        <title>List booking_driver</title>
        <link rel="stylesheet" href="bootstrap.min.css">
    </head>
    <body>
          <%@include file="Header_Driver.jsp"%>
       <div class="container">
            <br>
            <br>
           <center> <h1 style="color:Blue"><b>Booking</b></h1></center>
            <br>
            <br>
            <form action="List_myBooking.jsp" method="POST">
<!--                <div class="row">
                <div class="col-sm-8">
                    <input type="text" name="txt_id"  class="form-control">
                </div>
                     <div class="col-sm-4">
                    <input type="submit" name="btn_save" value="Search" class="btn btn-primary">
                </div>
            </div>-->
            </form>
            <br>
            </div>
        <table class="table table-bordered">
    <thead>
        <tr style="background-color:skyblue">
         
        <th><b>#</b></th>
        <th><b>Name</b></th>
        <th><b>Contact Number</b></th>
        <th><b>Pic Address</b></th>
        <th><b>Drop Address</b></th>
        <th><b>Pic Time</b></th>
        <th><b>Drop Time</b></th>
        <th><b>Book date</b></th>
        <th><b>Pic Date</b></th>
        <th><b>Drop Date</b></th>
        <th><b>Distance</b></th>
        <th><b>rate</b></th>
        <th><b>Total amount</b></th>
        <th><b>Driver name</b></th>
        <th><b>brand name</b></th>
       
        <th><b>cab no</b></th>
        <th><b>OTP</b></th>
        <th><b>Status</b></th>
        <th><b>Action</b></th>
        
      </tr>
           
    </thead>
    
        <%
    Connection cn=null;
   Statement st=null;
   
  int counter=1;
    String sql="";
           String Regid=request.getParameter("txt_id");
           String Search=request.getParameter("btn_save");
           
            if(Search!=null)
           {
           sql="select * from My_Booking where driver_id ='"+Regid+"'";
           }
           else
           {
           sql="select * from My_Booking where driver_id='"+session.getAttribute("driver_id")+"' ORDER BY status='Pending' ASC ";
           }
       try
       {
           Class.forName("com.mysql.jdbc.Driver");
           cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/SMART_CAB_SYSTEM","root","root");
           st=cn.createStatement();
          // String sql="select * from My_Booking";
           ResultSet rs=st.executeQuery(sql);
           while(rs.next())
                             {
           %>
           <tbody>
            <tr>
                
                 <form action="update_mybooking.jsp" method="POST">
        <td><%=rs.getString("Booking_id")%></td>
         <input value="<%=rs.getString("Booking_id")%>" style=" border:solid black" onkeypress="javascript:return isNumbet(event)" type="hidden" name="txt_id" placeholder="Booking id" class="form-control">
         <td><%=rs.getString("driver_name")%></td>
         <input value="<%=rs.getString("driver_name")%>"required="" onkeypress="javascript:return isString(event)" type="hidden" name="txt_name" placeholder="Enter name" class="form-control">
         <td><%=rs.getString("contact")%></td>
        <input value="<%=rs.getString("contact")%>"style=" border:solid black;"  onkeypress="javascript:return isContactno(event)" type="hidden" name="contact" placeholder="Contact number" class="form-control">
        <td><%=rs.getString("pic_address")%></td>
         <input value="<%=rs.getString("pic_address")%>" type="hidden"style=" border:solid black;  " name="txt_picaddress" class="form-control" placeholder="Enter Pic Address" rows="1" cols="10">
               <td><%=rs.getString("drop_address")%></td>
               <input  value="<%=rs.getString("drop_address")%>" type="hidden"style=" border:solid black; " name="txt_dropaddress" class="form-control" placeholder="Enter drop Address" rows="1" cols="10">
             <td><%=rs.getString("pic_time")%></td>
           <input value="<%=rs.getString("pic_time")%>"style=" border:solid black;"  type="hidden"  name="txt_ptime"  class="form-control">
           <td><%=rs.getString("drop_time")%></td>
            <input value="<%=rs.getString("drop_time")%>"style=" border:solid black;"  type="hidden"  name="txt_dtime"  class="form-control">
            <td><%=rs.getString("Book_date")%></td>
            <input value="<%=rs.getString("Book_date")%>"style=" border:solid black;"  type="hidden"  name="txt_date" id="txt_date"  class="form-control">
            <td><%=rs.getString("pic_date")%></td>
            <input value="<%=rs.getString("pic_date")%>"style=" border:solid black;"  type="hidden" name="txt_pdate" id="txt_pdate"   class="form-control">
            <td><%=rs.getString("drop_date")%></td>
          <input value="<%=rs.getString("drop_date")%>"style=" border:solid black;"  type="hidden"name="txt_ddate" id="txt_ddate"class="form-control">
          <td><%=rs.getString("Distance")%></td>
           <input value="<%=rs.getString("Distance")%>"id="distance" type="hidden" required="" onkeypress="javascript:return isNumbet(event)" style=" border:solid black;" onkeyup="cal()" placeholder="Enter distance" name="txt_dis" class="form-control">

          <td><%=rs.getString("Rate")%></td>
         <input type="hidden"value="<%=rs.getString("Rate")%>"id="price"  onkeypress="javascript:return isNumber(event)" required="" style=" border:solid black;" placeholder="Enter rate meter" onkeyup="cal()" name="txt_rate" class="form-control">

         <td><%=rs.getString("total_amount")%></td>
          <input type="hidden"value="<%=rs.getString("total_amount")%>"id="totalamount" onkeypress="javascript:return isNumber(event)"  style=" border:solid black;" placeholder="Amount" name="txt_amount" onkeyup="cal()" class="form-control">
         
             
         <td><%=rs.getString("d_name")%></td>
        <input  value="<%=rs.getString("d_name")%>" required=""  onkeypresss="javascript:return isString(event)"type="hidden" name="txt_cname" placeholder="Add Brand Name" class="form-control">
         <td><%=rs.getString("brand_name")%></td> 
          <input value="<%=rs.getString("brand_name")%>" required="" type="hidden" style=" border:solid black;" name="txt_bname" class="form-control">                          
        <td><%=rs.getString("cab_no")%></td> 
         <input type="hidden"required="" value="<%=rs.getString("cab_no")%>" name="txt_no" placeholder="Enter cab no"  class="form-control">
         
         <td><%=rs.getString("otp")%></td>
<!--          <td><%=rs.getString("status")%> </td>
       <input type="hidden"value="<%=rs.getString("status")%>"id="status" onkeypress="javascript:return isNumber(event)"  style=" border:solid black;" placeholder="status" name="status"  class="form-control">-->
<%
         
         if(rs.getString("status").equals("Pending"))
                         {
         %>
         <td style="color: red"><%=rs.getString("status")%></td> 
       <input type="hidden"value="<%=rs.getString("status")%>"id="status" onkeypress="javascript:return isNumber(event)"  style=" border:solid black;" placeholder="status" name="status"  class="form-control">
<%

         }else
                         {
%>

<td style="color: green"><%=rs.getString("status")%></td> 
       <input type="hidden"value="<%=rs.getString("status")%>"id="status" onkeypress="javascript:return isNumber(event)"  style=" border:solid black;" placeholder="status" name="status"  class="form-control">
             <%
}


%>
       
 <td>
             <input value="<%=rs.getString("Booking_id")%>" style=" border:solid black" onkeypress="javascript:return isNumbet(event)" type="hidden" name="txt_id" placeholder="Booking id" class="form-control">
             <input type="hidden"value="<%=rs.getString("total_amount")%>"id="totalamount" onkeypress="javascript:return isNumber(event)"  style=" border:solid black;" placeholder="Amount" name="txt_amount" onkeyup="cal()" class="form-control">
          
<%
            
            if(rs.getString("status").equals("Confirm"))
                               {
            
%>
              <input type="submit" class="btn btn-success" name="btn_save" value="Update">
<!--               <input type="submit" class="btn btn-danger" name="btn_save" value="Delete">-->
              <%
}              
%>
<%
            
            if(rs.getString("status").equals("Booked"))
                               {
            
%>
              <input type="submit" class="btn btn-success" name="btn_save" value="Update">
<!--               <input type="submit" class="btn btn-danger" name="btn_save" value="Delete">-->
              <%
}              
%>

             <br>
             
         </td>  
<!--         <td>
              <input type="submit" class="btn btn-success" name="btn_save" value="Update">
             <br>
             <br>   
            <input type="submit" class="btn btn-danger" name="btn_save" value="Delete">
         </td>-->
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

   
