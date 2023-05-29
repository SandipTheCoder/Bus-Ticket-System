<!DOCTYPE html>
<html>
<head>
    <title>All Buses</title>
    <link rel="stylesheet" type="text/css" href="AllStyle.css">
    <link rel="stylesheet" type="text/css" href="css/all.min.css">
    <script src="jquery-3.6.0.min.js"></script>
    <script src="jquery-ui.min.js"></script>
</head>




<body id="boy1">

    <div id="color-box">
        
        <div id="div1">
            <h1>Bus Ticket Booking System</h1>
        </div>
        <div id="div2">
            <h2><label class="labels fa fa-home"><a href="User.jsp"> Home </a> </label>
                <label class="labels fa fa-user"><a href="about2.jsp"> About Us </a> </label>
                <label class="labels fa fa-bus"><a href="userSeeBus.jsp"> See Buses </a> </label>
                <label class="labels fa fa-ticket-alt"><a href="tickets.jsp"> Book Tickets </a> </label>
                <label class="labels fa fa-newspaper"><a href="history.jsp"> Previous Bookings </a> </label>
                <label class="labels fa fa-eye"><a href="Useraccount.jsp"> My Account  </a> </label>
                <label class="labels fa fa-power-off"><a href="logout.jsp"> Logout</a> </label>
            </h2>
        </div>

<%@include file="connect.jsp" %>



<%
	Statement st=null;
	ResultSet rs=null;
    
    
    int n=(int)session.getAttribute("ntickets");
	int m=n;
	try
	{
        st=con.createStatement();
           
        
        

        String sql1="Update buses set seats_rem =seats_rem -"+session.getAttribute("ntickets")+" where source = '"+session.getAttribute("from")+"' and destination ='"+session.getAttribute("to")+"' and bus_id='"+session.getAttribute("bid")+"' and DATE2='"+session.getAttribute("date2")+"'";
		st.executeUpdate(sql1);

		

		sql1="select seats_rem from buses where source = '"+session.getAttribute("from")+"' and destination ='"+session.getAttribute("to")+"' and bus_id='"+session.getAttribute("bid")+"' and DATE2='"+session.getAttribute("date2")+"'";
		rs=st.executeQuery(sql1);

        int x=0;
		while(rs.next())
		{
			x=rs.getInt("seats_rem");
		
			if(x<0)
			{
				out.println("<br><pre>Sorry!!! number of seats remaining are lesser. ");

				sql1="Update buses set seats_rem=seats_rem+ "+session.getAttribute("ntickets")+" where source = '"+session.getAttribute("from")+"' and destination ='"+session.getAttribute("to")+"' and bus_id='"+session.getAttribute("bid")+"' and DATE2='"+session.getAttribute("date2")+"'";
				st.executeUpdate(sql1);
			}

            else
			{
				sql1="select bus_id, AC1 ,SLEEPER from buses where source = '"+session.getAttribute("from")+"' and destination ='"+session.getAttribute("to")+"' and bus_id='"+session.getAttribute("bid")+"' and DATE2='"+session.getAttribute("date2")+"'";
				rs=st.executeQuery(sql1);

				int s=0;
				int flag=0;
				if(session.getAttribute("type").equals("AC"))
				{
					while(rs.next())
					{
						s=rs.getInt("bus_id");
						m=n*rs.getInt("ac1");
						flag=1;
					}
					if(flag==1)
					{
						out.println(session.getAttribute("bid"));
                        out.println(session.getAttribute("from"));
                        out.println(session.getAttribute("to"));
                        out.println(session.getAttribute("date2"));
                        out.println(session.getAttribute("ntickets"));
						out.println("<br><br>Total Cost : "+m);

					
						sql1="Insert into details ( u_id, date1, bus_id, tickets) values ('"+session.getAttribute("userId")+"','"+session.getAttribute("date2")+"', '"+s+"', '"+session.getAttribute("ntickets")+"')";
						st.executeUpdate(sql1);
					}
				}

                else if(session.getAttribute("type").equals("SLEEPER"))
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
						out.println(session.getAttribute("bid"));
                        out.println(session.getAttribute("from"));
                        out.println(session.getAttribute("to"));
                        out.println(session.getAttribute("date2"));
                        out.println(session.getAttribute("ntickets"));
						out.println("<br><br>Total Cost : "+m);
						sql1="Insert into details ( u_id, date1, bus_id, tickets, TICKET_NO) values ('"+session.getAttribute("userId")+"','"+session.getAttribute("date2")+"', '"+s+"', '"+session.getAttribute("ntickets")+"', '"+m+s+"')";
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


</body>
</html>