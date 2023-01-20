<%@page import = "java.sql.*" %>
<html>
	<head>
		<style>
			* {font-size:50px ; font-family:Cambria;}
			body{
			background: linear-gradient(
        rgba(255, 255, 255, 0.5),
        rgba(255, 255, 255, 0.5)
      ),
      url("https://images.pexels.com/photos/768473/pexels-photo-768473.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500");
    background-size: cover;
  }}
	.nav {background-color:black;}
		.nav a {color:white ; text-decoration:none ; margin:5%;}
		
			
		</style>
		<title>Employee management sysytem</title>
		
	</head>
	<body>
	<center>
		<div class = "nav" >
			
			<a href = "signup.jsp">SignUp</a>
			
			<a href = "index.jsp">Login</a>
		
		</div>
		<h1> Student Mangement System </h1>
		<h1>Login page</h1>
		
		<form >
			<input type = "text" name = "un" placeholder = "enter ur name "  />
			<br/><br/>
			<input type = "password"  name = "pw"  placeholder = "enter ur password"   />
			<br/><br/>
			
			
			<br/><br/>
			<input type = "submit" value = "Login" name = "btn" />
			<br/><br/>
			

		</form>
	
		
		
		
	
		<% 
			if(request.getParameter("btn")!=null)
			{
			String un  = request.getParameter("un");
			String pw = request.getParameter("pw");
			try{
			
			
			
	DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());

	//get connection
	String url = "jdbc:mysql://localhost:3306/auth_5jan23";
	String username = "root";
	String password = "abc456";
	Connection con = DriverManager.getConnection(url , username , password);
	

	String sql = "select * from users where username = ? and password = ?";
	PreparedStatement pst = con.prepareStatement(sql);	
	pst.setString(1 , un);
	pst.setString(2, pw);
	ResultSet rs = pst.executeQuery();
	if(rs.next())
	{
		request.getSession().setAttribute("user",un);
		response.sendRedirect("home.jsp");
	}
	else
	{
	out.println("invalid login");
	
	}
	}
	
catch(SQLException er)
{
	out.println("issue " + er);

	
	}

	

}		
			
		%>
		</center>
		</body>
		</html>
			