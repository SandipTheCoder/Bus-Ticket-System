<!DOCTYPE html>
<html>


    <head>
        <title>Bill</title>
        <link rel="stylesheet" type="text/css" href="AllStyle.css">
        <link rel="stylesheet" type="text/css" href="css/all.min.css">

        <script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.9.3/html2pdf.bundle.min.js"></script>
        <script src="jquery-3.6.0.min.js"></script>
        <script src="jquery-ui.min.js"></script>
        <script src="pdfjs.js"></script>

        <style>
            #billBox{
                width: 60%;
                height: auto;
                padding: 5px;
                font-size: 18px;
                margin: 20px auto;
                box-shadow: 0px 0px 5px 2px #ccc;  
                border: 5px solid white;
                background-color: whitesmoke;
                border-radius: 3px;
            }
            #box1{
                border: 1px solid blue;
                background-color: blue;
                width: 100%;
                height: auto;
            }
           /*  *{
                border: 1px solid red;
            } */
            #box1 h2{
                font-size: 40px;
                color: white;
                text-align: center;
                font-family: 'Courier New', Courier, monospace;
                font-style: italic;
                padding: 10px;
            }
               
            #box2{
                width: auto;
                height: auto;
                padding: 30px;
               /*  font-size: 20px; */
                margin-top: 40px;
                padding-left:7%;
            }
        
            #box3{
                width: auto;
                height: auto;
                padding: 0px 30px 0px 7%;
                font-size: 20px;
            }
            #box5{
                width: auto;
                height: auto;
                margin-top: 10%;
                padding: 0px 30px 0px 7%;
                font-size: 20px;
                
            }
            #box3 p,
            #box5 p{
                font-size: 30px;
                color: darkgoldenrod;
            }
            .hr1{
                width: 90%;
                position: relative;
                /* top: 20px; */
                border: none;
                height: 12px;
                background-color: blue;
                margin: auto;
                bottom: 10px;
                
            }
            .hr2{
                width: 90%;
                position: relative;
                top: 30px;
                border: none;
                height: 12px;
                background-color: blue;
                margin: auto;
            }
            #box4,
            #box6{
                width: 100%;
                height: auto;
                font-size: 20px;
                /* margin: 30px; */
            }
            
            .tableAll{
    			width: 100%;
    			border-collapse: collapse;
    			table-layout: fixed;
    			
    		}

			.tdodd{
                text-align: left;
                padding-left: 10%;
                font-size: 18px;
            }
            .tdeven{
    			text-align: left;
                padding-left: 10%;
                font-size: 22px;
                font-weight: bold;
			}
            #box7{
                margin-top: 100px;
                border: 1px solid blue;
                background-color: blue;
                width: 100%;
                height: auto;
                text-align: center;
            }
            #lab01{
                font-size: 22px;
                font-weight: bold;
                margin-right: 20px;
            }
			
            #centerDiv{
                margin-top: 10px;
                text-align: center;
            }
            button{
                margin: 20px;
                padding: 5px 10px;
                border-radius: 10px;
                font-size: 18px;
                color: crimson;
                background-color: cyan;  
            }
            button:hover{
                background: burlywood; 
            }


            /* *{
                border: 1px solid red;
            } */
        </style>
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
                        %>
                        
                        <div class="relog_div">
                            <p>Sorry!!! number of seats remaining are lesser.</p>
                        </div>
                        <%

                        sql1="Update buses set seats_rem =seats_rem+"+session.getAttribute("ntickets")+" where source = '"+session.getAttribute("from")+"' and destination ='"+session.getAttribute("to")+"' and bus_id='"+session.getAttribute("bid")+"' and DATE2='"+session.getAttribute("date2")+"'";
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


                                %>

                                <div id="centerDiv">
                                 
                                    <button class="btn btn-primary" id="download"><i class="fa fa-download" aria-hidden="true">   Download Tickets</i></button>
                                </div>


                                <div id="billBox">
                                    <div id="box1">
                                        <label><h2>SandipBus Travel</h2></label>
                                    </div>
                                    <div id="box2">
                                        <label id="lab01">Ticket number : </label>
                                        <label><%out.println(m+s);%></label>
                                    </div>
                    
                                    <div id="box3">
                                        <p>Bus Information</p>
                                    </div>
                    
                                    <hr class="hr1">
                    
                                    <div id="box4">
                                        <table class="tableAll" cellpadding="3" ,border="2">
                                            <tr>
                                                <td class="tdeven">Bus Number</td>
                                                <td class="tdeven">Date of Journey</td>
                                            </tr>
                                            <tr>
                                                <td class="tdodd"><%out.println(session.getAttribute("bid"));%></td>
                                                <td class="tdodd"><%out.println(session.getAttribute("date2"));%></td>
                                            </tr>
                                            <tr><td></td><td></td></tr>
                                            <tr><td></td><td></td></tr>
                                            <tr><td></td><td></td></tr>
                                            <tr>
                                                <td class="tdeven">From</td>
                                                <td class="tdeven">To</td>
                                            </tr>
                                            <tr>
                                                <td class="tdodd"><%out.println(session.getAttribute("from"));%></td>
                                                <td class="tdodd"><% out.println(session.getAttribute("to"));%></td>
                                            </tr>
                                            <tr><td></td><td></td></tr>
                                            <tr><td></td><td></td></tr>
                                            <tr><td></td><td></td></tr>
                                            <tr>
                                                <td class="tdeven">Ticket Type</td>
                                                <td class="tdeven">Total Number of Tickets</td>
                                            </tr>
                                            <tr>
                                                <td class="tdodd"><%out.println(session.getAttribute("type"));%></td>
                                                <td class="tdodd"><%out.println(session.getAttribute("ntickets"));%></td>
                                            </tr>
                                            <tr><td></td><td></td></tr>
                                            <tr><td></td><td></td></tr>
                                            <tr><td></td><td></td></tr>
                                            <tr>
                                                <td class="tdeven">Total Cost</td>
                                                <td class="tdeven"></td>
                                            </tr>
                                            <tr>
                                                <td class="tdodd"><%out.println(m);%></td>
                                                <td class="tdodd"></td>
                                            </tr>
                                        </table>
                                    </div>
                    
                                    <hr class="hr2">
                                    
                                    <div id="box5">
                                        <p>Passenger Details</p>
                                    </div>
                                    <div id="box6">
                                        <table class="tableAll" cellpadding="3" ,border="2">
                                            <tr>
                                                <td class="tdeven">First name</td>
                                                <td  class="tdeven">Last name</td>
                                            </tr>
                                            <tr>
                                                <td class="tdodd"><%out.println(session.getAttribute("fname"));%></td>
                                                <td  class="tdodd"><%out.println(session.getAttribute("lname"));%></td>
                                            </tr>
                                            <tr><td></td><td></td></tr>
                                            <tr><td></td><td></td></tr>
                                            <tr><td></td><td></td></tr>
                                            <tr>
                                                <td class="tdeven">Phone number</td>
                                                <td class="tdeven"></td>
                                            </tr>
                                            <tr>
                                                <td class="tdodd"><%out.println(session.getAttribute("phone"));%></td>
                                                <td class="tdodd"></td>
                                            </tr>
                                        </table>
                                    </div>
                    
                                    <div id="box7">
                                        <h5>SandipBus Travel<br>Gopalpur, Kolkata, 458120<br>(001)123-4567, info@SandipBus.com</h5>
                                    </div>
                                    
                                </div>


                                <%
                               
                                

                            
                                sql1="Insert into details ( u_id, date1, bus_id, tickets, TICKET_NO,source,destination,type) values ('"+session.getAttribute("userId")+"','"+session.getAttribute("date2")+"', '"+s+"', '"+session.getAttribute("ntickets")+"','"+m+s+"','"+session.getAttribute("to")+"', '"+session.getAttribute("from")+"', '"+session.getAttribute("type")+"')";
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
                                %>

                                <div id="centerDiv">
                                    <button class="btn btn-primary" id="download"><i class="fa fa-download" aria-hidden="true">   Download Tickets</i></button>
                                </div>
                                <div id="billBox">
                                    <div id="box1">
                                        <label><h2>SandipBus Travel</h2></label>
                                    </div>
                                    <div id="box2">
                                        <label id="lab01">Ticket number : </label>
                                        <label><%out.println(m+s);%></label>
                                    </div>
                    
                                    <div id="box3">
                                        <p>Bus Information</p>
                                    </div>
                    
                                    <hr class="hr1">
                    
                                    <div id="box4">
                                        <table class="tableAll" cellpadding="3" ,border="2">
                                            <tr>
                                                <td class="tdeven">Bus Number</td>
                                                <td class="tdeven">Date of Journey</td>
                                            </tr>
                                            <tr>
                                                <td class="tdodd"><%out.println(session.getAttribute("bid"));%></td>
                                                <td class="tdodd"><%out.println(session.getAttribute("date2"));%></td>
                                            </tr>
                                            <tr><td></td><td></td></tr>
                                            <tr><td></td><td></td></tr>
                                            <tr><td></td><td></td></tr>
                                            <tr>
                                                <td class="tdeven">From</td>
                                                <td class="tdeven">To</td>
                                            </tr>
                                            <tr>
                                                <td class="tdodd"><%out.println(session.getAttribute("from"));%></td>
                                                <td class="tdodd"><% out.println(session.getAttribute("to"));%></td>
                                            </tr>
                                            <tr><td></td><td></td></tr>
                                            <tr><td></td><td></td></tr>
                                            <tr><td></td><td></td></tr>
                                            <tr>
                                                <td class="tdeven">Ticket Type</td>
                                                <td class="tdeven">Total Number of Tickets</td>
                                            </tr>
                                            <tr>
                                                <td class="tdodd"><%out.println(session.getAttribute("type"));%></td>
                                                <td class="tdodd"><%out.println(session.getAttribute("ntickets"));%></td>
                                            </tr>
                                            <tr><td></td><td></td></tr>
                                            <tr><td></td><td></td></tr>
                                            <tr><td></td><td></td></tr>
                                            <tr>
                                                <td class="tdeven">Total Cost</td>
                                                <td class="tdeven"></td>
                                            </tr>
                                            <tr>
                                                <td class="tdodd"><%out.println(m);%></td>
                                                <td class="tdodd"></td>
                                            </tr>
                                        </table>
                                    </div>
                    
                                    <hr class="hr2">
                                    
                                    <div id="box5">
                                        <p>Passenger Details</p>
                                    </div>
                                    <div id="box6">
                                        <table class="tableAll" cellpadding="3" ,border="2">
                                            <tr>
                                                <td class="tdeven">First name</td>
                                                <td  class="tdeven">Last name</td>
                                            </tr>
                                            <tr>
                                                <td class="tdodd"><%out.println(session.getAttribute("fname"));%></td>
                                                <td  class="tdodd"><%out.println(session.getAttribute("lname"));%></td>
                                            </tr>
                                            <tr><td></td><td></td></tr>
                                            <tr><td></td><td></td></tr>
                                            <tr><td></td><td></td></tr>
                                            <tr>
                                                <td class="tdeven">Phone number</td>
                                                <td class="tdeven"></td>
                                            </tr>
                                            <tr>
                                                <td class="tdodd"><%out.println(session.getAttribute("phone"));%></td>
                                                <td class="tdodd"></td>
                                            </tr>
                                        </table>
                                    </div>
                    
                                    <div id="box7">
                                        <h5>SandipBus Travel<br>Gopalpur, Kolkata, 458120<br>(001)123-4567, info@SandipBus.com</h5>
                                    </div>
                                    
                                </div>
                                <%
                                sql1="Insert into details ( u_id, date1, bus_id, tickets, TICKET_NO,source,destination,type) values ('"+session.getAttribute("userId")+"','"+session.getAttribute("date2")+"', '"+s+"', '"+session.getAttribute("ntickets")+"','"+m+s+"','"+session.getAttribute("to")+"', '"+session.getAttribute("from")+"', '"+session.getAttribute("type")+"')";
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
                





        </div>
    </body>

</html>