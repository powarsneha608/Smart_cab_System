<%-- 
    Document   : Report
    Created on : 17 May, 2023, 1:16:02 PM
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
        <title>Report</title>
        
        <link rel="stylesheet" href="bootstrap.min.css">
        <style type="text/css">
            .container
          {
            background-color:white;
           margin-top: 70px;
             padding-bottom: 50px;
            box-shadow: 0 15px 20px black;
      
            
}
          
          
        

         body {
/* background-image: url("img/sample.jpg");  The image used */
 background-color: #85C1E9;
  background-repeat: no-repeat; /* Do not repeat the image */
  background-size: 1200px 800px; /* Resize the background image to cover the entire container */
  
  

}

input[type=text],[type=file]
{
    border: solid;
}
.GFG {
        background-color: white;
        border: 2px solid black;
        color: green;
        padding: 5px 10px;
        text-align: center;
        display: inline-block;
        font-size: 20px;
        margin: 10px 30px;
        cursor: pointer;
        }

           a
            {
                background-color: white;
                box-shadow: 0 5px 0 #424141;
                color: white;
                padding: 1em 1.5em;
                position: relative;
                text-decoration: none;
                
            }

            a:hover {
                background-color: #03fc07;
            }

            #btn_save{
                
                color: #566573;
                background-color: white;
                 box-shadow: 0 5px 0 #424141;
                   text-decoration: none;
              cursor: pointer;
            }

          
          
            
        </style>
    </head>
    <body>
       
 <%@include file="Header_Admin.jsp"%>
         <script src="validation.js"></script>
         <form action="view_report.jsp" method="post">
         <br>
         <br>
         <div class="a">
        <div class="container-fluid" >
<!--            <form action="Cash_on_pay" method="POST">-->
        <div class="row">
            <div class="col-sm-3">
                
            </div>
             <div class="col-sm-6">
                 
                 <div class="container">
                     <div class="row">
<!--                          <div class="col-sm-5">
                              <br>
                              <img src="img/PaymentMethods.jpg"height="150" width="300">
                          
                              </div>-->
                          <div class="col-sm-12">
                              <br>
                              <br>
                              <center><h1 style="color:blue"><b>Report</b></h1></center>
                       
                         </div>
                           
                     </div>
                      <hr style="height:2px;border-width:0;color:white;background-color:black">
                    
                     <br>
                      
                          
                            
                      
                  <div class="row">
                       <div class="col-sm-1">
                          
                       </div>
                         <div class="col-sm-4">
                             <center><button type="submit" name="btn" value="Booking Report" class="form-control">Booking Report</button></center>
                             </div>
                     
                  <div class="col-sm-2">
                          
                       </div>
                      
                       
                       <div class="col-sm-4">
                           <center><button type="submit" name="btn" value="Payment Report" class="form-control">Payment Report</button> </center>
                         </div>
                          
                      <div class="col-sm-1">
                          
                       </div>
                      
                     
                          
                       </div>
                      <br>
                       <div class="row">
                           <div class="col-sm-1">
                          
                       </div>
                                 <div class="col-sm-4">
                           <center><button type="submit" name="btn" value="Brand Report" class="form-control">Brand Report</button> </center>
                         </div>
                           <div class="col-sm-2">
                          
                       </div>
                              <div class="col-sm-4">
                           <center> <button type="submit" name="btn" value="Route Report" class="form-control">Route Report</button>
                               </center>
                         </div>
           
                          
                       
<!--                      <div class="col-sm-4">
                          <center><input  type="submit" id="btn_save"  name="btn_save" class=" form-control btn btn-success " value="Cash"></center>

                         </div>-->
                           <div class="col-sm-1">
                          
                       </div>
                      

                     </div>
                      
                      <br>
                      <br>
                       <div class="row">
                           <div class="col-sm-4">
                          
                         </div>
                                 <div class="col-sm-4">
                           <center> 
                               <button type="submit" name="btn" value="Cab Report" class="form-control">Cab Report</button></center>
                         </div>
                           
                          
                       </div>
                              <div class="col-sm-4">
                          
                         </div>
           
                          
                       
<!--                      <div class="col-sm-4">
                          <center><input  type="submit" id="btn_save"  name="btn_save" class=" form-control btn btn-success " value="Cash"></center>

                         </div>-->
                           <div class="col-sm-1">
                          
                       </div>
                      

                     </div>
                      
                 </div>
                 
                   </div>
                 
             </div>
              </form>  
        </div>
   
       
    </body>
</html>


