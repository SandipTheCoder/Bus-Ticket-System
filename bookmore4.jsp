<!DOCTYPE html>
<html>
<head>
    <title>All Buses</title>
    <link rel="stylesheet" type="text/css" href="AllStyle.css">
    <link rel="stylesheet" type="text/css" href="css/all.min.css">
    <script src="jquery-3.6.0.min.js"></script>
    <script src="jquery-ui.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.15/jquery.mask.min.js"></script>
    <style>
        
        #divinbox{
            width: 60%;
            height: auto;
            padding: 5px;
            font-size: 18px;
            margin: 20px auto;
            box-shadow: 0px 0px 5px 2px #ccc;  
            border: 5px solid white;
            background-color: darkgray;
            border-radius: 3px;
        }
        #div2ndbox{
            width: 60%;
            height: auto;
            padding: 5px;
            font-size: 18px;
            margin: 40px auto;
            box-shadow: 0px 0px 5px 2px #ccc;  
            border: 5px solid white;
            background-color: burlywood; 
            border-radius: 3px;

        }
        
    
        .input_field label, 
        .input1_field label {
            width: 50%;
            color: #fff;
            margin: 0px 10px 0px 10%;
            /*  margin-right: 10px; */
            padding: 2px 10px 2px 10px ;
            font-size: 18px; 
        }  
      
        
        h3{
            font-size: 22px;
            color: #0d3c61;
            padding: 5px;
            text-align: left;
            letter-spacing: 2px;
        }
        
        .input_field_new .btn{
            width: 25%;
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
        .input_field_new .btn:hover{
            background: #ff267e; 
        }  

        #tab2
        {
            width: 100%;
            margin:auto;
            border-collapse: collapse;
            table-layout: fixed;
            border: 0px solid dimgray;
        }

        .td3, .td2{
            text-align: left;
            padding: -5%;
        }
       
        #h2{
            text-align: center;
            letter-spacing: 2px;
            margin-bottom: 25px;
            color: #0d3c61;
        }
        #div2ndbox .input_field_new{
            margin-bottom: 15px;
            display: flex;
            align-items: center;  
        } 
        #div2ndbox .input_field_new label{
            color: lightyellow;
            width: 200px;
            margin-left: 20px;
            margin-right: 10px;
            font-size: 18px;
            padding: 3px;
            
        }
        #div2ndbox .input_field_new .input{
            width: 60%;
            outline: none;
            border: 1px solid #d5dbd9;
            font-size: 15px;
            padding: 8px 10px;
            margin: 2px;
            border-radius: 3px;
            transition: all 0.3s ease;
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
        .monthYear {
            padding: 3px;
            margin-right: 40px;
        }
        .cvv {
            padding: 3px;
            margin-left:  40px;
        }

        .input_field_new .monthYear #year,
        .input_field_new .cvv #cvv{
            box-sizing: border-box;
        }
