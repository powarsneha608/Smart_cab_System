<%-- 
    Document   : reportview
    Created on : 18 May, 2023, 2:35:40 PM
    Author     : Snehal
--%>

<%@page import="java.util.Map"%>
<%@page import="net.sf.jasperreports.engine.JasperRunManager"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.io.File"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Receipt</title>
    </head>
    <body>
       
        <%
        
         Connection conn = null;
            String event=request.getParameter("btn");
            String a=request.getParameter("txt_id");
           
            
            try {
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/SMART_CAB_SYSTEM", "root", "root");
            } catch (Exception ex) {
                ex.printStackTrace();
            }
         if(event.equals("Click"))
            {
            
            File reportFile = new File(application.getRealPath("Report\\Payment.jasper"));//your report_name.jasper file
            Map parameters = new HashMap();
            parameters.put("id", a);
            byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), parameters, conn);

            response.setContentType("application/pdf"); 
            response.setContentLength(bytes.length);
            ServletOutputStream outStream = response.getOutputStream();
            outStream.write(bytes, 0, bytes.length);
            outStream.flush();
            outStream.close();
                       }
         %>
    </body>
</html>
