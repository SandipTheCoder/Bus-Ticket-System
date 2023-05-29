<!DOCTYPE html>
<html id="ht">
    <head id="hd">
        <title>BusTravel</title>

        <link rel="stylesheet" type="text/css" href="AllStyle.css">
		<link rel="stylesheet" type="text/css" href="css/all.min.css">

    </head>

    <body>
        <form action="searchBus.jsp" method="POST">
        <div id="div1">
            <h1>Bus Ticket Booking System</h1>
        </div>
        <div id="div2">
            <h2><a href="home.jsp"> <label class="labels fa fa-home"> Home   </label></a>
                <a href="about.jsp">  <label class="labels fa fa-user "> About Us    </label></a>
                <a href="searchFairs.jsp"> <label class="labels fa fa-search"> Search Fares    </label></a>
                <a href="allBuses.jsp"> <label class="labels fa fa-bus"> All Buses   </label></a>
                <a href="regis.html"> <label class="labels fa fa-address-book"> Register   </label></a>
                <a href="login.jsp"> <label class="labels fa fa-user-circle"> Login    </label></a>
                <a href="contact.jsp"> <label class="labels fa fa-phone-square"> Contact Us    </label></a>
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