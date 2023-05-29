<!DOCTYPE html>
<html id="ht">
    <head id="hd">
        <title>BusTravel</title>

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
    			width: 85%;
				margin-left: 10%;
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
            h4{
                width: 100%;
                height: auto;
                margin: -1px;
            }
            .labels{
                border: 0px;
            }
        </style>

    </head>

    <body>
        
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
            <h3>All Available Buses</h3>
            <hr>

            <%@include file="connect.jsp" %>

            <%
	            Statement st=null;
	            ResultSet rs=null;

	            String s1=request.getParameter("from");
	            String s2=request.getParameter("to");
	            

	            try
	            {
                   
			        st=con.createStatement();
                    
			        String q1="select * from buses where source like '"+s1+"' and  destination like '"+s2+"'";  	
			        rs=st.executeQuery(q1);

                    session.setAttribute("from",s1);
                    session.setAttribute("to",s2);

                    

                        %>

                        <br><br>
                        <table id="tab1" cellpadding="10" ,border="2">
                            <tr>
                                <th><h4>Bus ID</h4></th>
                                <th><h4>Name</h4></th>
                                <th><h4>Type</h4></th>
                                <th><h4>Source</h4></th>
                                <th><h4>Destination</h4></th>
                                <th><h4>Date of Journey</h4></th>
                                <th><h4>First Class</h4></th>
                                <th><h4>Second Class</h4></th>
                                <th><h4>Total Seats</h4></th>
                                <th><h4>Seats Remaining</h4></th>
                                <th><h4>Action</h4></th>
                            </tr>

                        <%
                        while(rs.next())
                        {
                            %>
                            <tr>
                                <td> <%= rs.getInt("bus_id")%>   </td>
                                <td> <%= rs.getString("name")%>   </td>
                                <td> <%= rs.getString("type")%>   </td>
                                <td> <%= rs.getString("source")%>   </td>
                                <td> <%= rs.getString("destination")%>   </td>
                                <td> <%= rs.getString("date2")%>   </td>
                                <td> <label class="fas fa-rupee-sign" aria-hidden="true"><%= rs.getInt("ac1")%>  </label> </td>
                                <td><label class="fas fa-rupee-sign" aria-hidden="true"><%= rs.getInt("sleeper")%></label>    </td>
                                <td> <%= rs.getInt("total_seats")%>   </td>
                                <td> <%= rs.getInt("seats_rem")%>   </td>
                                <td> <a href="bookmore3.jsp?bus=<%= rs.getInt("bus_ID")%>"><label class="labels fa fa-ticket-alt" id="btn"> Book</label></a> </td>
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

    </body>
</html>


