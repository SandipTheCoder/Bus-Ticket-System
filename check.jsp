



<%@include file="connect.jsp" %>

<%
	Statement st=null;
	ResultSet rs=null;
	int s1=Integer.parseInt(request.getParameter("id"));
	String s2=request.getParameter("pwd");
	String s3=request.getParameter("role");

	try
	{
		st=con.createStatement();
		if(s3.equals("ruser"))
		{
			session.setAttribute("userId",s1);
			String q1="select * from xe.users where id='"+s1+"' AND pwd='"+s2+"' ";
			rs=st.executeQuery(q1);
			if(rs.next())
			{
				response.sendRedirect("User.jsp");
			}
			else
			{
				response.sendRedirect("UserError.jsp");
			}
		}
		else if(s3.equals("admin"))
		{
			session.setAttribute("adminId",s1);
			String q1="select * from xe.admin where id='"+s1+"' AND pwd='"+s2+"' ";
			rs=st.executeQuery(q1);
			if(rs.next())
			{
				response.sendRedirect("AdminFront.jsp");
			}
			else
			{
				response.sendRedirect("AdminError.jsp");
			}
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
		{}
	}
%>










