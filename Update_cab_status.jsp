<%-- 
    Document   : Update_cab_status
    Created on : 15 Apr, 2023, 1:40:47 PM
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
        <title>booking Status</title>
        <link rel="stylesheet" href="bootstrap.min.css">
        <style type="text/css">
            .container
          {
            background-color: gainsboro;
             margin-top: 80px;
             margin-bottom: 100px;
             padding-bottom: 50px;
            box-shadow: 0 15px 20px black;
      
            
}
            
          
      a:hover {
                background-color: #03fc07;
            }   

         body {
 background-image: url("img/sample.jpg"); /* The image used */
 background-color: white;
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
        
       <form action="view_Cab_Status" method="POST">
             <%           
            Connection cn=null;
            Statement st=null;
            String id="1";
            try
        {
         Class.forName("com.mysql.jdbc.Driver");
           cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/SMART_CAB_SYSTEM","root","root");
           st=cn.createStatement();
           String sql="select cab_id from  add_cab_details";
            ResultSet rs=st.executeQuery(sql);
           
         while(rs.next())
         { 
           id=String.valueOf(Integer.parseInt(rs.getString("cab_id"))+1);
         }
        
        }catch(Exception ex)
        {
          out.println(ex);
        }
            
%>

         <script src="validation.js"></script>
         
         <br>
         <br>
        <div class="container-fluid" >
            
        <div class="row">
            <div class="col-sm-6">
                
            </div>
             <div class="col-sm-6">
                 
                 <div class="container">
                     <div class="row">
                          <div class="col-sm-12">
                              <br>
                              <br>
                              
                              <center><h1 style="color:green"><b>Booking Status</b></h1></center>
                       
                         </div>
                           
                     </div>
                      <hr style="height:2px;border-width:0;color:white;background-color:black">
                    
                     <br>
                      
                          
                     <div class="row">
                         <div class="col-sm-12">
                             <label><b>id</b></label>
                             <input onkeypress="javascript:return isNumber(event)" value="<%=id%>" type="text" name="txt_id" placeholder=" Brand id"  class="form-control">
                         </div>
                         
                         <div class="col-sm-12">
                               <label><b>Cab status</b></label><br><span style="color:red">*</span>
                             <select style=" border:solid black;"required="" style=" border:solid black;" name="txt_cabstatus" class="form-control">
                                 <option selected >select cab type</option>
                                 <option>Booked</option>
                                 <option>Droped</option>
                             </select>
                         
                          
                     </div>
                     <br>         
                        </div>
                         <br>
                         <br>
                  <div class="row">
                      <div class="col-sm-2"></div>
                       <div class="col-sm-8">
                             <input  style=" border:solid black" type="submit"  name="btn_save" class="btn btn-success form-control" value="Submit">
                         
                      <br>
                      <br>
                       </div>
                          <div class="col-sm-2"></div>
                     </div>
               
                 
                   </div>
                 
             </div>
              
        </div>
        </form> 
    </body>
</html>
