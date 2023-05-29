<!DOCTYPE html>
<html id="ht">
    <head id="hd">
        <title>BusTravel</title>

        <link rel="stylesheet" type="text/css" href="AllStyle.css">
		<link rel="stylesheet" type="text/css" href="css/all.min.css">
		<style>
			
			img{
    			width: 100%;
    			height: 500px;
			}
			#slider{
    			padding: 5px;
    			width: 1000px;
    			height: 500px;
    			margin: 20px auto;
    			position: relative;
    			border: 10px solid white;
    			box-shadow: 0px 0px 5px 2px #ccc;           
			}
			button{
    			padding: 20px;
    			border: none;
    			background: #37f;
    			font-size: 25px;
    			color: white;
    			position: absolute;
    			top: 45%;
    			cursor: pointer;
			}
			.next{
    			border-radius:  10px 0px 0px 10px ;
    			margin-left: 945px;
			}

			.prew{
    			border-radius: 0px 10px 10px 0px;
			}

			#div4{
    			padding-left: 3px;
    			padding-right: 3px;
    			margin-top: 5px;
    			font-size: 18px;
    			border: 1px solid lightcyan;
    			border-radius: 20px ;
    			background-color: lightcyan;
			}
			
			#tab1{
    			width: 80%;
				margin-left: 10%;
    			border-collapse: collapse;
    			table-layout: fixed;
    			border: 1px solid dimgray;
    		}

			td{
    			text-align: center;
			}
			th{
				background-color: dimgray;
				color: white
			}
			tr:nth-child(odd){
				background-color: lightsteelblue;
			}
			.h3{
                width: 100%;
                height: auto;
                margin: -1px;
            }
		
		</style>
		
    </head>
    
    <body>
        <!-- <img src="images/th.jpg"> -->
        
       <!--  <div id="color-box"> -->
			
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

			<div id="slider">
            
				<div id="box">
					<img src="images/bus6.jpg">
				</div>
				<button class="prew fa fa-chevron-left" onclick="prewImage()"></button>
				<button class="next fa fa-chevron-right" onclick="nextImage()"></button>
			</div>
			
			<script type="text/javascript">
				var slider_content= document.getElementById('box');
				var image=['bus6' ,'bus18', 'bus8new' ,'bus17', 'bus13new', 'bus15', 'bus12','bus16'];
				var i=image.length;
	
				function nextImage(){
					if (i<image.length){
						i=i+1;
					}
				  else{
						i=1;
					}
					slider_content.innerHTML="<img src= images/"+image[i-1]+".jpg>";
				}
	
				function prewImage(){
					if (i<image.length+1 && i>1){
					   i=i-1;
					}
					else{
						i=image.length;
					}
					slider_content.innerHTML="<img src= images/"+image[i-1]+".jpg>";
				}
				setInterval(nextImage, 4000)

				</script>


            <!-- <div id="div3">
                <img class="img" src="images/bus6.jpg">
            </div> -->

            <div id="div4">
                <h3>Bus Ticket Booking Syetem</h3>
                    <hr>
                <p class="p-tag">
					A bus ticket booking system or central reservation system (ERS) is a railwayized system used to store and retrive information and conduct transaction related to air travel, hotels, car rental, or activities. Originally designed and operated by airlines, ERSes were later extended for the use of travel agencies. Major ERS operations that book and sell tickets for multiple airlines are known as Golbal Distribution System (GDS). Airlines have divested most of their direct holdings to dedicated GDS companies, who make their systems accessible to consumers through Internet gateways. Modern GDSes typically allow users to book hotel rooms, rental cars, airline tickets as well as activities and tours. They also provide access to bus ticket booking and bus reservations in some marks, although these are not always integrated with the main system. In hotels ERS allow sales and reservation team can access availability of room rates, accommodation and special rates from a central reservation office. ERS hosted on a cloud aid these information to be accessible to hotel reservation team while they are on travel as well.
				</p>
              
                <h4>All Available Buses</h4>
                <hr>

                <%@include file="connect.jsp"%>

				<%
					Statement st=null;
					ResultSet rs=null;

					try
					{
						st=con.createStatement();

						String sql="select * from buses";
						rs=st.executeQuery(sql);
				%>

				<br><br>
				<table id="tab1" cellpadding="10" ,border="2">
					<tr>
						<th><h3 class="h3">Bus ID</h3></th>
						<th><h3 class="h3">Name</h3></th>
						<th><h3 class="h3">Type</h3></th>
						<th><h3 class="h3">Source</h3></th>
						<th><h3 class="h3">Destination</h3></th>
						<th><h3 class="h3">Total Seats</h3></th>
						<th><h3 class="h3">Seats Remaining</h3></th>
					</tr>

				<%
					while(rs.next())
					{
				%>
					<tr>
						<td> <%= rs.getInt("bus_ID")%>   </td>
						<td> <%= rs.getString("name")%>   </td>
						<td> <%= rs.getString("type")%>   </td>
						<td> <%= rs.getString("source")%>   </td>
						<td> <%= rs.getString("destination")%>   </td>
						<td> <%= rs.getInt("total_seats")%>   </td>
						<td> <%= rs.getInt("seats_rem")%>   </td>
					</tr>
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
						rs.close();
						st.close();
						con.close();
					}
					catch(Exception e)
					{
						
					}
				}
			%>
            </div>

       <!--  </div>  -->
    </body>
</html>
