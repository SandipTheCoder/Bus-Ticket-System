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
    			width: 83%;
				margin-left: 8%;
                padding: 1px;
    			border-collapse: collapse;
    			table-layout: fixed;
    			border-width: 0px;
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
           /*  *{
                border: 1px solid red;
            } */
            h4{
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
				<h2><label class="labels fa fa-home"><a href="home.jsp"> Home   </a> </label>
					<label class="labels fa fa-user "><a href="about.jsp"> About Us   </a> </label>
					<label class="labels fa fa-search"><a href="searchFairs.jsp"> Search Fares   </a> </label>
					<label class="labels fa fa-bus"><a href="allBuses.jsp"> All Buses   </a></label>
					<label class="labels fa fa-address-book"><a href="regis.html"> Register   </a></label>
					<label class="labels fa fa-user-circle"><a href="login.jsp"> Login   </a> </label>
					<label class="labels fa fa-phone-square"><a href="contact.jsp"> Contact Us   </a> </label>
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

						String sql="select * from buses";
						rs=st.executeQuery(sql);
				%>

				<br><br>
				<table id="tab1" cellpadding="10" ,border="1">
					<tr>
						<th><h4 class="h2">Bus ID</h4></th>
                        <th><h4 class="h2">Bus Name</h4></th>
                        <th><h4 class="h2">Type</h4></th>
						<th><h4 class="h2">Source</h4></th>
						<th><h4 class="h2">Destination</h4></th>
						<!-- <th><h3>Fare</h3</th> -->
                        <th><h4 class="h2">AC1</h4></th>
                        <th><h4 class="h2">AC2</h4></th>
                        <th><h4 class="h2">AC3</h4></th>
                        <th><h4 class="h2">Sleeper</h4></th>
						<th><h4 class="h2">Total Seats</h4></th>
						<th><h4 class="h2">Seats Remaining</h4></th>
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
						<!-- <td> <%= rs.getInt("fare")%>   </td> -->
                        <td> <%= rs.getInt("ac1")%>   </td>
                        <td> <%= rs.getInt("ac2")%>   </td>
                        <td> <%= rs.getInt("ac3")%>   </td>
                        <td> <%= rs.getInt("sleeper")%>   </td>
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


