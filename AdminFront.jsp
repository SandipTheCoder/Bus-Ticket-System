<html>
<head>
    <title>Admin</title>

    <link rel="stylesheet" type="text/css" href="css/all.min.css">
    <link rel="stylesheet" type="text/css" href="AllStyle.css">
    <style>
        hr{
            width: 66%;
            opacity: 0.5;
            position: absolute;
            left: 9px;
        }
        
        .img1{
            width: 350px;
            height: 170px;
            float: right;
            padding: 15px;
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
    <!-- <%@include file="connect.jsp" %> -->
    <div id="color-box">
			
        <div id="div1">
            <h1>Bus Ticket Booking System</h1>
        </div>

        <div id="div2">
            <h2>
                <label class="labels fa fa-home"><a href="AdminFront.jsp"> Home   </a>  </label>
                <label class="labels fa fa-user"><a href="about1.jsp"> About Us   </a> </label>
                <label class="labels fa fa-bus"><a href="adminSeeBus.jsp"> See Buses   </a>  </label>
                <label class="labels fa fa-bookmark"><a href="adminBookBus.jsp"> Details   </a>  </label>
                <label class="labels fa fa-envelope"><a href="msg.jsp"> MSG   </a>  </label>
                <label class="labels fa fa-plus-circle"><a href="Admin.jsp"> Add Buses   </a>  </label>
                <label class="labels fa fa-trash"><a href="delete.jsp"> Delete Buses   </a>  </label>
                <label class="labels fa fa-eye"><a href="myaccount.jsp"> My Account   </a>  </label>
                <label class="labels fa fa-power-off"><a href="logout.jsp"> Logout   </a>  </label>
            </h2>
        </div>

      
        <div id="log-div">
            <!-- <h1><%  out.println("<br><br><br>AdminId : "+session.getAttribute("adminId"));  %></h1> -->
            <h3><p class="log-p">Welcome to Bus Ticket Booking System Portal </p></h3>
            <hr><br>
            <!-- <hr class="log-p"> -->
            <img src="images/bus4.jpg" class="img1">

            <div class="log-d1">
                <p class="log-d1-p"><a href="AdminFront.jsp"> Home</a></p>
            </div>
            <div class="log-d1">
                <p class="log-d1-p"><a href="about1.jsp"> About Us</a></p>
            </div>
            <div class="log-d1">
                <p class="log-d1-p"><a href="adminSeeBus.jsp"> See Buses</a></p>
            </div>
            <div class="log-d1">
                <p class="log-d1-p"><a href="adminBookBus.jsp"> Details</a></p>
            </div>
            <div class="log-d1">
                <p class="log-d1-p"><a href="msg.jsp"> MSG</a></p>
            </div>

            <img src="images/bus5.jpg" class="img1">

            <div class="log-d1">
                <p class="log-d1-p"><a href="Admin.jsp"> Add Buses</a></p>
            </div>
            <div class="log-d1">
                <p class="log-d1-p"><a href="delete.jsp"> Delete Buses</a></p>
            </div>
            <div class="log-d1">
                <p class="log-d1-p"><a href="myaccount.jsp"> My Account</a></p>
            </div>
            <div class="log-d1">
                <p class="log-d1-p"><a href="logout.jsp"> Logout</a> </p>
            </div>
       
        </div>
    </body>
</html>