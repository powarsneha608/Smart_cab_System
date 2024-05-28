


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script type="text/javascript">
    $(function () {
        $("#btn").click(function () {
            var password = $("#txt_pass").val();
            var confirmPassword = $("#txt_cpass").val();
            if (password != confirmPassword) {
                alert("Passwords do not match.");
                return false;
            }
            return true;
        });
    });
</script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Forgot Password Admin</title>
        <link rel="stylesheet" href="bootstrap.min.css">
        <style type="text/css">
            .container
          {
             background-color: white;
             margin-top: 100px;
             margin-bottom: 50px;
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
        
        <form action="Forgot_Password_admin" method="POST">
          
            
        <script src="validation.js"></script>
        <div class="container-fluid" >
            <div class="row">
            <div class="col-sm-3"></div>
             <div class="col-sm-6">
                 
                 <div class="container">
                     <div class="row">
                         <div class="col-sm-12">
                     <center><h1 style="color:blue"><b>Forgot Password</b></h1></center>
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
                             <label><b>New Password</b></label><span style="color:red">*</span>
                             <input required="" id="txt_pass" maxlength="12" minlength="6" type="password" name="txt_pass" placeholder="***************"  class="form-control">
                         </div>
                         <div class="col-sm-12 ">
                             <label><b>Conform Password</b></label><span style="color:red">*</span>
                             <input required="" id="txt_cpass" maxlength="12" minlength="6"type="password" name="txt_cpass" placeholder="***************"  class="form-control">
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
                      <div class="col-sm-1"></div>
                      <div class="col-sm-5">
                          <br>
                             <input id="btn" type="submit" name="btn_save" class="btn btn-primary form-control" value="Save">
                         </div>
                      <br>
                      
                      <div class="col-sm-5">
                          <br>
                          
                             <input id="btn" type="submit" name="btn_save" class="btn btn-danger form-control" value="Cancle">
                      </div>
                      <div class="col-sm-1"></div>
                      <br>  
                      
                     </div>
                      <div class="row">
                          <br>
                          <br>
                      <div class="col-sm-5"></div>
                         
                             <div class="col-sm-5">
                                 <br>
                                 
                         <label><b><a href="Login.jsp"> Back to Login Page </a></b></label>
                  
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


