<!DOCTYPE html>
<html id="ht">
    <head id="hd">
        <title>BusTravel</title>

        <link rel="stylesheet" type="text/css" href="AllStyle.css">
		<link rel="stylesheet" type="text/css" href="css/all.min.css">

    </head>

    <body>
        <form action="bookmore2.jsp" method="POST">
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
        <div class="header"> 
            <div class="search">
                
                <input type="text" class="search-from" name="from" placeholder="  From Station" required>
                <input type="text" class="search-to" name="to" placeholder="  To Station" required>
                <button type="submit" class="btn-search" name="submit">Search</button>
                
            </div>
        </div>
    </form>
    </body>
</html>