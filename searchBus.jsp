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
    			width: 80%;
				margin-left: 10%;
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

        </style>

    </head>

    <body>
        
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

	            String s1=request.getParameter("from");
	            String s2=request.getParameter("to");
	            

	            try
	            {
                   
			        st=con.createStatement();
                    
			        String q1="select * from buses where source like '"+s1+"' and  destination like '"+s2+"'";  	
			        rs=st.executeQuery(q1);

                    

                        %>

                        <br><br>
                        <table id="tab1" cellpadding="10" ,border="2">
                            <tr>
                                <th><h4>Bus ID</h4></th>
                                <th><h4>Name</h4></th>
                                <th><h4>Type</h4></th>
                                <th><h4>Source</h4></th>
                                <th><h4>Destination</h4></th>
                                <th><h4>First Class</h4></th>
                                <th><h4>Second Class</h4></th>
                                <th><h4>Total Seats</h4></th>
                                <th><h4>Seats Remaining</h4></th>
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
                                <td> <label class="fas fa-rupee-sign" aria-hidden="true"><%= rs.getInt("ac1")%>  </label> </td>
                                <td><label class="fas fa-rupee-sign" aria-hidden="true"><%= rs.getInt("sleeper")%></label>    </td>
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

    </body>
</html>


