<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@page import="java.util.logging.Logger"%>
<%@page import="java.util.logging.Level"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@page import="myPackage.ConnectionDB"%>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title>Insert title here</title>
</head>
<body>
	<%  
            String id=(request.getParameter("id"));
			System.out.println(id);
            
            Blob file = null;
            byte[ ] fileData = null ;

            try
            {    
            	Connection stcon = ConnectionDB.getConnection();
            
                String sqlString = "SELECT tailieu FROM detai WHERE id = '"+id+"'";
                Statement myStatement = stcon.createStatement();
                
                ResultSet rs=myStatement.executeQuery(sqlString);
                
                if (rs.next()) 
                {
                    file = rs.getBlob("tailieu");
                    fileData = file.getBytes(1,(int)file.length());
                } else 
                {
                    out.println("file not found!");
                    return;
                }
                
                response.setContentType("application/pdf");
                response.setHeader("Content-Disposition", "inline");
                response.setContentLength(fileData.length);
                
                OutputStream output = response.getOutputStream();
                output.write(fileData);
                
                output.flush();
                
            } catch (SQLException ex) {Logger.getLogger(Logger.class.getName()).log(Level.SEVERE, null, ex);} 
        %>
</body>
</html>