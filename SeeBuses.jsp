<html>
<head><title>Buses</title></head>
<body>
<center><h2><p>Buses in the database</p></h2>

<br><h3><p align="right"><a href="AdminFront.jsp">Go_Back</a></p></h3>

<%@include file="connect.jsp" %>

<%
	Statement st=null;
	ResultSet rs=null;

	try
	{
		st=con.createStatement();

		String sql="select * from buses";
		rs=st.executeQuery(sql);
%>

	<br><br>
	<table cellpadding="15" border="2">
		<tr>
			<td><h3>Bus_ID</h3</td>
			<td><h3>Source</h3</td>
			<td><h3>Destination</h3</td>
			<td><h3>Fare</h3</td>
			<td><h3>Total_Seats</h3</td>
			<td><h3>Seats_Remaining</h3</td>
		</tr>

	<%
		while(rs.next())
		{
			%>
			<tr>
				<td> <%= rs.getInt("bus_ID")%>   </td>
				<td> <%= rs.getString("source")%>   </td>
				<td> <%= rs.getString("destination")%>   </td>
				<td> <%= rs.getInt("fare")%>   </td>
				<td> <%= rs.getInt("total_seats")%>   </td>
				<td> <%= rs.getInt("seats_rem")%>   </td>
			</tr>
		

			<%
		}
		%>
	</table>
	<%
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
	