/* *{
    border: 1px solid red;
} */

        
    </style>  
    <script language="javascript">
        function valid(){

            alert("Confirm details..?");
        }
        function fu10(){
            var a=document.getElementById("cardnm").value;

            if(a.length<19){
                alert("Card number must be numeric!!!!");
                document.getElementById("cardnm").focus();
                return false;
            }   
        }
        function fu11(){
            if(!isNaN(document.getElementById("holder").value)){
                alert("Holder Name must be Charector!!!!");
                document.getElementById("holder").focus();
                return false;
            }   
        }
        function fu12(){
            if(isNaN(document.getElementById("month").value)){
                alert("Month must be numeric and between 1 to 12");
                document.getElementById("month").focus();
                return false;
            }   
        }
        function fu13(){
            if(isNaN(document.getElementById("year").value)){
                alert("Year must be numeric!!!!");
                document.getElementById("year").focus();
                return false;
            }   
        }
        function fu14(){
            if(isNaN(document.getElementById("cvv").value)){
                alert("CVV no. must be numeric!!!!");
                document.getElementById("cvv").focus();
                return false;
            }   
        }

    </script>
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
                <label class="labels fa fa-ticket-alt"><a href="bookmore.jsp"> Book Tickets </a> </label>
                <label class="labels fa fa-newspaper"><a href="history.jsp"> Previous Bookings </a> </label>
                <label class="labels fa fa-eye"><a href="Useraccount.jsp"> My Account  </a> </label>
                <label class="labels fa fa-power-off"><a href="logout.jsp"> Logout</a> </label>
            </h2>
        </div>


        <%@include file="connect.jsp" %>
        <%
            Statement st=null;
            ResultSet rs=null;  
        
           
            int s4=Integer.parseInt(request.getParameter("ntickets"));
           
            String s6=request.getParameter("type");
            String s7=request.getParameter("fname");
            String s8=request.getParameter("lname");
            String s9=request.getParameter("pho");
        
            
            int m=s4;

            try
            {
                st=con.createStatement();
                
                
              
                session.setAttribute("ntickets",s4);
               
                session.setAttribute("type",s6);
                session.setAttribute("fname",s7);
                session.setAttribute("lname",s8);
                session.setAttribute("phone",s9);


              

                String sql1="select * from buses where  bus_id='"+session.getAttribute("bid")+"'";

		        rs=st.executeQuery(sql1);

                int x=0;
                
                while(rs.next())
                {
                    x=rs.getInt("seats_rem");

                    String date=rs.getString("date2");
                    session.setAttribute("date2",date);
                
                    if(x<0)
                    {
                        %>
                        
                        <div class="relog_div">
                            <p>Sorry!!! number of seats remaining are lesser.</p>
                        </div>
                        <%
                        

                        
                    }
                    else
                    {
                        sql1="select * from buses where bus_id='"+session.getAttribute("bid")+"'";
		                rs=st.executeQuery(sql1);

                        while(rs.next())
                        {

                           
                            %>
                                <div id="divinbox">

                                    <div>
                                        <h3>Your Details</h3>
                                        <hr>
                                    </div>
                                    

                                        <table id="tab2" cellpadding="10" ,border="2">
                                            <tr>
                                                <td class="td3">
                                                    <div class="input_field">
                                                        <label>First Name :</label>
                                                        <label class="input"><% out.println(s7); %> </label><br>
                                                    </div>
                                                </td>
                                                <td class="td2">
                                                    <div class="input_field">
                                                        <label>Last Name :</label>
                                                        <label class="input"><% out.println(s8); %> </label><br>
                                                    </div>
                                                </td>
                                            </tr>

                                            <tr>
                                                <td class="td3">
                                                    <div class="input_field">
                                                        <label>Bus ID :</label>
                                                        <label class="input"><%=rs.getString("bus_id")%> </label><br>
                                                    </div>
                                                </td>
                                                <td class="td2">
                                                    <div class="input1_field">
                                                        <label>Bus Name :</label>
                                                        <label class="input"><%=rs.getString("NAME")%> </label><br>
                                                    </div>
                                                </td>
                                            </tr>
                                                
                                            <tr>
                                                <td class="td3">
                                                    <div class="input_field">
                                                        <label>From Station :</label>
                                                        <label class="input"><%=rs.getString("source")  %></label> <br>
                                                    </div>
                                                </td>
                                                <td class="td2">
                                                    <div class="input1_field">
                                                        <label>To Station :</label>
                                                        <label class="input"><%=rs.getString("destination") %></label><br>
                                                    </div>
                                                </td>
                                            </tr>

                                            <tr>
                                                <td class="td3">
                                                    <div class="input_field">
                                                        <label>Ticket Type :</label>
                                                        <label class="input"><% out.println(s6); %></label><br>
                                                    </div>
                                                </td>
                                                <td class="td2">
                                                    <div class="input1_field">
                                                        <label>Date :</label>
                                                        <label class="input"><%=rs.getString("date2") %></label><br>
                                                    </div>
                                                </td>
                                            </tr>
                                                    
                                
                                            <tr>
                                                <td class="td3">
                                                    <div class="input_field"> 
                                                        <label>Number of Tickets :</label>
                                                        <label class="input"><%out.println(s4);%></label><br><br>
                                                    </div>
                                                </td>
                                                <td class="td2">
                                                    <div class="input1_field">
                                                        <label>Mobile Number :</label>
                                                        <label class="input"><%out.println(s9); %></label><br>
                                                    </div>
                                                </td>
                                            </tr>
                                        </table>
                                    
                                    
                                </div>
                            


                                <div id="div2ndbox">

                                    <div>
                                        <h2 id="h2">Payment Gateway</h2>
                                        <hr>
                                    </div>
                                    <div id="divboxin2">
                                        <form action="bookmore5.jsp" method=post>

                                            <div class="input_field_new">
                                                <label >Card Holder Name</label>
                                                <input type="text" name="holderName" class="input" placeholder="Enter Card Holder Name" id="holder" onchange="fu11()" required/>
                                            </div>

                                            <div class="input_field_new">
                                                <label >Card Number</label>
                                                <input type="text" name="card" data-mask="0000 0000 0000 0000" class="input" placeholder="Enter Card No." id="cardnm" onchange="fu10()" required/>
                                            </div>

                                            <div class="input_field_new">
                                                <div class="monthYear">
                                                    <label >Expiry date</label>
                                                    <input type="text" name="year" class="input" data-mask="00 / 00"  placeholder="00 / 00"  id="year"  required/>
                                                </div>
                                                <div class="cvv">
                                                    <label >CVC No.</label>
                                                    <input type="password" name="cvv" class="input" data-mask="000" placeholder="***" id="cvv"  required/>
                                                </div>
                                            </div>
                                        
                                            <div class="input_field_new">
                                                <input type=submit value="Pay and Book " class="btn" onclick="valid()" >
                                            </div>  
                                            
                                        </form>
                                    </div>

                                </div>
                            <%
                            
                        }
                        %>
                        </div>

                    <%
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
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.15/jquery.mask.min.js"></script>
</body>
</html>

     







	