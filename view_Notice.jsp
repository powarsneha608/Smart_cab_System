<%-- 
    Document   : Notice
    Created on : 20 Mar, 2023, 7:43:22 AM
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
        <title>view Notice</title>
        <link rel="stylesheet" href="bootstrap.min.css">
        <style>
        .container{
              
                margin: 20px;
                padding: 10px;
                background-color:white;
                 box-shadow: -7px -7px 20px rgba(0, 0, 0, 0.2),
                              7px  7px 20px rgba(0, 0, 0, 0.2)
            }
            </style>
        
    </head>
    <body>
          <%@include file="Header_Driver.jsp"%>
         <div class="container-fluid" >
        <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-10">
                <div class="row">
                          <div class="col-sm-2">
                              <br>
                              <br>
                              <img src="img/download.png"height="100" width="200">
                          
                              </div>
                          <div class="col-sm-7">
                              <br>
                              <br>
                              <br>
                              <center><h1 style="color:#CB4335; font-size:60px;">&ensp;Notice</h1></center>
                              <br>
                              <form action="view_Notice.jsp" method="POST">
                <div class="row">
                <div class="col-sm-10">
                    <input type="text" name="txt_id"  class="form-control">
                </div>
                     <div class="col-sm-2">
                    <input type="submit" name="btn_save" value="Search" class="btn btn-primary">
                     </div>
                </div>
                              </form>
                         </div>
                     </div> 
                <br>
        <div class="container">
            <br>
            <br>
            
            
      <%   
          
          Connection cn=null;
          Statement st=null;
           int counter=1;
            
    String sql="";
           String ndate=request.getParameter("txt_id");
           String Search=request.getParameter("btn_save");
           
           if(Search!=null)
           {
           sql="select * from notice where ndate='"+ndate+"'";
           }
           else 
           {
          sql="select * from notice ORDER BY ndate DESC;";
           }
      try
      {
      Class.forName("com.mysql.jdbc.Driver");
            cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/SMART_CAB_SYSTEM","root","root");
            st=cn.createStatement();
             //sql="select * from notice ORDER BY ndate  DESC;";
            ResultSet rs=st.executeQuery(sql);
            while(rs.next())
            {

      %>
     
     
        
      <div class="row">
                 <div class="col-sm-4"></div>
                <form action="view_notice" method="POST">
                    <div class="col-sm-4">
<!--                         <a href=""class="btn btn-success btn-fill ">Open</a>-->
          
            </div>
               

         <div class="col-sm-4"></div>
                </div>
        
                  <div class="col-sm-12">
                      
                         <input  value="<%=rs.getString("notice_no")%>"  type="hidden" name="notice_no">
                         <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Date :<%=rs.getString("ndate")%></p>
                        <h4>#<%=rs.getString("notice_no")%></h4>
                        <h2>Title:-</h2>
                        <h5 style="color:black">&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=rs.getString("notice_title")%></h5>
                         <!--
                        <p>Message : <%=rs.getString("message")%></p>
                         <p>Description : <%=rs.getString("Description")%></p>-->
                         <br>
                         <div class="row">
                 <div class="col-sm-4"></div>
                <form action="view_notice" method="POST">
                    <div class="col-sm-4">
<!--                         <a href=""class="btn btn-success btn-fill ">Open</a>-->
<center>  <input type="submit" name="btn_save" value="Open" class="btn btn-outline-primary" class="form-control"></center>
            </div>
               

         <div class="col-sm-4"></div>
                </div>
                       
<!--                         <input type="checkbox" name="btn_save" value="Read">
                       <label for="">Read</label><br>-->
                         <!--<center><a href="view_Notice.jsp"><input type="submit" name="btn_save" value="Read" class="btn btn-primary"></a></center>-->
                        <br>
                        <hr style="height:1px;border-width:0;color:white;background-color:black">
                    </div>
                            </form>
                         
    <%
        }
     }catch(Exception ex)
    {
    out.println(ex.toString());

     }
    %>
        </div>
              </div>
        </div>
               <div class="col-sm-1"></div>
        </div>
    </body>
</html>

