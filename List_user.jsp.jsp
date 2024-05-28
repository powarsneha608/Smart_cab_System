<%-- 
    Document   : My_Booking_user
    Created on : 15 Apr, 2023, 6:56:52 PM
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
        <title>List My_Booking1</title>
        <link rel="stylesheet" href="bootstrap.min.css">
    </head>
    <body>
       <div class="container">
            <br>
            <br>
           <center> <h1 style="color:Blue"><b>BOOKING List</b></h1></center>
            <br>
            <br>
            <form action="List_myBooking.jsp" method="POST">
                <div class="row">
                <div class="col-sm-8">
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
        
<!--        <th><b>Action</b></th>-->
        
      </tr>
           
    </thead>
    
        <%
    Connection cn=null;
   Statement st=null;
   
  int counter=1;
    String sql="";
           String bookingid=request.getParameter("txt_id");
           String Search=request.getParameter("btn_save");
           
            if(Search!=null)
           {
           sql="select * from My_Booking where Booking_id ='"+bookingid+"'";
           }
           else
           {
           sql="select * from My_Booking";
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
         
<!--          <td><%=rs.getString("status")%> </td>
       <input type="hidden"value="<%=rs.getString("status")%>"id="status" onkeypress="javascript:return isNumber(event)"  style=" border:solid black;" placeholder="status" name="status"  class="form-control">

         -->

       
         <td>
              <input type="submit" class="btn btn-success" name="btn_save" value="Save">
             <br>
             <br>   
<!--            <input type="submit" class="btn btn-danger" name="btn_save" value="Delete">-->
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

    </body>
</html>



