<%-- 
    Document   : Forgotpassword_driver
    Created on : 21 Feb, 2023, 9:56:43 PM
    Author     : Snehal
--%>




<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>forgot Password Driver</title>
        <link rel="stylesheet" href="bootstrap.min.css">
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script type="text/javascript">
    $(function () {
        $("#btnSubmit").click(function () {
            var password = $("#txtPassword").val();
            var confirmPassword = $("#txtConfirmPassword").val();
            if (password != confirmPassword) {
                alert("Passwords do not match.");
                return false;
            }
            return true;
        });
    });
</script>
        <style type="text/css">
            .container
          {
             background-color: white;
             margin-top: 100px;
             margin-bottom: 100px;
             padding-top: 30px;
             padding-bottom: 30px;
            border: 5px solid white;
           
            box-shadow: 0 15px 20px  black;
            
}
            
          
       a:hover {
                background-color: #03fc07;
            }  

         body {
/* background-image: url("Forgot_1.jpg"); /* The image used */
  background-color:#D6EAF8 ; /* Used if the image is unavailable */
   /* You must set a specified height */
  background-position: center; /* Center the image */
  background-repeat: no-repeat; /* Do not repeat the image */
  background-size: 1600px 1000px; /* Resize the background image to cover the entire container */

}

input[type=text],[type=Password]
{
    border: solid;
}
 input[type=save],[type=cancle]
 {
     border: darkslategrey solid;
 }


       
          
          
            
        </style>
    </head>
    <body>
        
        <form action="Forgot_Password_Driver" method="POST">
            
        <script src="validation.js"></script>
        <div class="container-fluid" >
            <div class="row">
            <div class="col-sm-3"></div>
             <div class="col-sm-6">
                 
                 <div class="container">
                     <div class="row">
                         <div class="col-sm-12">
                     <center><h1 style="color:blue"><b> Driver Forgot Password</b></h1></center>
                      <hr style="height:2px;border-width:0;color:white;background-color:black">
                         </div>
                     </div>
                     <div class="row">
                         <div class="col-sm-4">
                              <img src="img/Forgotpassword.jpg"height="200" width="200">
                         </div>
                     
                     <br>
                     <br>
                         <div class="col-sm-8">  
                             
                      
                     <br>
        
                         <div class="col-sm-12">
                             <label><b>User name</b></label><span style="color:red">*</span>
                             <input required="" onkeypress="javascript:return isString(event)"type="text" name="txt_name" placeholder=" Username"  class="form-control">
                         </div>
                         
                         <div class="col-sm-12 ">
                             <label><b> New Password</b></label><span style="color:red">*</span>
                             <input required="" id="txtPassword" maxlength="12" minlength="6"type="password" name="txt_pass" placeholder="***************"  class="form-control">
                         </div>
                         <div class="col-sm-12 ">
                             <label><b>Conform Password</b></label><span style="color:red">*</span>
                             <input required="" id="txtConfirmPassword" maxlength="12" minlength="6"type="password" name="txt_cpass" placeholder="***************"  class="form-control">
                         </div>
                     </div>
                     <br>
                     <br>
                     <br>
                     <br>
                     </div>
                      
                  <div class="row">
                      <br>
                      <br>
                      <div class="col-sm-3"></div>
                      <div class="col-sm-6">
                          <br>
                             <input id="btnSubmit" type="submit" name="btn_save" class="btn btn-primary form-control" value="Save">
                         </div>
                      <br>
                      
                      <div class="col-sm-3"></div>
                      <br>  
                      
                     </div>
                      <div class="row">
                          <br>
                          <br>
                      <div class="col-sm-5"></div>
                         
                             <div class="col-sm-5">
                                 <br>
                                 
                         <label><b><a href="DriverLogin.jsp"> Back to Login Page </a></b></label>
                  
                         </div>
                       
                       
                            <div class="col-sm-2">  
                         </div>
                     
                 </div>
                     
                     
                 
                 
                   </div>
                 
             </div>
              <div class="col-sm-3"></div>
        </div>
        </div>
        </form>
    </body>
</html>



