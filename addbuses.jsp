<!DOCTYPE html>
<html>
	<head>
		<title>Bus Added</title>
		<link rel="stylesheet" type="text/css" href="AllStyle.css">
        <link rel="stylesheet" type="text/css" href="jquery-ui.min.css">
        <script src="jquery-3.6.0.min.js"></script>
        <script src="jquery-ui.min.js"></script>
        <link rel="stylesheet" type="text/css" href="css/all.min.css">

		<style>
			.relog_div p
			{
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
		</style>
	</head>

<body>

	<div id="color-box">

		<div id="div1">
			<h1>Bus Ticket Booking System</h1>
		</div>

		<div id="div2">
			<h2><label class="labels fa fa-home"><a href="AdminFront.jsp"> Home   </a>  </label>
                <label class="labels fa fa-user"><a href="about1.jsp"> About Us   </a> </label>
                <label class="labels fa fa-bus"><a href="adminSeeBus.jsp"> See Buses   </a>  </label>
                <label class="labels fa fa-bookmark"><a href="adminBookBus.jsp"> Details   </a>  </label>
                <label class="labels fa fa-envelope"><a href="msg.jsp"> MSG   </a>  </label>
                <label class="labels fa fa-plus-circle"><a href="Admin.jsp"> Add Buses   </a>  </label>
                <label class="labels fa fa-trash"><a href="delete.jsp"> Delete Buses   </a>  </label>
                <label class="labels fa fa-eye"><a href="myaccount.jsp"> My Account   </a>  </label>
                <label class="labels fa fa-power-off"><a href="logout.jsp"> Logout   </a>  </label>
			</h2>
		</div>

		<div class="relog_div">

		
			<%@include file="connect.jsp" %>

			<%
				Statement st=null;
				String s1=request.getParameter("bus_id");
				String s2=request.getParameter("from");
				String s3=request.getParameter("to");
				String s4=request.getParameter("date1");
				String s5=request.getParameter("tseats");
				String s6=request.getParameter("seatsr");
				String s7=request.getParameter("name");
				String s8=request.getParameter("type");
				String s9=request.getParameter("ac1");
				String s10=request.getParameter("sleeper");

				int a, b, c,d,f;
				a=Integer.parseInt(s1);
				b=Integer.parseInt(s9);
				f=Integer.parseInt(s10);
				c=Integer.parseInt(s5);
				d=Integer.parseInt(s6);

				try
				{
					st=con.createStatement();

					String sql="Insert into buses(bus_id,source,destination,total_seats,seats_rem,name,type,ac1,sleeper,date2) values('"+a+"','"+s2+"','"+s3+"','"+c+"','"+d+"','"+s7+"','"+s8+"','"+b+"','"+f+"','"+s4+"')";
					st.execute(sql);
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
						con.close();
					}
					catch(Exception e)
					{}
				}
			%>
			<p>
				New bus added successfully.
			</p>

	</div>


<!-- <h2><p align="center"><a href ="AdminFront.jsp">Continue</a></p></h2> -->
</body>
</html>
	










