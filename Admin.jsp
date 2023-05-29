<!DOCTYPE html>

<html>
    <head>
        <title>Admin</title>
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
                width: 50%;
                height: auto;
                padding: 5px;
                font-size: 18px;
                margin: 20px auto;
                box-shadow: 0px 0px 5px 2px #ccc;  
                border: 5px solid darkslategray;
                background-color: whitesmoke;
                border-radius: 10px;
            }
            .input_field{
                margin-bottom: 15px;
                display: flex;
                align-items: center;  
            } 
            #p_div{
               margin-top: 18px;
            }
            #p_div label{
                margin-left: 33%;
                color: dimgray;
                font-size: 25px;
                font-weight: bolder;
            }
            .input_field label{
                color: dimgray;
                width: 150px;
                margin-right: 5%;
                margin-left: 10%;
                font-size: 18px;
            }
            .input_field .input{
                width: 50%;
                outline: none;
                border: 1px solid #d5dbd9;
                font-size: 15px;
                padding: 8px 10px;
                /* margin-left: 15px; */
                border-radius: 5px;
                transition: all 0.3s ease;
            } 
            .input_field .input:focus{
                border: 1px solid #fe07c0;
            }
            .input_field .btn{
                width: 20%;
                padding: 8px 10px;
                margin: auto;
                font-size: 15px;
                border: 0;
                background: #fe8b07;
                color: #fff;
                cursor: pointer;
                border-radius: 15px;
                outline: none;
            }
            .input_field .btn:hover{
                background: #26ff67; 
            } 


            .input_field .input1{
                -webkit-appearance: none;
                appearance: none;
                width: 53%;
                outline: none;
                border: 1px solid #d5dbd9;
                font-size: 15px;
                padding: 8px 10px;
                border-radius: 5px;
                transition: all 0.3s ease;
            } 
            .input_field .input1:focus{
                border: 1px solid #fe07c0;
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
            function fun1(){
                if(isNaN(document.getElementById("bid").value)){
                    alert("Bus number must be numeric!!!!");
                    document.getElementById("bid").focus();
                    return false;
                }   
            }
            function fun2(){
                if(!isNaN(document.getElementById("nm").value)){
                    alert("Bus Name must be in letters!!!!");
                    document.getElementById("nm").focus();
                    return false;
                }   
            }
            function fun3(){
                if(!isNaN(document.getElementById("from").value)){
                    alert("Source name must be in letters!!!!");
                    document.getElementById("from").focus();
                    return false;
                }   
            }
            function fun4(){
                if(!isNaN(document.getElementById("to").value)){
                    alert("Destination name must be in letters!!!!");
                    document.getElementById("to").focus();
                    return false;
                }   
            }
            function fun6(){
                if(isNaN(document.getElementById("ac1").value)){
                    alert("First Class value must be numeric!!!!");
                    document.getElementById("ac1").focus();
                    return false;
                }   
            }
            function fun7(){
                if(isNaN(document.getElementById("sleeper").value)){
                    alert("Second Class value must be numeric!!!!");
                    document.getElementById("sleeper").focus();
                    return false;
                }   
            }
            function fun8(){
                if(isNaN(document.getElementById("tseats").value)){
                    alert("Total seats number must be numeric!!!!");
                    document.getElementById("tseats").focus();
                    return false;
                }   
            }
            function fun9(){
                if(isNaN(document.getElementById("seatsr").value)){
                    alert("Remaining seats number must be numeric!!!!");
                    document.getElementById("seatsr").focus();
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
                <h2><label class="labels fa fa-home"><a href="AdminFront.jsp"> Home   </a>  </label>
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

            <div id="divbox">
                <div id="divinbox">
                    <div id="p_div">
                        <label>Enter the bus details</label>
                    </div><br>
                    <hr><br>

                    <form action="addbuses.jsp" method=post>

                        <div class="input_field">
                            <label>Bus ID</label>
                            <input type=text name=bus_id class="input" id="bid" onchange="fun1()" required><br>
                        </div> 

                        <div class="input_field">
                            <label>Name</label>
                            <input type=text name=name class="input" id="nm" onchange="fun2()" required><br>
                        </div> 

                        <div class="input_field">
                            <label>Type</label>
                            <select name=type class="input1">
                                <option value="" disabled="disabled" selected>Select</option>
                                <option value="AC">AC</option>
                                <option value="Non AC">Non AC</option>
                            </select><br>
                       </div> 

                        <div class="input_field">
                            <label>Source</label>
                            <input type=text name=from class="input" id="from" onchange="fun3()" required><br>
                        </div>

                        <div class="input_field">
                            <label>Destination</label>
                            <input type=text name=to class="input" id="to" onchange="fun4()"required><br>
                        </div>

                        <div class="input_field">
                            <label>Date</label>
                            <input type=text name=date1 value="" id="datepicker" class="input" required><br>
                        </div>

                        <div class="input_field">
                            <label>FIrst Class</label>
                            <input type=text name=ac1 class="input" id="ac1" onchange="fun6()"required><br>
                        </div>

                        <div class="input_field">
                            <label>Second Class</label>
                            <input type=text name=sleeper class="input" id="sleeper" onchange="fun7()" required><br>
                        </div>

                        <div class="input_field">
                            <label>Total Seats</label>
                            <input type=text name=tseats class="input" id="tseats" onchange="fun8()" required><br>
                        </div>

                        <div class="input_field">
                            <label>Seats Remaining</label>
                            <input type=text name=seatsr class="input" id="seatsr" onchange="fun9()" required><br>
                        </div>
                        <br>
                        <div class="input_field"> 
                            <input type=submit name=submit class="btn">
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>