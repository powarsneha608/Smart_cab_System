<%-- 
    Document   : update_driver_feedback
    Created on : 29 Mar, 2023, 7:53:04 AM
    Author     : Snehal
--%>




    

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Driver feedback</title>
        <link rel="stylesheet" href="bootstrap.min.css">
        <style type="text/css">
            .container
          {
            
              /*background-image: linear-gradient(120deg, #f6d365 0%, #fda085 100%);*/
              background-color:#FAD7A0;
              margin-top: 30px;
              margin-bottom: 30px;
              padding-top: 20px;
              padding-bottom: 20px;
             /* border: 10px solid white;*/
            margin-left: 350px;
              box-shadow: 0 15px 20px black;
          }
           a:hover {
                background-color: #03fc07;
            }
          
          body{
             /* background-image: url("image_Feedback.jpg"); /* The image used */
                background-repeat: no-repeat; /* Do not repeat the image */
              /* Resize the background image to cover the entire container*/  
                margin-top: 60px;
                margin-bottom: 120px;
               background-position: center; /* Center the image */
               background-size: 1500px 800px;
          }
          input[type=text],[type=file]
          {
              border: solid;
          }
        </style>
    </head>
    <body>
        
         <form action="Feedback_driver" method="POST">
            
        <script src="validation.js"></script>
         <%           
            Connection cn=null;
            Statement st=null;
            String id="1";
            try
        {
         Class.forName("com.mysql.jdbc.Driver");
           cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/SMART_CAB_SYSTEM","root","root");
           st=cn.createStatement();
           String sql="select * from driver_feedback";
            ResultSet rs=st.executeQuery(sql);
            while(rs.next())
         while(rs.next())
         { 
           id=String.valueOf(Integer.parseInt(rs.getString("Driver_feedback_id"))+1);
         }
        
        }catch(Exception ex)
        {
          out.println(ex);
        }
            
%>
        <div class="container-fluid" >
        <div class="row">
           
             <div class="col-sm-6">
                 
                 <div class="container">
                     <center><h1 style="color:blue"><b>Driver Feedback</b></h1></center>
                      <hr style="height:2px;border-width:0;color:white;background-color:black">
                     <br>
                     <div class="row">
                         <div class="col-sm-6">
                             <label>Feedback id</label>
                             <input value="<%=request.getParameter("txt_id")%>"value="<%=id%>" type="text" name="txt_id" placeholder="Enter Feedback id" onkeypress="Javascript:return isNumber(event)" class="form-control">
                         </div>
                         <div class="col-sm-6">
                             <label>Full Name</label><span style="color:red">*</span>
                             <input  required="" value="<%=request.getParameter("txt_fname")%>" type="text" name="txt_fname" placeholder="Enter Full Name" onkeypress="Javascript:return isString(event)" class="form-control">
                         </div>
                     </div>
                     <br>         
                      <div class="row">
                           <div class="col-sm-6">
                             <label>Email</label><span style="color:red">*</span>
                            <input  required=""value ="<%=request.getParameter("txt_Email")%>" type="text" name="txt_Email" placeholder="Enter Email" class="form-control">
                         </div>
                          <div class="col-sm-6">
                             <label>Contact</label><span style="color:red">*</span>
                             <input  required="" value="<%=request.getParameter("contact")%>"type="text" id="txt_no" name="contact" onkeypress="Javascript:return isContactno(event)" maxlength="10" placeholder="Enter Contact" class="form-control">
                         </div>
                     </div>
                     <br>
                      <div class="row">
                         <div class="col-sm-12">
                             <label>Message(in 200 words)</label><span style="color:red">*</span>
                             <textarea value="<%=request.getParameter("txt_Message")%>"style="border:solid black;" name="txt_Message" class="form-control" onkeypress="Javascript:return isString(event)"  placeholder="Enter Message" rows="2" cols="15"></textarea>
                         </div>
                     </div>
                 <br>
                  <div class="row">
                     
                         <div class="col-sm-6">
                             <input style="border:solid black;" type="submit" name="btn_save" class="btn btn-primary form-control" value="Submit">
                         </div>
                      <br>
                      <br>
                      <div class="col-sm-6">
                             <input style="border:solid black;" type="submit" name="btn_save" class="btn btn-danger form-control" value="Cancel">
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

