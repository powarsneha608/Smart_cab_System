<%-- 
    Document   : Driver_Compliant
    Created on : 14 Feb, 2023, 11:09:50 PM
    Author     : Snehal
--%>



<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Driver Compliant</title>
        <link rel="stylesheet" href="bootstrap.min.css">
        <style type="text/css">
            .container
          {
             background-color:gainsboro;
             margin-top: 10px;
             margin-bottom: 10px;
             margin-left: 350px;
             padding-top: 30px;
             padding-bottom: 50px;
            border: 5px solid gray;
            opacity: 0.8;
            box-shadow: 0 15px 20px  black;
            
}
            
          
            a:hover {
                background-color: #03fc07;
            }

         body {
   

background-image: url("img/Driver_Compliant.jpg");
  margin-bottom: 15px;
  margin-top: 15px;
  margin-left: 15px;
  margin-right: 15px;
  background-repeat: no-repeat;
  background-size: 700px 750px;  
}

input[type=text],[type=file],[type=Email]
{
    border: solid;
}


       
          
          
            
        </style>
    </head>
    <body>
        <%@include file="Header_Driver.jsp"%>
        <form action="drivercompliant" method="POST">
             <%           
            Connection cn=null;
            Statement st=null;
            String id="1";
            try
        {
         Class.forName("com.mysql.jdbc.Driver");
           cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/SMART_CAB_SYSTEM","root","root");
           st=cn.createStatement();
           String sql="select * from driver_compliant";
            ResultSet rs=st.executeQuery(sql);
            while(rs.next())
         while(rs.next())
         { 
           id=String.valueOf(Integer.parseInt(rs.getString("driver_compliant_id"))+1);
         }
        
        }catch(Exception ex)
        {
          out.println(ex);
        }
            
%>
        <script src="validation.js"></script>
        <div class="container-fluid" >
        <div class="row">
            <div class="col-sm-6"></div>
             <div class="col-sm-6">
                 
                 <div class="container">
                     <div class="row">
                          <div class="col-sm-3">
                              <img src="img/Come.jpg"height="100" width="200">
                          </div>
                     
                         <br>
                         <br>
                         <div class="col-sm-8">
                             <br>
                             
                             <center><h1 style="color:#009999"><b>Driver Compliant</b></h1></center>
                       
                         </div>
                     </div>
                      <hr style="height:2px;border-width:0;color:white;background-color:black">
                     

                     <br>
                     
                     <div class="row">
                         <div class="col-sm-6">
                             <label><b>Compliant id</b></label>
                             <input value="<%=id%>"style=" border:solid black;" onkeypress="javascript:return isNumber(event)"value="<%=session.getAttribute("driver_id")%>" type="text" name="txt_id" placeholder=" Compliant id"  class="form-control">
                         </div>
                         <div class="col-sm-6 ">
                             <label><b> Name</b></label><span style="color:red">*</span>
                             <input  required=""style=" border:solid black;" value="<%=session.getAttribute("fullname")%>"onkeypress="javascript:return isString(event)" type="text" name="txt_name" placeholder="Enter Name" class="form-control">
                         </div>
                     </div>
                     <br>
                     <div class="row">
                         <div class="col-sm-6">
                             <label><b>Email</b></label><span style="color:red">*</span>
                             <input  required=""style=" border:solid black;" value="<%=session.getAttribute("Email")%>"type="Email" name="txt_email" placeholder="Enter Email id"  class="form-control">
                         </div>
                         <div class="col-sm-6 ">
                             <label><b>Contact</b></label><span style="color:red">*</span>
                             <input  required="" style=" border:solid black;" value="<%=session.getAttribute("contact")%>"onkeypress="javascript:return isContact(event)"maxlength="10" type="text"  title="Plz enter valid contact no" name="txt_number" placeholder="Enter contact number" class="form-control">
                         </div>
                     </div>
                     <br>
                     
                    <div class="row">
                         <div class="col-sm-12">
                             <label><b>Compliant title</b></label><span style="color:red">*</span>
                             <input  required=""style=" border:solid black;" onkeypress="javascript:return isString(event)"type="text" name="txt_title" placeholder="Enter Title"  class="form-control">
                         </div> 
                    </div>
                     <br>
                     
                     <div class="row">
                         <div class="col-sm-6">
                                 <label><b>Message(in 50 words) </b></label><span style="color:red">*</span>
                            <textarea  style=" border:solid black;" name="message" class="form-control" placeholder="Enter Message (in 100 words)" rows="2" cols="15"></textarea>
                             </div>
                         <div class="col-sm-6">
                                 <label><b>Description(in 100 words)</b></label>
                            <textarea style=" border:solid black;" name="discription" class="form-control" placeholder="Write Discription (in 100 words)" rows="2" cols="15"></textarea>
                             </div>
                     </div>
                     <br>
                     
                      
                  <div class="row">
                         <div class="col-sm-12">
                             <input style=" border:solid black;" type="submit" name="btn_save" class="btn btn-primary form-control" value="Insert">
                         </div>
                      <br>
              
                     </div>
                 </div>
                 
                   </div>
                 
             </div>
              <div class="col-sm-3"></div>
        </div>
        </form>    
    </body>
</html>
