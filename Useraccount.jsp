<!DOCTYPE html>
<html>
    <head>
        <title>All Buses</title>
        <link rel="stylesheet" type="text/css" href="AllStyle.css">
		<link rel="stylesheet" type="text/css" href="css/all.min.css">
        <script src="jquery-3.6.0.min.js"></script>
	    <script src="jquery-ui.min.js"></script>
		<style>
			
            #divinbox{
                width: 30%;
                height: auto;
                padding: 5px;
                font-size: 18px;
                margin: 20px auto;
                box-shadow: 0px 0px 5px 2px #ccc;  
                border: 5px solid white;
                background-color: darksalmon;
                border-radius: 3px;
            }
            .input_field{
                margin-bottom: 15px;
                display: flex;
                align-items: center; 
                padding: 5px; 
            } 
            .input_field label{
                color: lightyellow;
                width: 50%;
                /* margin-right: 10px; */
                margin-left: 28px;
                font-size: 18px;
                padding: 10px;
            }
            .input_field .btn{
                width: 20%;
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
            .input_field .btn:hover{
                background: #ff267e; 
            }
            .word_brk{
                word-break: break-all;
            }
            #caption p{
                font-size: 25px;
                color: #757575;
                padding: 5px;
                text-align: center;
            }
		</style>

        
        <script language="javascript">
            function valid(){
                alert("You have to update all the fields of next page.");
            }
        </script>
    </head>

    <body id="boy1">
        <%@include file="connect.jsp" %>
        <%
            Statement st=null;
            ResultSet rs=null;

            try
            {
                st=con.createStatement();

                String sql1="select * from USERS where id = '"+session.getAttribute("userId")+"'";
                rs=st.executeQuery(sql1);

                while(rs.next())
		        {

                %>

        <div id="color-box">
			
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

            <div id="divbox">
            
                <div id="divinbox">
    
                    <form action="UserAccUpdate.jsp" method=post >

                        <div id="caption">
                            <p>Your Details...</p>
                            <hr>
                        </div>
    
                        <div class="input_field">
                            <label>Identification Number(ID)</label>
                            <label class="word_brk"><%= rs.getInt("id")%> </label>
                        </div>

                        <div class="input_field">
                            <label>Name</label>
                            <label class="word_brk"> <%= rs.getString("name")%> </label>
                        </div>

                        <div class="input_field">
                            <label>Password</label>
                            <label class="word_brk"> <%= rs.getString("pwd")%> </label>
                        </div>
    
                        <div class="input_field">
                            <label>Email Address</label>
                            <label class="word_brk"><%= rs.getString("EMAIL")%> </label>
                        </div>
                        
    
                        <div class="input_field">
                            <input type=submit value=Update class="btn" onclick="valid()">
                        </div>  
                    </form>
                </div>
            </div>
        </div>

        <%
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

        