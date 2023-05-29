<!DOCTYPE html>
<html>
    <head>
        <title>All Buses</title>
        <link rel="stylesheet" type="text/css" href="AllStyle.css">
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
    			width: 80%;
				margin: auto;
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

    <body id="boy1">
        <div id="color-box">
			
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
        
            <div id="div4">
                <h3>All Available Buses</h3>
                <hr>

                <%@include file="connect.jsp" %>

				<%
					Statement st=null;
					ResultSet rs=null;

					try
					{
						st=con.createStatement();

						String sql="select * from buses order by date2";
						rs=st.executeQuery(sql);
				%>

				<br><br>
				<table id="tab1" cellpadding="10" ,border="2">
					<tr>
						<th><h3 class="h3">Bus ID</h4></th>
						<th><h3 class="h3">Name</h4></th>
						<th><h3 class="h3">Type</h4></th>
						<th><h3 class="h3">Source</h4></th>
						<th><h3 class="h3">Destination</h4></td>
						<th><h3 class="h3">Date</h4></td>
						<th><h3 class="h3">Total Seats</h4></th>
						<th><h3 class="h3">Seats Remaining</h4></th>
					</tr>

				<%
					while(rs.next())
					{
				%>
					<tr>
						<td> <%= rs.getInt("bus_ID")%>   </td>
						<td> <%= rs.getString("name")%>   </td>
						<td> <%= rs.getString("type")%>   </td>
						<td> <%= rs.getString("source")%>   </td>
						<td> <%= rs.getString("destination")%>   </td>
						<td> <%= rs.getString("date2")%>   </td>
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
            </div>

        </div> 
    </body>
</html>


