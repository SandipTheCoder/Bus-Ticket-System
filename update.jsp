<html>
<head><title>Tickets Booked</title></head>
<body>

<br><br><br><br><br>

<center><h2>

<%@include file="connect.jsp" %>

<%
	Statement st=null;
	ResultSet rs=null;

	String s5=request.getParameter("bid");
	String s1=request.getParameter("from");
	String s2=request.getParameter("to");
	String s6=request.getParameter("type");
	String s3=request.getParameter("date");
	String s4=request.getParameter("ntickets");

	int n=Integer.parseInt(s4);
	int m=n;

	try
	{
		st=con.createStatement();

		String sql1="Update buses set seats_rem =seats_rem -"+n+" where source = '"+s1+"' and destination ='"+s2 +"' and bus_id='"+s5+"' and DATE2='"+s3+"'";
		st.executeUpdate(sql1);

		sql1="select seats_rem from buses where source = '"+s1+"' and destination = '"+s2+"' and bus_id='"+s5+"' and DATE2='"+s3+"'";
		rs=st.executeQuery(sql1);
		
		int x=0;
		while(rs.next())
		{
			x=rs.getInt("seats_rem");
		
			if(x<0)
			{
				out.println("<br><pre>Sorry!!! number of seats remaining are lesser. ");
				sql1="Update buses set seats_rem=seats_rem+ "+n+" where source = '"+s1+"' and destination = '"+s2+"' and bus_id='"+s5+"' and DATE2='"+s3+"'";
				st.executeUpdate(sql1);
			}
			else
			{
				sql1="select bus_id, AC1 ,SLEEPER from buses where source = '"+s1+"' and destination = '"+s2+"' and bus_id='"+s5+"' and DATE2='"+s3+"'";
				rs=st.executeQuery(sql1);

				int s=0;
				int flag=0;
				if(s6.equals("AC"))
				{
					while(rs.next())
					{
						s=rs.getInt("bus_id");
						m=n*rs.getInt("ac1");
						flag=1;
					}
					if(flag==1)
					{
						out.println("<br>Tickets Booked");
						out.println("<br><br><br>From : "+s1);
						out.println("<br><br>To : "+s2);
						out.println("<br><br>Date : "+s3);
						out.println("<br><br>Total number of Tickets : "+s4);
						out.println("<br><br>Total Cost : "+m);
						sql1="Insert into details ( u_id, date1, bus_id, tickets) values ('"+session.getAttribute("userId")+"', '"+s3+"', '"+s+"', '"+n+"')";
						st.executeUpdate(sql1);
					}
				}

				else if(s6.equals("SLEEPER"))
				{
					while(rs.next())
					{
						s=rs.getInt("bus_id");
						m=n*rs.getInt("SLEEPER");
						flag=1;
					}
					if(flag==1)
					{
						out.println("<br>Tickets Booked");
						out.println("<br><br><br>From : "+s1);
						out.println("<br><br>To : "+s2);
						out.println("<br><br>Date : "+s3);
						out.println("<br><br>Total number of Tickets : "+s4);
						out.println("<br><br>Total Cost : "+m);
						sql1="Insert into details ( u_id, date1, bus_id, tickets) values ('"+session.getAttribute("userId")+"', '"+s3+"', '"+s+"', '"+n+"')";
						st.executeUpdate(sql1);
					}
				}
				else
				{
					out.println("<br><pre> Sorry!! No buses are there . </pre>");
				}
				
		
			}
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
			st.close();
			rs.close();
			con.close();
		}
		catch(Exception e)
		{}
	}
%>

<h2><center>
<br><br><br>
<h2><p align="center"><a href ="User.jsp">Continue</a></p></h2>
</body>
</html>
	










