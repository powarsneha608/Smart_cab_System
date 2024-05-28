<%-- 
    Document   : Solution_User_Compliant
    Created on : 16 Apr, 2023, 9:46:04 PM
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
        <title>Solution_User_Compliant user</title>
        <link rel="stylesheet" href="bootstrap.min.css">
        <style type="text/css">
            .container
          {
             background-color: white;
             margin-top: 20px;
             padding-top: 10px; 
             padding-bottom: 10px;
           
            box-shadow: 0 15px 20px  black;
            
}
            
          
        

         body {
    background-image: url("img/Compliantbaack.jpg"); 
    background-color: #ffeeba; 
  background-position: center; /* Center the image */
  background-repeat: no-repeat; 
 background-size: cover;
/*  background-size: 1600px 1600px;   */
 
         }


input[type=text],[type=file],[type=Email]
{
    border: solid;
}


       
          
          
            
        </style>
    </head>
    <body>
        <%@include file="Header_User.jsp"%>
        <form action="List_Compliant" method="POST">
             <%           
            Connection cn=null;
            Statement st=null;
            String id="1";
            
            try
        {
         Class.forName("com.mysql.jdbc.Driver");
           cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/SMART_CAB_SYSTEM","root","root");
           st=cn.createStatement();
           String sql="select * from user_compliant";
            ResultSet rs=st.executeQuery(sql);
            
         while(rs.next())
         { 
           id=String.valueOf(Integer.parseInt(rs.getString("user_compliant_id"))+1);
         }
        
        }catch(Exception ex)
        {
          out.println(ex);
        }
            
%>
        <script src="validation.js"></script>
        <div class="container-fluid" >
        <div class="row">
            <div class="col-sm-3"></div>
             <div class="col-sm-6">
                 
                 
                 <div class="container">
                     <div class="row">
                          <div class="col-sm-3">
                              <img src="img/Complint.jpg"height="100" width="200">
                          </div>
                          <div class="col-sm-9">
                              <br>
                     <center><h1><b>User_Compliant Solution</b></h1></center>
                       
                         </div>
                     </div>
                     <hr style="height:2px;border-width:0;color:white;background-color:black">
                         <br>
        
                         
                     
                          <div class="row">
                     
                         <div class="col-sm-12">
                             <label><b>Compliant id</b></label>
                             <input style=" border:solid black;" value="<%=id%>"onkeypress="javascript:return isNumber(event)" value="<%=session.getAttribute("us_id")%>" type="text" name="txt_id" placeholder=" Compliant id"  class="form-control">
                         </div>
<!--                         <div class="col-sm-6 ">
                             <label><b> Name</b></label>
                             <input style=" border:solid black;"onkeypress="javascript:return isString(event)" type="text" value="<%=session.getAttribute("fullname")%>"name="txt_name" placeholder="Enter Name" class="form-control">
                         </div>-->
                     </div>
                     <br>
                       <div class="row">
                         <div class="col-sm-12">
                             <label><b>Compliant title</b></label><span style="color:red">*</span>
                             <input style=" border:solid black;"onkeypress="javascript:return isString(event)"type="text"value="<%=session.getAttribute("Compliant_tile")%>"  name="txt_title" placeholder="Enter Title"  class="form-control">
                         </div> 
                    </div>
                     <br>
                     <br>
                     
                    
                     
                     <div class="row">
                         <div class="col-sm-12">
                             <label><b>Compliant Solution</b></label><span style="color:red">*</span>
                            <textarea  style=" border:solid black;" name="message" class="form-control" value="<%=session.getAttribute("solution")%>"rows="2" cols="15"></textarea>
                         </div> 
                    </div>
                     <br>
                     
                   
                     <br>
                     
                      
                   <div class="row">
                       <div class="col-sm-3"></div>
                         <div class="col-sm-6">
                             <input style=" border:solid black;" type="submit" name="btn_save" class="btn btn-primary form-control" value="Insert">
                         </div>
                        <div class="col-sm-3"></div>
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
