<%-- 
    Document   : Header_Driver
    Created on : 25 Mar, 2023, 2:31:25 PM
    Author     : Snehal
--%>


<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>header_driver </title>
        <link rel="stylesheet" href="bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    </head>
    <body>
      <nav style="background-color:yellow"  class="navbar navbar-expand-lg navbar-dark bg-dark ">
           <a class="navbar-brand" href="#"><img src="img/cabicon.png" style="width:50px;"></a>
  <a class="navbar-brand"  style="color:Red ;"href="#">Smart Cab System
  </a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
<!--      <li class="nav-item active">
        <a class="nav-link" href="DriverLogin.jsp">Login <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="DriverRegistration.jsp">Registration<span class="sr-only">(current)</span></a>
      </li>-->
  

        <li class="nav-item active">
        <a class="nav-link" href="Vahical_Type.jsp">Select Vehicle Type<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="Add_Cab.jsp">Add Cab<span class="sr-only">(current)</span></a>
      </li>
        <li class="nav-item active">
        <a class="nav-link" href="List_cab.jsp">Update your cab status<span class="sr-only">(current)</span></a>
      </li>
 <%
   String Cout1="";
 
           
try
{
   out.println(session.getAttribute("driver_id"));
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/SMART_CAB_SYSTEM","root","root");     
    Statement st=con.createStatement();
    String strQuery = "SELECT COUNT(*) FROM my_booking where driver_id='"+session.getAttribute("driver_id")+"' and (status ='Booked' or status='Confirm') ";
      
    ResultSet rs = st.executeQuery(strQuery);

    
      while(rs.next()){
      Cout1 = rs.getString(1);
     
       } 
    }
catch (Exception e){
    e.printStackTrace();
  }
  %>
  
   <%
   String Cout="";
  
           
try
{
    
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/SMART_CAB_SYSTEM","root","root");     
    Statement st=con.createStatement();
    String strQuery = "SELECT COUNT(*) FROM driver_compliant where driver_id='"+session.getAttribute("driver_id")+"' and solution !='Pending'";
      
    ResultSet rs = st.executeQuery(strQuery);

    
      while(rs.next()){
      Cout = rs.getString(1);
     
       } 
    }
catch (Exception e){
    e.printStackTrace();
  }
  %>
  
       <li class="nav-item active">
    <span class="badge badge-pill badge-primary" style="float:right;margin-bottom:-10px;"><%=Cout1%></span> <!-- your badge -->
    <a class="nav-link" href="List_myBooking.jsp"> Booking<span class="sr-only">(current)</span></a>
</li>
 <li class="nav-item dropdown active">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
         Add
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href="Driver_Compliant.jsp">Compliant</a>
          <a class="dropdown-item" href="Feedback_driver.jsp">Feedback</a>
        </div>
      </li>
<!--      <li class="nav-item active">
        <a class="nav-link" href="Driver_Compliant.jsp">Compliant<span class="sr-only">(current)</span></a>
      </li>-->
       <li class="nav-item active">
    <span class="badge badge-pill badge-primary" style="float:right;margin-bottom:-10px;"><%=Cout%></span> <!-- your badge -->
    <a class="nav-link" href="view_driverCompliant_List.jsp"> Compliant solution<span class="sr-only">(current)</span></a>
</li>
<!--      <li class="nav-item active">
        <a class="nav-link" href="Feedback_driver.jsp">Feedback<span class="sr-only">(current)</span></a>
      </li>-->
      
 <%
   String Cout2="";
  
           
try
{
    
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/SMART_CAB_SYSTEM","root","root");     
    Statement st=con.createStatement();
    String strQuery = "SELECT COUNT(*) FROM notice where status='Pending'";
      
    ResultSet rs = st.executeQuery(strQuery);

    
      while(rs.next()){
      Cout2= rs.getString(1);
     
       } 
    }
catch (Exception e){
    e.printStackTrace();
  }
  %>
    <li class="nav-item active">
    <span class="badge badge-pill badge-primary" style="float:right;margin-bottom:-10px;"><%=Cout2%></span> <!-- your badge -->
    <a class="nav-link"  href="view_Notice.jsp">Notice<span class="sr-only">(current)</span></a>
</li>   

<!--  <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#"  role="button" data-toggle="dropdown" aria-expanded="false">
          View
        </a>
        <div class="dropdown-menu">
          <a class="dropdown-item" href="view_Rules.jsp">Rules</a>
           <a class="dropdown-item" href="view_driverCompliant_List.jsp">View Compliant solution</a>
          <div class="dropdown-divider"></div>
        </div>
      </li>-->
      
    <li class="nav-item active">
        <a class="nav-link" href="view_Rules.jsp">Rules<span class="sr-only">(current)</span></a>
      </li>
      
     </ul>
<!--  <div  style="border: solid green" class="navbar">
  <a href="Profile.jsp"><i class="fa fa-fw fa-user" style='color:white'></i>Profile</a>
</div>-->
    
     <form  class="form my-2 my-lg-0">
       
       <h3> <a href="Profile.jsp"class="btn btn my-2 my-sm-0 fa fa-fw fa-user-circle" style="color: white">Profile</a></center></h3>
    </form>
&nbsp;
&nbsp;
&nbsp;
&nbsp;
&nbsp;
&nbsp;
&nbsp;
&nbsp;&nbsp;
&nbsp;
&nbsp;
&nbsp;

    <form  class="form-inline my-2 my-lg-0">
       
      <a href="index.html"class="btn btn-outline-danger my-2 my-sm-0">Logout</a></center>
    </form>
      
  </div>
</nav>
    </body>
</html>

<script src="https://code.jquery.com/jquery-3.6.4.min.js" integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>

