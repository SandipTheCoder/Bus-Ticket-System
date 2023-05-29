<!DOCTYPE html>
<html>
<head>
    <title>Tickets Booked</title>
    <link rel="stylesheet" type="text/css" href="AllStyle.css">
	<link rel="stylesheet" type="text/css" href="css/all.min.css">
    <style>
        /* *{
            border: 1px solid red;
        } */
        #box_div{
            padding-left: 3px;
            padding-right: 3px;
            margin-top: 5px;
            font-size: 18px;
            border: 1px solid lightcyan;
            border-radius: 20px ;
            background-color: lightcyan;
        }
        #inbox_div{
            width: 40%;
            height: auto;
            padding: 5px;
            font-size: 18px;
            margin: 20px auto;
            box-shadow: 0px 0px 5px 2px #ccc;  
            border: 2px solid white;
            background-color: rgba(0, 0, 0, 0.6);
            border-radius: 3px;
        }

        .tab_box{
            width:100% ;
            padding: 5px;
        }
        .tr_box{
            display: flex;
            align-items: left; 
            padding: 5px;
            margin-bottom: 15px;
        }
        .td_box{
            width: 50%;
            align-items: left;
        }
        .td1_box{
            width: 50%;
            align-items: left; 
        }
        .div_all{
            margin: 0px 40px 0px 10px;
            padding: 5px;
            align-items: left; 
            color: #fff;
        }
        .div_all label{
            align-items: left; 
        }
        .div1_all{
            margin-left: 40px;
            margin-right: 10px;
            padding: 5px;
            align-items: left; 
            color: #fff;
        }
        .div1_all label{
           align-items: left; 
        }
        
        .div1_all .btn{
            width: 100%;
            padding: 8px 10px;
            margin: auto;
            font-size: 15px;
            border: 0;
            background: #fec107;
            color: #fff;
            cursor: pointer;
            border-radius: 15px;
            outline: none;
        }
        
        .div1_all .btn:hover{
            background: #ff267e; 
        } 
        h3{
            margin-left: 15px;
        }
    </style>

</head>

<body>

    <div id="color-box">

        <div id="div1">
            <h1>Bus Ticket Booking System</h1>
        </div>

        <div id="div2">
            <h2><label class="labels fa fa-home"><a href="User.jsp"> Home </a> </label>
                <label class="labels fa fa-user"><a href="about2.jsp"> About Us </a> </label>
                <label class="labels fa fa-bus"><a href="userSeeBus.jsp"> See Buses </a> </label>
                <label class="labels fa fa-check-circle"><a href="tickets.jsp"> Book Tickets </a> </label>
                <label class="labels fa fa-newspaper"><a href="history.jsp"> Previous Bookings </a> </label>
                <label class="labels fa fa-eye"><a href="login.jsp"> My Account  </a> </label>
                <label class="labels fa fa-power-off"><a href="logout.jsp"> Logout</a> </label>
            </h2>
        </div>


        <%@include file="connect.jsp" %>

<%
	Statement st=null;
	ResultSet rs=null;
    

	String s5=request.getParameter("bid");
	String s1=request.getParameter("from");
	String s2=request.getParameter("to");
	String s3=request.getParameter("date1");
	String s4=request.getParameter("ntickets");

	int n=Integer.parseInt(s4);
	int m=n;

	try
	{
		st=con.createStatement();
        

		%>


        <div id="box_div">

            <div>
                <h3>Confirmation...</h3>
                <hr>
            </div>
        
            <div id="inbox_div">

                <form action="update.jsp" method=post>
                    <table class="tab_box">

                        <tr class="tr_box">
                            <td class="td_box">
                                <div class="div_all">
                                    <label>Bus ID  :  </label>
                                    <label>
                                    <%
                                        String bid= request.getParameter("bid");
                                        out.println(bid);
                                    %>
                                    </label>
                                </div>

                            </td>

                            <td class="td1_box">
                                <div class="div1_all">
                                    <label>From Station  :  </label>
                                    <label>
                                    <%
                                        String from= request.getParameter("from");
                                        out.println(from);
                                    %>
                                    </label>                                  
                                   
                                </div>
                            </td>
                        </tr>

                        <tr class="tr_box">
                            <td class="td_box">
                                <div class="div_all">
                                    <label>To Station   :  </label>
                                    <label>
                                    <%
                                        String to= request.getParameter("to");
                                        out.println(to);
                                    %>
                                    </label>
                                </div>
                            </td>
                            <td class="td1_box">
                                <div class="div1_all">
                                    <label>Date   :   </label>
                                    <label>
                                    <%
                                        String date1= request.getParameter("date1");
                                        out.println(date1);
                                    %>
                                    </label>
                                   
                                </div>
                            </td>
                        </tr>
                        
                        <tr class="tr_box">
                            <td class="td_box">
                                <div class="div_all">
                                    <label>Number of Tickets : </label>
                                    <label>
                                    <%
                                        String ntickets= request.getParameter("ntickets");
                                        out.println(ntickets);
                                    %> 
                                    </label>
                                </div>
                            </td>
                            <td class="td1_box">
                                <div class="div1_all">
                                    <!-- <input type=submit value="Add More Passenger" class="btn" > -->
                                </div> 
        
                            </td>
                        </tr> 
                        <tr class="tr_box">
                            <td class="td_box">
                                <div class="div1_all">
                                    <input type=submit value="Book Tickets" class="btn" >
                                </div>
                            </td>
                            <td class="td_box">
                                <div class="div1_all">
                                    <input type=reset value="Reset form" class="btn" >
                                </div>
                            </td>
                        </tr>


                    </table>
                    

                     
                </form>
            </div>
	    </div>
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
	










