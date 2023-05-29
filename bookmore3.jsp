
<!DOCTYPE html>
<html>
<head>
	<title>Tickets Booking</title>
    <link rel="stylesheet" type="text/css" href="AllStyle.css">
	<link rel="stylesheet" type="text/css" href="jquery-ui.min.css">
	<script src="jquery-3.6.0.min.js"></script>
	<script src="jquery-ui.min.js"></script>
	<link rel="stylesheet" type="text/css" href="css/all.min.css">

    <style>
        #divbox{
            padding-left: 3px;
            padding-right: 3px;
            margin-top: 5px;
            font-size: 18px;
            border: 1px solid lightcyan;
            border-radius: 20px ;
            background-color: lightcyan;
        }
        #divinbox{
            width: 40%;
            height: auto;
            padding: 5px;
            font-size: 18px;
            margin: 20px auto;
            box-shadow: 0px 0px 5px 2px #ccc;  
            border: 10px solid white;
            background-color: rgba(0, 0, 0, 0.6);
            border-radius: 3px;
        }
        .input_field{
            margin-top: 20px;
            margin-bottom: 15px;
            display: flex;
            align-items: center;  
        } 
        .input_field label{
            color: lightyellow;
            width: 150px;
            /* margin-right: 10px; */
            margin-left: 28px;
            font-size: 15px;
        }
        .input_field .input{
            width: 100%;
            outline: none;
            border: 1px solid #d5dbd9;
            font-size: 15px;
            padding: 8px 10px;
            /* margin-left: 15px; */
            border-radius: 3px;
            transition: all 0.3s ease;
        } 
        .input_field .input:focus{
            border: 1px solid #fec107;
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
        h3{
            margin-left: 15px;
        }

    	.input_field .custom_select {
            -webkit-appearance: none;
            appearance: none;
            border: 1px solid #d5dbd9;
            width: 100%;
            height: 100%;
            padding: 8px 10px;
            border-radius:3px ;
            outline: none;
        } 
    	.input_field .custom_select::before{
            content: "";
            position: absolute;
            top: 12px;
            right: 10px;
            border: 8px solid;
            border-color: #d5dbd9 transparent transparent transparent;
            pointer-events: none;
        }
    </style>

    <script>
        $(document).ready(function(){
            $("#datepicker").datepicker({
                dateFormat:"dd-mm-yy",
                changeMonth: true,
                changeYear: true,
                maxDate:'10d',
                minDate:'-0d'
                
            });
            /* alert("Booked"); */
            /* $("#datepicker").hide();  */
         });
         function fu1(){
            if(!isNaN(document.getElementById("fnm").value)){
                alert("Fisrt name must be in letters!!!!");
                document.getElementById("fnm").focus();
                return false;
            }   
        }
        function fu2(){
            if(!isNaN(document.getElementById("lnm").value)){
                alert("Last name must be in letters!!!!");
                document.getElementById("lnm").focus();
                return false;
            }   
        }
        function fu3(){
            if(isNaN(document.getElementById("bid").value)){
                alert("Bus number must be numeric!!!!");
                document.getElementById("bid").focus();
                return false;
            }   
        }
        function fu4(){
            if(!isNaN(document.getElementById("from").value)){
                alert("Source station name must be in letters!!!!");
                document.getElementById("from").focus();
                return false;
            }   
        }
        function fu5(){
            if(!isNaN(document.getElementById("to").value)){
                alert("Destination station name must be in letters!!!!");
                document.getElementById("to").focus();
                return false;
            }   
        }
        function fu6(){
            if(document.getElementById("pho").value!=""){
                var m=document.getElementById("pho").value;
                if(isNaN(document.getElementById("pho").value)){
                    alert("Mobile number must be in numeric  !!!!");
                    document.getElementById("pho").focus();
                    return false;
                }   
                if(m.length>10||m.length<10){
                    alert("Mobile number should be 10 digit.  !!!!");
                    document.getElementById("pho").focus();
                    return false;
                }
            }
            
        }
        function fu7(){
            if(isNaN(document.getElementById("ntic").value)){
                alert("Number of Tickets must be in numeric!!!!");
                document.getElementById("ntic").focus();
                return false;
            }   
        }
    </script>
   
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

                int s=Integer.parseInt(request.getParameter("bus"));
                
	            

	            try
	            {
                    session.setAttribute("bid",s);
                    

                   
                    
                %>




                    <div id="divbox">

                        <div>
                            <h3>Book Your Tickets</h3>
                            <hr>
                        </div>
                    
                        <div id="divinbox">

                            <form action="bookmore4.jsp" method=post>

                                <div class="input_field">
                                    <label>First Name</label>
                                    <input type=text name=fname value="" class="input" id="fnm" onchange="fu1()" required><br>
                                </div>
                                <div class="input_field">
                                    <label>Last Name</label>
                                    <input type=text name=lname value="" class="input" id="lnm" onchange="fu2()" required><br>
                                </div>
                                <div class="input_field">
                                    <label>Mobile Number</label>
                                    <input type=text name=pho value="" class="input" id="pho" onchange="fu6()" required><br>
                                </div>
                            <!--  <div class="input_field">
                                    <label>Bus ID</label>
                                    <input type=text name=bid value="" class="input" id="bid" onchange="fu3()" required><br>
                                </div>
                                <div class="input_field">
                                    <label>From Station</label>
                                    <input type=text name=from value="" class="input" id="from" onchange="fu4()" required><br>
                                </div>
                                <div class="input_field">
                                    <label>To Station</label>
                                    <input type=text name=to value="" class="input" id="to" onchange="fu5()" required><br>
                                </div> -->

                                <div class="input_field">
                                    <label>Ticket Type</label>
                                    <select name=type class="custom_select">
                                        <option value="" disabled="disabled" selected>Select</option>
                                        <option value="AC">AC</option>
                                        <option value="SLEEPER">SLEEPER</option>
                                    </select><br>
                                </div>
                                <!-- <div class="input_field">
                                    <label>Date</label>
                                    <input type=text name=date value="" id="datepicker" class="input" required><br>
                                </div> -->
                                <div class="input_field"> 
                                    <label>Number of Tickets</label>
                                    <input type=text name=ntickets value="" class="input" id="ntic" onchange="fu7()" required><br>
                                </div>

                                <div class="input_field">
                                    <input type=submit value=Book class="btn" >
                                </div>  
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