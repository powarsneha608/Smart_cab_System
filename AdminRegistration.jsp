<%-- 
    Document   : AdminRegistration
    Created on : 24 Feb, 2023, 2:26:19 PM
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
        <title>Admin registration</title>
        <link rel="stylesheet" href="bootstrap.min.css">
        <style type="text/css">
            .container
          {
              background-color: white;
             margin-top: 30px;
             margin-bottom: 20px;
             padding-top: 20px;
             padding-bottom: 10px;
            border: 3px solid white;
            box-shadow: 0 15px 20px black;
          }
           a:hover {
                background-color: #03fc07;
            }
          body{
              
         background-image: url("img/power1.jpg "); /* The image used */
         background-color:white;/* Used if the image is unavaila*/
         background-position: center; 
         background-repeat: no-repeat; /* Do not repeat the image */
         background-size:1450px 1000px; /* Resize the background image to cover the entire container */
          }
          input[type=text],[type=file]
          {
              border: solid;
          }
          .button {
  background-color: #f8b500; /* Green */
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
}
        </style>
    </head>
    <body>
        <form action="Admin_Registration" method="POST">
             <%           
            Connection cn=null;
            Statement st=null;
            String id="1";
            try
        {
         Class.forName("com.mysql.jdbc.Driver");
           cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/SMART_CAB_SYSTEM","root","root");
           st=cn.createStatement();
           String sql="select * from admin_registration";
            ResultSet rs=st.executeQuery(sql);
            while(rs.next())
         while(rs.next())
         { 
           id=String.valueOf(Integer.parseInt(rs.getString("ad_id"))+1);
         }
        
        }catch(Exception ex)
        {
          out.println(ex);
        }
            
%>
          <script src="validation.js"></script>
          <script type="text/javascript">
     window.onload=function(){
     var today = new Date().toISOString().split('T')[0];
   
     document.getElementsByName("txt_date")[0].setAttribute('max', today);
    }

      </script> 
      <div class="container-fluid" >
        <div class="row">
            <div class="col-sm-3"></div>
             <div class="col-sm-6">
                 
                 <div class="container">
                       <div class="row">
                         <div class="col-sm-4">
                               <img src="img/icon.jpg"height="100" width="200">
                         </div>
                         
                         <div class="col-sm-8">
                             <br>
                     <center><h1 style="color:blue"><b>Admin Registration</b></h1></center>
                     <br>
                         </div>
                     </div>
                    
                      <hr style="height:2px;border-width:0;color:white;background-color:black">
                     <br>
                     <div class="row">
                         <div class="col-sm-6">
                             <label><b>Registration id</b></label>
                             <input value="<%=id%>" type="text"  name="txt_id" onkeypress="Javascript:return isNumber(event)" placeholder="Enter id" class="form-control">
                         </div>
                         <div class="col-sm-6">
                             <label><b>Full Name</b></label><span style="color:red">*</span>
                             <input required="" type="text" name="txt_fname"onkeypress="Javascript:return isString(event)" placeholder="Enter Full Name" class="form-control">
                         </div>
                     </div>
                     <br>         
                      <div class="row">
                           <div class="col-sm-4">
                             <label><b>Address</b></label><span style="color:red">*</span>
                            <textarea style="border:solid black;" required=""  name="txt_address" class="form-control"onkeypress="Javascript:return isAlphanumeric(event)" placeholder="Enter Address" rows="1" cols="15"></textarea>
                         </div>
                          <div class="col-sm-4">
                             <label><b>Contact</b></label><span style="color:red">*</span>
                            <input required="" type="text" id="txt_no" name="txt_contact"  onkeypress="Javascript:return isContactno(event)" maxlength="10" placeholder="Enter Contact" class="form-control">
                         </div>
                           <div class="col-sm-4">
                             <label><b>Admin image</b></label><span style="color:red">*</span>
                             <input  required="" style="border:solid black;" type="file" name="file_image"  class="form-control">
                         </div>
                     </div>
                     <br>
                      <div class="row">
                         <div class="col-sm-6">
                             <label><b>Email</b></label><span style="color:red">*</span>
                             <input type="text"  required="" id="txt_no" name="txt_Email" placeholder="Enter Email" class="form-control">
                         </div>
                          <div class="col-sm-6">
                             <label><b>Date of Birth</b></label><span style="color:red">*</span>
                             <input required="" style="border:solid black;" type="date" name="txt_date" id="txt_no" placeholder="Enter Email" class="form-control">
                         </div>
                     </div>
                     <br>
                      <div class="row">
                         <div class="col-sm-6">
                             <label><b>Username</b></label><span style="color:red">*</span>
                             <input required="" type="text" id="txt_no" name="txt_username" onkeypress="Javascript:return isString(event)"placeholder="Enter Username" class="form-control">
                         </div>
                          <div class="col-sm-6">
                             <label><b>Password</b></label><span style="color:red">*</span>
                             <input required=""maxlength="12"  minlength="6" type="text" id="txt_no" name="txt_password"  placeholder="Enter password" class="form-control">
                         </div>
                     </div>
                 <br>
                  <div class="row">
                     
                         <div class="col-sm-6">
                             <input  type="submit" name="btn_save"  class="btn btn-primary form-control" value="Submit">
                         </div>
                      <br>
                      <br>
                       <div class="col-sm-6">
<!--                            <input style="border:solid black;" type="submit" name="btn_save" class="btn btn-danger form-control" value="Cancle">-->
                             <a href="Login.jsp"  style="border:solid black;" class="btn btn-danger btn-fill form-control">Cancel</a>
                         </div>
                      
                     </div>
                 </div>
                 
                   </div>
                 
             </div>
              <div class="col-sm-3"></div>
        </div>
            </form>
    </body>
</html>

