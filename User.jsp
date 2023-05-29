<html>
<head>
    <title>User Home</title>
    <link rel="stylesheet" type="text/css" href="AllStyle.css">
    <link rel="stylesheet" type="text/css" href="css/all.min.css">
    <style>
        hr{
            width: 68%;
            opacity: 0.5;
            position: absolute;
            left: 10px;
        }
        
        .img1{
            width: 350px;
            height: 170px;
            float: right;
            padding: 15px;
           /*  border-radius: 10px  ; */
        }
        /*  *{
            border: 1px solid red;
        } */
        .log-d1-p{
            margin: auto;
            padding-top: 10px;
            padding-left: 15px;
        }
        .log-d1-p a{
            color: black;
        }
        .log-d1-p a:hover{
            color: orangered;
            font-size: 25px;
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
                <label class="labels fa fa-ticket-alt"><a href="bookmore.jsp"> Book Tickets </a> </label>
                <label class="labels fa fa-newspaper"><a href="history.jsp"> Previous Bookings </a> </label>
                <label class="labels fa fa-eye"><a href="Useraccount.jsp"> My Account  </a> </label>
                <label class="labels fa fa-power-off"><a href="logout.jsp"> Logout</a> </label>
            </h2>
        </div>

		<div id="log-div">
			<h3><p class="log-p">Welcome to Bus Ticket Booking System Portal </p></h3>
            <hr><br>
			
            <img src="images/bus5.jpg" class="img1">

			<div class="log-d1">
                <p class="log-d1-p"><a href="User.jsp"> Home </a></p>
            </div>
			<div class="log-d1">
                <p class="log-d1-p"><a href="about2.jsp"> About Us </a></p>
            </div>
			<div class="log-d1">
                <p class="log-d1-p"><a href="userSeeBus.jsp"> See Buses </a> </p>
            </div>
			<div class="log-d1">
                <p class="log-d1-p"><a href="bookmore.jsp"> Book Tickets </a> </p>
            </div>
            
            <img src="images/bus11.jpg" class="img1">

			<div class="log-d1">
                <p class="log-d1-p"><a href="history.jsp"> Previous Bookings </a> </p>
            </div>
			<div class="log-d1">
                <p class="log-d1-p"><a href="Useraccount.jsp"> My Account  </a> </p>
            </div>
			<div class="log-d1">
                <p class="log-d1-p"><a href="logout.jsp"> Logout</a></p>
            </div>
		   
			
		</div>
    </div>
<!-- <h1><p>Hello sir,<br></p></h1>
<h2>
	<p><a href ="tickets.jsp">Click</a> here to book tickets</p>

	<p><a href ="history.jsp">Click</a> here to know your previous bookings</p>
</h2> -->

</body>
</html>