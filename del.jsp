<!DOCTYPE html>
<html>
    <head>
        <title>Delete</title>
    </head>
    
    <body>
        <%@include file="connect.jsp" %>

        <%
            Statement st=null;
            ResultSet rs=null;

            int s=Integer.parseInt(request.getParameter("bus"));
            out.println(s);
	
            try{
                
                st=con.createStatement();
                String sql="delete from buses where BUS_ID="+s;
                st.execute(sql);
                response.sendRedirect("delete.jsp");
                con.close();
            }
            catch(Exception e)
            {
                out.println(e);
            }
        %>
    </body>
</html>