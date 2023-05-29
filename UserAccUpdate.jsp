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
                background-color: darkgray;
                border-radius: 3px;
            }
            .input1_field{
                margin-bottom: 15px;
                display: flex;
                align-items: center; 
                padding: 5px; 
            } 
            
            .input1_field .btn{
                width: 20%;
                padding: 8px 10px;
                margin: auto;
                margin-top: 20px ;
                font-size: 15px;
                border: 0;
                background: #fec107;
                color: #fff;
                cursor: pointer;
                border-radius: 15px;
                outline: none;
            }
            .input1_field .btn:hover{
                background: #ff267e; 
            }
            
            #caption p{
                font-size: 25px;
                color: #757575;
                padding: 5px;
                text-align: center;
            }
            .input1_field label{
                width: 70px;
                color: #fff;
                margin: 0px 10px 0px 10px;
                margin-right: 10px;
                padding: 2px 10px 2px 10px ;
                font-size: 18px; 
            }  
            .input1_field .input{
                width: 50%;
                margin-left: auto;
                outline: none;
                border: 1px solid #d5dbd9;
                font-size: 15px;
                padding: 8px 10px;
                border-radius: 3px;
                transition: all 0.3s ease;
            } 
            .input_field{
                margin-bottom: 15px;
                display: flex;
                align-items: center; 
                padding: 5px; 
            }
            .input_field .word_brk{
                width: 70px;
                color: #fff;
                margin: 0px 10px 0px 10px;
                margin-right: 55px;
                padding: 2px 10px 2px 10px ;
                font-size: 18px;
            }  
		</style>

        
        
    </head>

    <body id="boy1">
        <%@include file="connect.jsp" %>
        <%
            Statement st=null;
            ResultSet rs=null;

            try
            {
                st=con.createStatement();

                String sql1="select * from users where id = '"+session.getAttribute("userId")+"'";
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

                <!-- <div>
                    <h3>Book Your Tickets</h3>
                    <hr>
                </div> -->
            
                <div id="divinbox">
    
                    <form action="UpdateUser.jsp" method=post>
                        <div id="caption">
                            <p>Change Details...</p>
                            <hr>
                        </div>
    
                        <div class="input_field">
                            <label class="word_brk">Identification Number(ID)</label>
                            <label class="word_brk"><%= rs.getInt("id")%> </label>
                        </div>

                        <div class="input1_field">
                            <label>Name</label>
                            <input type="text" name="name" class="input" placeholder="Name" id="nm" onchange="fu1()" required/>
                        </div>

                        <div class="input1_field">
                            <label>Password</label>
                            <input type="password" name="pwd" class="input" placeholder="Password" required/>
                        </div>
    
                        <div class="input1_field">
                            <label>Email Address</label>
                            <input type="text" name="email" class="input" placeholder="Email" required/>
                        </div>
                        
    
                        <div class="input1_field">
                            <input type=submit value=Submit class="btn" onclick="valid()">
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

        