<%-- 
    Document   : Add_Cab
    Created on : 14 Feb, 2023, 10:04:33 PM
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
        <title>Add cab</title>
        <link rel="stylesheet" href="bootstrap.min.css">
        <style type="text/css">
            .container
          {
             background-color:white;
             /* margin-top:5px;  */
              margin-left: 200px;
              height: 100%;
              max-width: 100%;
              padding-top: 10px;
            box-shadow:0 20px 20px  black;
           padding-right: 10px;
           padding-left: 10px;
            
            
}
            
          
        

         body {
 background-image: url("img/Map.jpg"); /* The image used */
 background-color: #ffffff; /* Used if the image is unavailable */
  background-repeat: no-repeat; /* Do not repeat the image */
  background-size: 700px 900px;/* Resize the background image to cover the entire container */
  margin-top: 30px;

}

input[type=text],[type=file]
{
    border: solid;
}


       
         a:hover {
                background-color: #03fc07;
            }  
          
            
        </style>
    </head>
    <body>
          <%@include file="Header_Driver.jsp"%>
        <form action="Add_cab" method="POST">
             <%           
            Connection cn=null;
            Statement st=null;
//            String id="1";
            String type="";
            try
        {
         Class.forName("com.mysql.jdbc.Driver");
           cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/SMART_CAB_SYSTEM","root","root");
           st=cn.createStatement();
//           String sql="select cab_id from  add_cab_details";
            String sql= "select * from Add_Rate where cab_type='"+session.getAttribute("cab_type")+"'";
            ResultSet rs=st.executeQuery(sql);
           
         while(rs.next())
         { 
             
//           id=String.valueOf(Integer.parseInt(rs.getString("cab_id"))+1);
           type=rs.getString("Km_rate");
         }
        
        }catch(Exception ex)
        {
          out.println(ex);
        }
            
%>
        <script src="validation.js"></script>
        
        <div class="container-fluid" >
        <div class="row">
            <div class="col-sm-5"></div>
             <div class="col-sm-6">
                 
                 <div class="container">
                     <div class="row">
                          <div class="col-sm-3">
                              <img src="img/Add_Cab_1.jpg"height="100" width="200">
                          
                              </div>
                          <div class="col-sm-9">
                              <br>
                     <center><h1><b>Add Cab</b></h1></center>
                       
                         </div>
                     </div>
                      <hr style="height:2px;border-width:0;color:white;background-color:black">
                    
                        
                     
                              <div class="row">
                         <div class="col-sm-4">
                             <label><b>Cab id</b></label>
                             <input style=" border:solid black;"value="<%=session.getAttribute("driver_id")%>" onkeypress="javascript:return isNumber(event)" type="text" name="txt_id" placeholder=" cab id"  class="form-control">
                         </div>
                         <div class="col-sm-4"><span style="color:red">*</span>
                             <label><b>Driver Name</b></label>
                             <input style=" border:solid black;" value="<%=session.getAttribute("fullname")%>"  required="" onkeypress="javascript:return isString(event)" type="text" name="txt_cname" placeholder="Enter Name" class="form-control">
                         </div>
                         <div class="col-sm-4">
                             <label><b>Cab no</b></label>
                             <input style=" border:solid black;"required="" type="text" name="txt_no" placeholder="Enter cab no"  class="form-control">
                         </div>
                               
                             
                     </div>
                     <br>  
                     
                      <div class="row">
                     <div class="col-sm-4">
                               <label><b>Cab type</b></label><span style="color:red">*</span>
                               <input type="text"  name="txt_cabtype" required=""  value="<%=session.getAttribute("cab_type")%>" class="form-control">
<!--                             <select style=" border:solid black;"required="" style=" border:solid black;" name="txt_cabtype" class="form-control">
                                 <option selected >select cab type</option>
                                 <option>Cab</option>
                                 <option>auto</option>
                             </select>-->
                         </div>
                          <div class="col-sm-4">
                               <label><b>Brand name</b></label><span style="color:red">*</span>
                               <select style="border:solid black"  required="" name="txt_bname" class="form-control"
                                       
                                    <option selected>select brand name</option>
                    <%
          try
                    {
                        Class.forName("com.mysql.jdbc.Driver");
                         cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/SMART_CAB_SYSTEM","root","root");
                                              }
                    catch(Exception ex)
                    {
                        out.println(ex);
                        
                    }
                    
                    
                                      
                      try
                        {
                          st=cn.createStatement();
                          String sql="select * from brand_name where cab_type='"+session.getAttribute("cab_type")+"'";
                          ResultSet rs=st.executeQuery(sql);
                          while(rs.next())
                           {
                              
                              %>
                              
                              <option><%=rs.getString("brand_name")%></option>
                              
                              <%
                             
                           }
                        }
                      catch(Exception ex)
                         {
                          out.println(ex);
                         }           

%>
                    </select>

                         </div>
                          <div class="col-sm-4">
                               <label><b>Fuel Type</b></label><span style="color:red">*</span>
                             <select required="" style=" border:solid black;"name="txt_ftype" class="form-control">
                                 <option selected>select fuel name</option>
                                 <option>CNG </option>
                                 <option>Diesel</option>
                                 <option>Petrol</option>
                                  <option>Electric</option>
                             </select>
                          </div>
                      </div>
                     <br>
                      <div class="row">
                         <div class="col-sm-6">
                             <label><b>Cab Model</b></label><span style="color:red">*</span>
                             <input style=" border:solid black;"required="" type="text" name="txt_model" placeholder="Cab Model"  class="form-control">
                         </div>
                         <div class="col-sm-6">
                             <label><b>Rate(in km)</b></label><span style="color:red">*</span>
                             <input  readonly=""type="text" style=" border:solid black;"required="" style=" border:solid black;" value="<%=type%>" placeholder="Enter rate in km" name="txt_rate" class="form-control">
                             
                             
                         </div>
                     </div>
                     <br>
                     
                     <div class="row">
                       
                         <div class="col-sm-6">
                             <label><b>Chassis no</b></label><span style="color:red">*</span>
                             <input style=" border:solid black;"required="" type="text" maxlength="18" name="txt_chno" placeholder=" Enter Chess number"  class="form-control">
                          </div>
                         <div class="col-sm-6 ">
                             <label><b>Cab image</b></label><span style="color:red">*</span>
                             <input  required=""style=" border:solid black;"type="file" name="file_image" placeholder="image" class="form-control">
                         </div>
                     </div>
                     <br>
                     
                     <div class="row">
                         <div class="col-sm-12">
                                 <label><b>Description</b></label>
                            <textarea style=" border:solid black;"style=" border:solid black;" name="discription" class="form-control" placeholder="write discription (in 50 words)" rows="2" cols="10"></textarea>
                             </div>
                     </div>
                     <br>
                  <div class="row">
                      <div class="col-sm-3"></div>
                         <div class="col-sm-6">
                             <input style=" border:solid black;"type="submit" name="btn_save" class="btn btn-primary form-control" value="Insert">
                         </div>
                      <br>
                      <br>       
                     <div class="col-sm-3"></div>
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

