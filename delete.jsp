<!DOCTYPE html>
<html>
    <head>
        <title>All Buses</title>
        <link rel="stylesheet" type="text/css" href="AllStyle.css">
		<link rel="stylesheet" type="text/css" href="css/all.min.css">
        <script src="jquery-3.6.0.min.js"></script>
	    <script src="jquery-ui.min.js"></script>
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
			#btn{
                border:none;
            }
			.h3{
				width: 100%;
				height: auto;
				margin: -1px;
			}
		</style>

        <script>
            $('table ').on('click', 'btn', function(){
                $this.console('tr').remove();
            })
            

        </script>
    </head>

    <body id="boy1">
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
						<th><h3 class="h3">Bus ID</h3></th>
						<th><h3 class="h3">Name</h3></th>
						<th><h3 class="h3">Type</h3></th>	
						<th><h3 class="h3">Source</h3></th>
						<th><h3 class="h3">Destination</h3></th>
						<th><h3 class="h3">Date</h3></th>
						<th><h3 class="h3">First Class</h3></th>
						<th><h3 class="h3">Second Class</h3></th>	
						<th><h3 class="h3">Total Seats</h3></th>
						<th><h3 class="h3">Seats Remaining</h3></th>
                        <th><h3 class="h3">Action</h3></th>
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
						<td> <label class="fas fa-rupee-sign" aria-hidden="true"> <%= rs.getInt("ac1")%>   </label></td>
						<td> <label class="fas fa-rupee-sign" aria-hidden="true"> <%= rs.getInt("sleeper")%>   </label></td>
						<td> <%= rs.getInt("total_seats")%>   </td>
						<td> <%= rs.getInt("seats_rem")%>   </td>
                        <td> <a href="del.jsp?bus=<%= rs.getInt("bus_ID")%>"><label class="labels fa fa-trash" id="btn"></label></a> </td>
                        
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


