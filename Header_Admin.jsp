<%-- 
    Document   : Header_Admin
    Created on : 25 Mar, 2023, 2:24:47 PM
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
        <title>header_Admin</title>
        <link rel="stylesheet" href="bootstrap.min.css">
    </head>
    <body>
        <nav style="background-color:yellow"  class="navbar navbar-expand-lg navbar-dark bg-dark ">
    <a class="navbar-brand" href="#"><img src="img/cabicon.png" style="width:40px;"></a>
  <a class="navbar-brand" style="color:Red ;"href="#">Smart Cab System</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
<!--      <li class="nav-item active">
        <a class="nav-link" href="Login.jsp">Login<span class="sr-only">(current)</span></a>
      </li>
    <li class="nav-item active">
        <a class="nav-link" href="AdminRegistration.jsp">Registration<span class="sr-only">(current)</span></a>
      </li>-->
 <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
         Add Details
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href="Add_Brand.jsp">Add Brands</a>
          <a class="dropdown-item" href="Rules.jsp">Add Driver Rules</a>
          <a class="dropdown-item" href="Rule.jsp">Add User Rule</a>
           <a class="dropdown-item" href="Notise.jsp"> Add Notice</a>
          <a class="dropdown-item" href="Admin_Add_Distance.jsp">Add Route</a>
          <a class="dropdown-item" href="List_Distance.jsp">Route List</a>
           <a class="dropdown-item" href="Add_Rate.jsp">Add Rate</a>
        </div>
      </li>
<!--       <li class="nav-item active">
        <a class="nav-link" href="Add_Brand.jsp">Add Brands<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="Rules.jsp">Add Driver Rules<span class="sr-only">(current)</span></a>
      </li>
       <li class="nav-item active">
        <a class="nav-link" href="Rule.jsp">Add User Rule<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="Notise.jsp">Add Notice<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="Admin_Add_Distance.jsp">Add Route<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="Add_Rate.jsp">Add Rate<span class="sr-only">(current)</span></a>
      </li>-->
       <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
         View 
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href="List_Driver.jsp">Drivers</a>
          <a class="dropdown-item" href="List_User.jsp">Users</a>
           </div>
      </li>

   <%
   String Countrow="";
try
{
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/SMART_CAB_SYSTEM","root","root");     
    Statement st=con.createStatement();
    String strQuery = "SELECT COUNT(solution) FROM user_compliant where solution='Pending'";
    ResultSet rs = st.executeQuery(strQuery);

    
      while(rs.next()){
      Countrow = rs.getString(1);
     
       } 
    }
catch (Exception e){
    e.printStackTrace();
  }
  %>
  
   <%
   String Cout1="";
try
{
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/SMART_CAB_SYSTEM","root","root");     
    Statement st=con.createStatement();
    String strQuery = "SELECT COUNT(solution) FROM driver_compliant where solution='Pending'";
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
    <span class="badge badge-pill badge-primary" style="float:right;margin-bottom:-10px;">
   <%=Countrow%>
   
    </span> <!-- your badge -->
    <a class="nav-link" href="List_Compliant.jsp">User Compliant<span class="sr-only">(current)</span></a>
</li>
       <li class="nav-item">
           <span class="bi bi-bell"></span>
    <span class="badge badge-pill badge-primary" style="float:right;margin-bottom:-10px;"><%=Cout1%></span> <!-- your badge -->
    <a class="nav-link" href="List_Driver_Compliant.jsp">Driver Compliant<span class="sr-only">(current)</span></a>
</li>
       <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
         All Lists
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href="List_Admin_Cab.jsp">Cab List</a>
          <a class="dropdown-item" href="List_brand.jsp">Brand List</a>
          <a class="dropdown-item" href="List_Rule.jsp">Driver Rules List</a>
           <a class="dropdown-item" href="List_User_Rule.jsp"> User Rules List</a>
          <a class="dropdown-item" href="List_Notice.jsp">Notice List</a>
          <a class="dropdown-item" href="List_Distance.jsp">Route List</a>
           <a class="dropdown-item" href="view_userfeedback.jsp">User Feedback</a>
            <a class="dropdown-item" href="view_driverfeedback.jsp">Driver Feedback</a>
        </div>
      </li>
          <li class="nav-item">
            <!-- your badge -->
    <a class="nav-link" href="Report.jsp">Report<span class="sr-only">(current)</span></a>
</li>
       
    </ul>
     <div class="navbar ">
      <a href="Profile_admin.jsp"><i class='btn btn-outline-success fa fa-user'>Profile</i></a>
</div>
 
    <form class="form-inline my-2 my-lg-0">
      <a href="index.html"class="btn btn-outline-danger my-2 my-sm-0">Logout</a></center>
    </form>
  </div>
</nav>
    </body>
</html>

<script src="https://code.jquery.com/jquery-3.6.4.min.js" integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>