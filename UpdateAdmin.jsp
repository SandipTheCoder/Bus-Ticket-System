<!DOCTYPE html>
<html>
    <head>
        <title>All Buses</title>
        <link rel="stylesheet" type="text/css" href="AllStyle.css">
		<link rel="stylesheet" type="text/css" href="css/all.min.css">
        
		<style>
			
            #divinbox{
                width: 30%;
                height: auto;
                padding: 5px;
                font-size: 18px;
                margin: 20px auto;
                box-shadow: 0px 0px 5px 2px #ccc;  
                border: 5px solid white;
                background-color: darksalmon;
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
		</style>

        
        
    </head>

    <body id="boy1">
        

        <div id="color-box">
            
            <div id="div1">
                <h1>Bus Ticket Booking System</h1>
            </div>
            <div id="div2">
                <h2><label class="labels fa fa-home"><a href="AdminFront.jsp"> Home   </a>  </label>
                    <label class="labels fa fa-user"><a href="about1.jsp"> About Us   </a> </label>
                    <label class="labels fa fa-bus"><a href="adminSeeBus.jsp"> See Buses   </a>  </label>
                    <label class="labels fa fa-plus-circle"><a href="Admin.jsp"> Add Buses   </a>  </label>
                    <label class="labels fa fa-trash"><a href="delete.jsp"> Delete Buses   </a>  </label>
                    <label class="labels fa fa-eye"><a href="myaccount.jsp"> My Account   </a>  </label>
                    <label class="labels fa fa-power-off"><a href="logout.jsp"> Logout   </a>  </label>
                </h2>
            </div>

            <%@include file="connect.jsp" %>
            <%
                Statement st=null;
                ResultSet rs=null;
            
                String s2=request.getParameter("pwd");
                String s4=request.getParameter("email");
                String s5=request.getParameter("name");
            
        

                try
                {
                    st=con.createStatement();

                    String sql1="Update admin set NAME='"+s5+"' , PWD='"+s2+"' , EMAIL='"+s4+"' where  ID= '"+session.getAttribute("adminId")+"'";

                    int i=st.executeUpdate(sql1);

                    if(i>0)
                    {
                        %>
                            <div class="relog_div">
                                <%response.sendRedirect("myaccount.jsp");%>
                            </div>
                        
                        <%
                    }
                    else
                    {
                        %>
                
                            <div class="relog_div">
                                <p>Updation is failed.</p>
                            </div>
                        
                        <%
                    }
                    %>
            
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

        