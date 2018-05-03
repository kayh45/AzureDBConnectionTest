<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*"  %>
<%@ page import = "com.microsoft.sqlserver.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>select</title>
</head>
<body>
<%

// Create a variable for the connection string.
String connectionUrl = "jdbc:sqlserver://mistest2.database.windows.net:1433;database=mistest;user=kayh45@mistest2;password=1q2w3e4r*;encrypt=true;trustServerCertificate=false;hostNameInCertificate=*.database.windows.net;loginTimeout=30";

// Declare the JDBC objects.
Connection con = null;
Statement stmt = null;
ResultSet rs = null;

	try {
		// Establish the connection.
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
    		con = DriverManager.getConnection(connectionUrl);
    
    		// Create and execute an SQL statement that returns some data.
    		String SQL = "SELECT * FROM test order by test_no";
    		stmt = con.createStatement();
    		rs = stmt.executeQuery(SQL);
    
    		// Iterate through the data in the result set and display it.
    		while (rs.next()) {
    			out.println(rs.getInt(1) + " " + rs.getString(2) + "<BR>");
    		}
	}

// Handle any errors that may have occurred.
catch (Exception e) {
	e.printStackTrace();
}

finally {
	if (rs != null) try { rs.close(); } catch(Exception e) {}
		if (stmt != null) try { stmt.close(); } catch(Exception e) {}
		if (con != null) try { con.close(); } catch(Exception e) {}
}

%>
<a href = "index.jsp">홈 화면으로 이동</a>
</body>
</html>