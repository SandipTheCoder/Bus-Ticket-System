<!DOCTYPE html>
<html>
<head>
	<title>Previous Booking</title>
    <link rel="stylesheet" type="text/css" href="AllStyle.css">
	<link rel="stylesheet" type="text/css" href="jquery-ui.min.css">
	<script src="jquery-3.6.0.min.js"></script>
	<script src="jquery-ui.min.js"></script>
	<link rel="stylesheet" type="text/css" href="css/all.min.css">

	<style>
		#div4{
			padding-left: 3px;
			padding-right: 3px;
			margin-top: 5px;
			font-size: 18px;
			border: 1px solid lightcyan;
			border-radius: 20px ;
			background-color: lightcyan;
		}
		
		#tab1{
			width: 95%;
			margin:auto;
			border-collapse: collapse;
			table-layout: fixed;
			border: 1px solid dimgray;
		}

		td{
			text-align: center;
		}
		th{
			background-color: dimgray;
			color: white
		}
		tr:nth-child(odd){
			background-color: lightsteelblue;
		}
		.h3{
			width: 100%;
			height: auto;
			margin: -1px;
		}
	</style>

	

</head>

<body>
    <div id="color-box">

        <div id="div1">
            <h1>Bus Ticket Booking System</h1>
        </div>

        <div id="div2">
            <h2><label class="labels fa fa-home"><a href="User.jsp"> Home </a> </label>
                <label class="labels fa fa-user"><a href="about2.jsp"> About Us </a> </label>
                <label class="labels fa fa-bus"><a href="userSeeBus.jsp"> See Buses </a> </label>
                <label class="labels fa fa-ticket-alt"><a href="bookmore.jsp"> Book Tickets </a> </label>
                <label class="labels fa fa-newspaper"><a href="history.jsp"> Previous Bookings </a> </label>
                <label class="labels fa fa-eye"><a href="Useraccount.jsp"> My Account  </a> </label>
                <label class="labels fa fa-power-off"><a href="logout.jsp"> Logout</a> </label>
            </h2>
        </div>


		<div id="div4">
			<h3>Your Previous Bookings</h3>
			<hr>

<%@include file="connect.jsp" %>

<%
	Statement stmt=null;
	ResultSet rs=null;
	
	

	try
	{
		stmt=con.createStatement();

		
		String s1 ="SELECT  *  from details where u_id= '"+session.getAttribute("userId")+"' order by bus_id";   	
		rs=stmt.executeQuery(s1 );
		
		int flag=0;
%>

		<br><br>
		<table id="tab1" cellpadding="10" ,border="2">
		<tr>
			
			<th><h3 class="h3">User ID</h3></th>
			<th><h3 class="h3">Bus Number</h3></th>
			<th><h3 class="h3">Bus Name</h3></th>
			<th><h3 class="h3">Ticket Type</h3></th>	
			<th><h3 class="h3">Source</h3></th>
			<th><h3 class="h3">Destination</h3></th>
			<th><h3 class="h3">Date</h3></th>
			<th><h3 class="h3">Number of Tickets</h3></th>
			
			
		</tr>

		<%
			while(rs.next())
			{

		%>
				<%flag=1 ;%>
				<tr>
					<td> <%= rs.getInt("u_id") %>   </td>
					<td> <%= rs.getInt("BUS_ID") %>   </td>
					<td> SandipBus</td>
					<td> <%=rs.getString("TYPE") %>   </td>
					<td> <%=rs.getString("SOURCE") %>   </td>
					<td> <%=rs.getString("DESTINATION") %>   </td>
					<td> <%=rs.getString("date1") %>   </td>
					<td> <%= rs.getInt("tickets")%>   </td>
					
					
				</tr>
			

		<%
			}
		if(flag==0)
		{
			out.println("<h2>You dont have any previous bookings</h2>");
		}
	}
	catch(Exception e)
	{}
	finally
	{
		try
		{
			stmt.close();
			rs.close();
			con.close();
		}
		catch(Exception e)
		{}
	}
%>


</body>
</html>
	










