<%@page import ="java.sql.*" %>

<html>
	<head>
	<title>SMS App </title>
	<style>
		* {font-size:40px ;}
		//.nav {background-color:black;}
		.nav a {color:white ; text-decoration:none ;margin:5%;}
		body {
  background-image: url("https://images.pexels.com/photos/768473/pexels-photo-768473.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500");
}
	</style>
	</head>
	</body>
	<center>
		<div class = "nav" >
			<a href = "view.jsp">View </a>
			<a href = "create.jsp">Create </a>
			<a href = "update.jsp">Update </a>
			<a href = "delete.jsp">Delete</a>
			<a href = "index.jsp">Logout</a>
		</div>
		<h1> Delete page </h1>
		<form>
			<input type = "number" name = "rno" placeholder = "enter rno "  required min = "1"  />
			<br/><br/>
			
			<input type = "submit" value = "Delete" name ="btn" />
			<br/><br/>
		<form>
		<%
			if(request.getParameter("btn")!=null)
			{
			int rno = Integer.parseInt(request.getParameter("rno"));			
			try
			{
				DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());

	//get connection
	String url = "jdbc:mysql://localhost:3306/yp_5jan23";
	String username = "root";
	String password = "abc456";
	Connection con = DriverManager.getConnection(url , username , password);
	String sql = "delete from student where rno = ?";
	PreparedStatement pst = con.prepareStatement(sql);	
	pst.setInt(1 , rno);
	long r = pst.executeUpdate();
	con.close();
	out.println(r + " " + "record deleted");

	
	}
		
	catch(SQLException err)
	{
		out.println("issue " + err);

	}
}

	%>
	
	
		</center>
		</body>
		</html>
			

	
	