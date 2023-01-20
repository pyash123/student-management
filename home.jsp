
<html>
	<head>
		<style>
			* {font-size:50px ; font-family:Cambria;}
			body{background-color:rgb(155  ,142 , 162);}
					
	body {
  background-image: url("https://images.pexels.com/photos/768473/pexels-photo-768473.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500");
}
		
		.nav a {color:white ; text-decoration:none ; margin:5%;}	
		h1{color:cyan}
		</style>
		<title>AU APP</title>
		
	</head>
	<body>
	<center>
		


		<div class = "nav" >
			<a href = "view.jsp">View</a>
			<a href = "create.jsp">Create </a>
			<a href = "update.jsp">Update </a>
			<a href = "delete.jsp">Delete</a>
			<a href = "index.jsp">Logout</a>
		</div>


	<br/><br/>
	
	
		
	<form>

	
  	</form>

		
		<% 
			if(session.getAttribute("user")!=null)
			{
			String user  = (String)session.getAttribute("user");	
			out.println("Welcome !!! " + user);
			}
			else
			{
			response.sendRedirect("index.jsp");
	}

		%>

	
	
	
	<% 
			if(request.getParameter("btn")!=null)
			{
				request.getSession().invalidate();
				response.sendRedirect("index.jsp");
			}
			
			if(request.getParameter("btnAdd")!=null)
			{
			
				response.sendRedirect("create.jsp");
			}
			if(request.getParameter("btnView")!=null)
			{
			
				response.sendRedirect("view.jsp");
			}
		%>

	
		</center>
		</body>
		</html>
			