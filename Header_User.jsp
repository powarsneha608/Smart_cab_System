<%-- 
    Document   : Header_User
    Created on : 25 Mar, 2023, 2:28:55 PM
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
        <title>header_user</title>
        <link rel="stylesheet" href="bootstrap.min.css">
    </head>
    <body>
       <nav style="background-color:yellow"  class="navbar navbar-expand-lg navbar-dark bg-dark ">
           <a class="navbar-brand" href="#"><img src="img/cabicon.png" style="width:50px;"></a>
           <a class="navbar-brand"style="color:Red ;" href="#">Smart Cab System </a>
           
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">

      <li class="nav-item active">
        <a class="nav-link" href="User_Vahical_Type.jsp">Select Vehical<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="view_brandList.jsp">View Brand<span class="sr-only">(current)</span></a>
      </li>
       <li class="nav-item active">
        <a class="nav-link" href="view_CabList.jsp">View Cab<span class="sr-only">(current)</span></a>
      </li>
       <li class="nav-item active">
        <a class="nav-link" href="My_Booking.jsp">Booking<span class="sr-only">(current)</span></a>
      </li>
       <li class="nav-item active">
        <a class="nav-link" href="Payment_Method.jsp">Payment<span class="sr-only">(current)</span></a>
      </li>
       <li class="nav-item active">
        <a class="nav-link" href="Compliant.jsp">Compliant<span class="sr-only">(current)</span></a>
      </li>
       <li class="nav-item active">
        <a class="nav-link" href="userfeedback.jsp">Feedback<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-expanded="false">
         View
        </a>
        <div class="dropdown-menu">
          <a class="dropdown-item" href="view_Rule.jsp">Rules</a>
            <a class="dropdown-item" href="List_booking_user.jsp">My Booking </a>
        </li>
       <%
   String Cout1="";
 
           
try
{
    
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/SMART_CAB_SYSTEM","root","root");     
    Statement st=con.createStatement();
    String strQuery = "SELECT COUNT(*) FROM my_booking where us_id='"+session.getAttribute("us_id")+"'and(status='Booked' or status='Confirm')";
      
    ResultSet rs = st.executeQuery(strQuery);

    
      while(rs.next()){
      Cout1 = rs.getString(1);
     
       } 
    }
catch (Exception e){
    e.printStackTrace();
  }
  %>
      
          <li class="nav-item">
    <span class="badge badge-pill badge-primary" style="float:right;margin-bottom:-10px;"><%=Cout1%></span> <!-- your badge -->
    <a class="nav-link" href="List_Booking_driver.jsp">Booking status<span class="sr-only">(current)</span></a>
</li>
          
       

 <%
   String Cout="";
  
           
try
{
    
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/SMART_CAB_SYSTEM","root","root");     
    Statement st=con.createStatement();
    String strQuery = "SELECT COUNT(*) FROM user_compliant where us_id='"+session.getAttribute("us_id")+"' and solution !='Pending'";
      
    ResultSet rs = st.executeQuery(strQuery);

    
      while(rs.next()){
      Cout = rs.getString(1);
     
       } 
    }
catch (Exception e){
    e.printStackTrace();
  }
  %>
  
 
           <li class="nav-item">
    <span class="badge badge-pill badge-primary" style="float:right;margin-bottom:-10px;"><%=Cout%></span> <!-- your badge -->
    <a class="nav-link" href="view_compliant.jsp">Compliant Solution<span class="sr-only">(current)</span></a>
</li>
 <li class="nav-item">
            <!-- your badge -->
    <a class="nav-link" href="user_Report.jsp">Receipt<span class="sr-only">(current)</span></a>
</li>
    </ul>


 
     <div class="navbar ">
         <a href="Profile_user.jsp" ><i class='btn btn-success fa fa-user'>Profile</i></a>
</div>
    
   
        <form  class="form my-2 my-lg-0">
       
      <a  style="background-color: red ;width:100%" type="submit" name="btn_save"  class="btn btn-primary" href="index.html">Logout</a>
    </form>
              <!--<a  style="background-color: red ;width:100%" type="submit" name="btn-save"  class="btn btn-primary" href="index.html">Logout</a>-->
      
      </div>
</nav>
    


<script src="https://code.jquery.com/jquery-3.6.4.min.js" integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
</body>
</html>