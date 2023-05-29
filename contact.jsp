<!DOCTYPE html>
<html id="ht">
    <head id="hd">
        <title>BusTravel</title>
        <link rel="stylesheet" type="text/css" href="css/all.min.css">
        <link rel="stylesheet" type="text/css" href="AllStyle.css">

        <style>
           
            #under_box{
                width: 60%;
                height: auto;
                padding: 5px;
                font-size: 18px;
                margin: 20px auto;
                box-shadow: 0px 0px 5px 2px #ccc;  
                border: 10px solid white;
                background-color: lightcyan;
                border-radius: 3px;
            }
            /* #caption{
                font-size: 25px;
                padding: 5px;
                text-align: center;

            } */
            #caption p{
                font-size: 25px;
                color: #757575;
                padding: 5px;
                text-align: center;
            }
            /* input[type=number]::-webkit-inner-spin-button{
                -webkit-appearance: none;
                margin: 0;
            }
            input[type=number]::-webkit-outer-spin-button{
                -webkit-appearance: none;
                margin: 0;
            } */

            .input_field{
                margin-bottom: 15px;
                display: flex;
                align-items: center; 
            }
            .input_field label{
                color: darkslategray;
                width: 250px;
                margin-right: 10px;
                margin-left: 10px;
                font-size: 15px;
            }
            .input_field .input{
                width: 100%;
                outline: none;
                border: 1px solid #d5dbd9;
                font-size: 15px;
                padding: 8px 10px;
                border-radius: 3px;
                transition: all 0.3s ease;
            } 
            .input:focus{
                border: 1px solid #fec107;
            }
            .btn{
                width: 70%;
                padding: 8px 10px;
                font-size: 15px;
                border: 0;
                background: #fec107;
                color: #fff;
                cursor: pointer;
                border-radius: 15px;
                outline: none;
                margin-left: 15%;
            }
            .btn:hover{
                background: #ff267e; 
            }
        </style>

<script language="javascript">
    function fu1(){
        if(isNaN(document.getElementById("pho").value)){
            alert("Phone number must be numeric!!!!");
            document.getElementById("pho").focus();
            return false;
        }   
    }
</script> 
    </head>
    
    <body>
        <!-- <img src="images/th.jpg"> -->
        
        <div id="color-box">
			
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
            <div id="big_box">
                <div id="under_box">
    
                    <form action="contacts.jsp" method=post>

                    <div id="caption">
                        <p>Customers' Complaint/Suggestion form</p>
                    </div>
                    <div class="input_field">
                        <label >Name</label>
                        <input type="text" name="name" class="input" required/>
                    </div>
    
                    <div class="input_field">
                        <label >Phone Number</label>
                        <input type="text" name="phone" class="input" id="pho" onchange="fu1()" required/>
                    </div>
                    <div class="input_field">
                        <label >Email</label>
                        <input type="text" name="email" class="input"  required/>
                    </div>
                    
                    <div class="input_field">
                        <label >Address</label>
                        <textarea type="text" name="addr" class="input" rows="4" cols="37" style="resize: none; overflow: auto;" required></textarea>
                    </div>
    
                    <div class="input_field">
                        <label >Name of individual and/or department against whom the complaint/suggestion is to be made</label>
                        <textarea type="text" name="who" class="input"  rows="4" cols="37" style="resize: none; overflow: auto;" required></textarea>
                    </div>
                    <div class="input_field">
                        <label >Describe your complaint/suggestion</label>
                        <textarea type="text" name="desp" class="input" placeholder="Write your complaint/suggestion....." rows="4" cols="37" style="resize: none; overflow: auto;" required></textarea>
                    </div>
                    <div class="input_field">
                        <input type=submit name=submit value="Submit" class="btn">
                    </div>

                    </form>
                </div>   
            </div> 
        </div>
    </body>
</html>
