


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Login</title>
        <link rel="stylesheet" href="bootstrap.min.css">
        <style type="text/css">
            .container
          {
             background-color: white;
            margin-top: 20px;
             padding-top: 30px;
             padding-bottom: 30px;
            border: 5px solid white;
            box-shadow: 0 15px 20px  white;
            opacity: 0.9;
            
}
  a:hover {
                background-color: #03fc07;
            }        
         body {
 background-image: url("img/Backgroundlogin.jpg"); /* The image used */
  background-color: #cccccc; /* Used if the image is unavailable */
  height: 550px; /* You must set a specified height */
  background-position: center; /* Center the image */
  background-repeat: no-repeat; /* Do not repeat the image */
  background-size: cover; /* Resize the background image to cover the entire container */

}

input[type=text],[type=Password]
{
    border: solid;
}

     
            
        </style>
    </head>
    <body>
        
        <form action="Admin_Login" method="POST">
        <script src="validation.js"></script>
            
        <div class="container-fluid" >
        <div class="row">
            <div class="col-sm-3"></div>
             <div class="col-sm-6">
                 
                 <div class="container">
                     <div class="row">
                         <div class="col-sm-12">
                     <center><h1 style="color:green"><b>ADMIN LOGIN</b></h1></center>
                     <hr style="height:2px;border-width:0;color:white;background-color:black">
                         </div>
                     </div>
                     <div class="row">
                         <div class="col-sm-3">
                              <img src="img/Home.png"height="300" width="200">
                         </div>
                     
                     <br>
                    
                     <div class="col-sm-2"></div>
                         <div class="col-sm-7">  
                           
                     <div class="row">
                         <div class="col-sm-12">
                             <br>
                             <br>
                             
                             <label><b>User name</b></label><span style="color:red">*</span>
                             <input   required="" style=" border:solid black" type="text" name="txt_name" placeholder=" Username"  class="form-control">
                         </div>
                         <br>
                         <br>
                         
                         
                         <div class="col-sm-12 ">
                             <br>
                             <label><b>Password</b></label><span style="color:red">*</span>
                             <input  required="" style=" border:solid black"  maxlength="12" type="password" name="txt_pass" placeholder="***************"  class="form-control">
                         </div>
                     </div>
                     <br>
                     <br>
                   
                 </div>
                         </div>
                      <div class="row">
                      
                         <div class="col-sm-6">
                             <input type="submit" name="btn_save" class="btn btn-success form-control" value="Login">
                         </div>
                      <br>
                      
                      <div class="col-sm-6">
<!--                            <input style="border:solid black;" type="submit" name="btn_save" class="btn btn-danger form-control" value="Cancle">-->
                             <a href="index.html" class="btn btn-danger btn-fill form-control">Cancel</a>
                         </div>
                      
                      <br>
                      <br>
                      
                      
                     </div>
                     <div class="row">
                       <div class="col-sm-5"></div>
                         
                             <div class="col-sm-7">
                         <label><a href="ForgotPassword.jsp">Forgot Password</a></label>
                  
                         </div>
                        </div>
                    
                       <center> <p>Don't have an account..? <a href="AdminRegistration.jsp">Admin Registration</a></p></center>
                            
                 
                
                     
                     </div>
             </div>
       
              <div class="col-sm-3"></div>
        </div>
        </div>
        </form> 
    </body>
</html>

