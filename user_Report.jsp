<%-- 
    Document   : user_Report
    Created on : 18 May, 2023, 1:03:02 PM
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
        <title> user_Receipt</title>
        
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


          
          
            
        </style>
    </head>
    <body>
       
 <%@include file="Header_User.jsp"%>
         <script src="validation.js"></script>
         <form action="reportview.jsp" method="post">
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
                              
                              <center><h1 style="color:blue"><b>Your Bill</b></h1></center>
                       
                         </div>
                           
                     </div>
                      <hr style="height:2px;border-width:0;color:white;background-color:black">
                    
                     <br>
                      
                          
                          <div class="row">
                              <div class="col-sm-4">
                          
                         </div>
                         <div class="col-sm-4">
                             
                             <label><b>id</b></label>
                             <input  readonly="" required="" type="text" name="txt_id" value="<%=session.getAttribute("payment_id")%>"    placeholder="Enter Payment id" class="form-control">
                        </div>
                              <div class="col-sm-4">
                          
                         </div>
                     </div>
                     <br>
                     <br>
                      
                  
                       <div class="row">
                           <div class="col-sm-4">
                          
                         </div>
                                 <div class="col-sm-4">
                           <center> 
                               <button  style="border:solid black"type="submit" name="btn" value="Click" class="form-control">Click</button></center>
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


