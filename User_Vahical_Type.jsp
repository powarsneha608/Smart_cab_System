<%-- 
    Document   : User_Vahical_Type
    Created on : 19 Apr, 2023, 7:05:52 PM
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
        <title>Vehical type User</title>
         <style>
            .Addauto{
                margin-top: 100px;
                display: inline-block;
                margin: 35px;
                padding: 20px;
                background-color: skyblue;
                 box-shadow: 0 15px 20px black;
            }
             a:hover {
                background-color: #03fc07;
            }
        </style>
        <link rel="stylesheet" href="bootstrap.min.css">
    </head>
    <body>
     <%@include file="Header_User.jsp"%>
      
        <div class="container">
            <br>
            <br>
             <div class="row">
            <div class="col-sm-2">
                
            </div>
             <div class="col-sm-8">
                 <br>
            <center><h1 style="color:blue"><b>Choose Cab Type</b></h1></center>
            
            <br>
            <br>
             <div class="Addauto">
              <form action="vahical_typeuser" method="POST">
                <div class="row">
                    <div class="col-sm-4">
                        
                        <img src="img/Bajaj_Auto.jpg" height="200" width="250">
                        
                        <br>
                        <br>
                        <center> <h4>Auto</h4></center>
                        
                        <br>
                        
                        
                        <center> <input type="submit" name="btn_save" value="Select Auto" class="btn btn-primary"></center>
                    </div>
              
                    <div class="col-sm-2"></div>
            
          
                    <div class="col-sm-4">
                        
                        <img src="img/Add_Cab_1.jpg" height="200" width="250">
                        <br>
                        <br>
                        <center>   <h4>Cab</h4></center>
                        
                       
                        <br>
                        <center>  <input type="submit" name="btn_save" value="Select Cab" class="btn btn-primary"></center>
                    </div>
                              </div>
                  </form>  
  </div>
                </div>
             
            </div>
                
       </div>
             </div>
             <div class="col-sm-2">
                
            </div>
        </div>
    </body>
</html>


