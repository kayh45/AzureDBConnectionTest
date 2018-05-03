<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*"  %>
<%@ page import = "com.microsoft.sqlserver.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Test</title>
</head>
<body>
<%
// Create a variable for the connection string.
String connectionUrl = "jdbc:sqlserver://mistest2.database.windows.net:1433;database=mistest;user=kayh45@mistest2;password=1q2w3e4r*;encrypt=true;trustServerCertificate=false;hostNameInCertificate=*.database.windows.net;loginTimeout=30";
// Declare the JDBC objects.
Connection con = null;
PreparedStatement pstmt = null;
ResultSet rs = null;
        try {
        // Establish the connection.
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            con = DriverManager.getConnection(connectionUrl);
            
            // Create and execute an SQL statement that returns some data.
            String SQL = "insert into test values (?, ?)";
            pstmt = con.prepareStatement(SQL);
            
            int no = Integer.parseInt(request.getParameter("no"));
            String name = request.getParameter("name");
            
            pstmt.setInt(1, no);
            pstmt.setString(2, name);
            
            pstmt.executeUpdate();
           
            out.print("잘 업데이트 됐습니다." + "<BR>");
            out.print("입력된 test_no : " + no + "<BR>");
            out.print("입력된 test_name : " + name);
            
            // Iterate through the data in the result set and display it.
           
            
        }
        
// Handle any errors that may have occurred.
catch (Exception e) {
e.printStackTrace();
}

finally {
if (rs != null) try { rs.close(); } catch(Exception e) {}
    if (pstmt != null) try { pstmt.close(); } catch(Exception e) {}
    if (con != null) try { con.close(); } catch(Exception e) {}
}
 %>
 <br>
 <a href = "select.jsp">select화면으로 이동</a>
</body>
</html>
