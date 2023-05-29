<html>
<head>
	<title>Buses</title>
	<link rel="stylesheet" type="text/css" href="AllStyle.css">
	<link rel="stylesheet" type="text/css" href="css/all.min.css">
	<style>
		.relog_div p{
			padding-top: 15px;
			/* padding: 5px ; */
			font-size: 18px;
			width: 50%;
			height: 40px;
			margin-top: 5px ;
			margin-left: 25%;
			border: 1px solid lightcyan;
			border-radius: 30px ;
			background-color: lightcyan;
			text-align: center;
			color: red;
			font-size: 25px;
		}

		/* #relog_div p{
			font-size: 25px;
			vertical-align: middle;
		} */
	</style>
</head>

<body>
<!-- <br><h3><p align="right">Click <a href="indexPro.html">here </a>to Login.</p></h3> -->


<%@include file="connect.jsp" %>

<%
	Statement st=null;
	ResultSet rs=null;
	int s1=Integer.parseInt(request.getParameter("id"));
	String s2=request.getParameter("pwd");
	String s3=request.getParameter("role");
	String s4=request.getParameter("email");
	String s5=request.getParameter("name");
	String s6=request.getParameter("Gender");
	
	try
	{
		
		if(s3.equals("ruser"))
		{
			st=con.createStatement();
			String s ="insert into users values('"+s1+"','"+s2+"','"+s4+"','"+s5+"','"+s6+"')";   	
			st.executeUpdate(s);	
			%>

			<div id="div1">
				<h1>Bus Ticket Booking System</h1>
			</div>
			<div id="div2">
				<h2><a href="home.jsp"> <label class="labels fa fa-home"> Home   </label></a>
					<a href="about.jsp">  <label class="labels fa fa-user "> About Us    </label></a>
					<a href="searchFairs.jsp"> <label class="labels fa fa-search"> Search Fares    </label></a>
					<a href="allBuses.jsp"> <label class="labels fa fa-bus"> All Buses   </label></a>
					<a href="regis.html"> <label class="labels fa fa-address-book"> Register   </label></a>
					<a href="login.jsp"> <label class="labels fa fa-user-circle"> Login    </label></a>
					<a href="contact.jsp"> <label class="labels fa fa-phone-square"> Contact Us    </label></a>
				</h2>
			</div>
			<div class="relog_div">
				<p>Registration is completed.</p>
			</div>
			
		<%
		}
		else if(s3.equals("admin"))
		{
			st=con.createStatement();
			String ss ="insert into admin values('"+s1+"','"+s2+"','"+s4+"','"+s5+"','"+s6+"')";   	
			st.executeUpdate(ss);
			
			%>

			<div id="div1">
				<h1>Bus Ticket Booking System</h1>
			</div>
			<div id="div2">
				<h2><label class="labels fa fa-home"><a href="home.jsp"> Home   </a> </label>
					<label class="labels fa fa-user "><a href="about.jsp"> About Us   </a> </label>
					<label class="labels fa fa-search"><a href="searchFairs.jsp"> Search Fares   </a> </label>
					<label class="labels fa fa-bus"><a href="allBuses.jsp"> All Buses   </a></label>
					<label class="labels fa fa-address-book"><a href="regis.html"> Register   </a></label>
					<label class="labels fa fa-user-circle"><a href="login.jsp"> Login   </a> </label>
					<label class="labels fa fa-phone-square"><a href="contact.jsp"> Contact Us   </a> </label>
				</h2>
			</div>
			<div class="relog_div">
				<p>Registration is completed.</p>
			</div>
			
		<%
		}
		
	}
	catch(Exception e)
	{
		out.println(e);
	}
	finally
	{
		try
		{
			rs.close();
			st.close();
			con.close();
		}
		catch(Exception e)
		{}
	}
%>


</body>
</html>









