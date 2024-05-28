<%-- 
    Document   : userLogin
    Created on : 17 Feb, 2023, 2:02:45 PM
    Author     : Snehal
--%>




<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>user Login</title>
        <link rel="stylesheet" href="bootstrap.min.css">
        <style type="text/css">
            .container
          {
             background-color: white;
             margin-top: 30px;
             padding-top: 30px;
             padding-bottom: 10px;
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
      
         <form action="User_Login" method="POST">
             
        <script src="validation.js"></script>
        
        <div class="container-fluid" >
        <div class="row">
            <div class="col-sm-3"></div>
             <div class="col-sm-6">
                 
                 <div class="container">
                     <div class="row">
                         <div class="col-sm-12">
                     <center><h1 style="color:green"><b>USER LOGIN</b></h1></center>
                      <hr style="height:2px;border-width:0;color:white;background-color:black">
                         </div>
                     </div>
                     <div class="row">
                         <div class="col-sm-6">
                              <img src="img/UserLogin.png"height="300" width="300">
                         </div>
                     
                     <br>
                     <br>
                         <div class="col-sm-6">  
                             
                      
                     <br>
                      
                          
                     <div class="row">
                         <div class="col-sm-12">
                             <br>
                             <br>
                             
                             <label><b>User name</b></label><span style="color:red">*</span>
                             <input   required="" style=" border:solid black"  type="text" name="txt_name" placeholder=" Username"  class="form-control">
                         </div>
                         <br>
                         <br>
                         <br>
                        
                         
                         <div class="col-sm-12 ">
                             <br>
                             <label><b>Password</b></label><span style="color:red">*</span>
                             
                             <input   required="" style=" border:solid black"  minlength="6" maxlength="12" type="password" name="txt_pass" placeholder="************"  class="form-control">
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
                      <br>
                      <div class="col-sm-6">
<!--                            <input style="border:solid black;" type="submit" name="btn_save" class="btn btn-danger form-control" value="Cancle">-->
                             <a href="index.html"class="btn btn-danger btn-fill form-control">Cancel</a>
                         </div>
                      
                      <br>
                      <br>
                      
                     </div>
                     <div class="row">
                       <div class="col-sm-5"></div>
                             <div class="col-sm-7">
                                 <br>
                         <label><a href="UserForgotPassword.jsp">Forgot Password</a></label>
                  
                         </div>
                        </div>
                 
                      
                       <center> <p>Don't have an account..? <a href="User_Registration.jsp"> User Registration</a></p></center>
                      
                     </div>
             </div>
       
              <div class="col-sm-3"></div>
        </div>
        </div>
         </form> 
    </body>
</html>


