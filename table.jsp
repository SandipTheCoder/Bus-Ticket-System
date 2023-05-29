<!DOCTYPE html>
<html>
    <head>
        <title>Confirm</title>
        <link rel="stylesheet" type="text/css" href="AllStyle.css">
        <link rel="stylesheet" type="text/css" href="jquery-ui.min.css">
        <script src="jquery-3.6.0.min.js"></script>
        <script src="jquery-ui.min.js"></script>
        <link rel="stylesheet" type="text/css" href="css/all.min.css">
    </head>

    <body>

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

            try{

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
				if(s6.equals("ac"))
				{
					while(rs.next())
					{
						s=rs.getInt("bus_id");
						m=n*rs.getInt("SLEEPER");
						flag=1;
					}
					if(flag==1)
					{
                    %>
                        <div>
                            <p>Enter Passenger Details</p>
                        </div>
                        <hr>
                        <div>
                            <table>
                                <tr>
                                    <td>Bus Number</td>
                                    <td>Bus Name</td>
                                </tr>
                                <tr>
                                    <td> <%= rs.getInt("bus_ID")%></td>
                                    <td> <%= rs.getString("name")%></td>
                                </tr>
                                <tr>
                                    <td>From Station</td>
                                    <td>To Station</td>
                                </tr>
                                <tr>
                                    <td> <%= rs.getString("source")%>  </td>
                                    <td><%= rs.getString("destination")%> </td>
                                </tr>
                                <tr>
                                    <td>Seat Type</td>
                                </tr>
                                <tr>
                                    <td> <%= rs.getString("type")%></td>
                                </tr>

                            </table>

                        </div>

                    <%
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