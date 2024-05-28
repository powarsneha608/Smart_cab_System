<%-- 
    Document   : Add Brand
    Created on : 13 Feb, 2023, 6:38:25 PM
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
        <title> Add brand</title>
        <link rel="stylesheet" href="bootstrap.min.css">
        <style type="text/css">
            .container
          {
            background-color: gainsboro;
            
            
             padding-bottom: 10px;
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
        <%@include file="Header_Admin.jsp"%>
        <form action="addbrand" method="POST">
            <%           
            Connection cn=null;
            Statement st=null;
            String id="1";
            try
        {
         Class.forName("com.mysql.jdbc.Driver");
           cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/SMART_CAB_SYSTEM","root","root");
           st=cn.createStatement();
           String sql="select * from Brand_name";
            ResultSet rs=st.executeQuery(sql);
            while(rs.next())
         while(rs.next())
         { 
           id=String.valueOf(Integer.parseInt(rs.getString("brand_id"))+1);
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
                          <div class="col-sm-4">
                              <br>
                              <img src="img/brndicon.jpg"height="150" width="300">
                          
                              </div>
                          <div class="col-sm-8">
                              <br>
                              <br>
                              
                              <center><h1 style="color:green"><b>Add  Brand</b></h1></center>
                       
                         </div>
                           
                     </div>
                      <hr style="height:2px;border-width:0;color:white;background-color:black">
                    
                     <br>
                      
                          
                     <div class="row">
                         <div class="col-sm-12">
                             <label><b>Brand id</b></label>
                             <input onkeypress="javascript:return isNumber(event)" value="<%=id%>" type="text" name="txt_id" placeholder=" Brand id"  class="form-control">
                         </div>
                         <div class="col-sm-12 ">
                             <label><b>Brand Name</b></label><span style="color:red">*</span>
                             <input  required="" onkeypress="javascript:return isString(event)" type="text" name="txt_bname" placeholder="Add Brand Name" class="form-control">
                         </div>
                         <div class="col-sm-12">
                             <label><b>Cab type</b></label><span style="color:red">*</span>
                             <select style=" border:solid black;"required="" style=" border:solid black;" name="txt_cabtype" class="form-control">
                                 <option selected >select cab type</option>
                                 <option>Cab</option>
                                 <option>auto</option>
                             </select>
                         </div>
                          <div class="col-sm-12 ">
                             <label><b>Brand image</b></label><span style="color:red">*</span>
                             <input required=""  type="file" name="file_image"  placeholder="image" class="form-control">
                         </div>
                          
                     </div>
                     <br>         
                      
                  <div class="row">
                         <div class="col-sm-3">
                             </div>
                       <div class="col-sm-6">
                             <input  style=" border:solid black" type="submit"  name="btn_save" class="btn btn-success form-control" value="Submit">
                         </div>
                      
                       <div class="col-sm-3">
                             </div>

                     </div>
                 </div>
                 
                   </div>
                 
             </div>
              
        </div>
        </form> 
    </body>
</html>
