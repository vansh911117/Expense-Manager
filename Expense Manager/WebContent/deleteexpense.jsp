<%@include file="db.jsp" %>
<%
String name=request.getParameter("name");
String qr="delete from expense where name=?";
PreparedStatement ps=con.prepareStatement(qr);
ps.setString(1,name);
int i=ps.executeUpdate();
RequestDispatcher rd=request.getRequestDispatcher("include.jsp");
rd.include(request,response);
if(i>0)
{
	out.println(i+" record deleted");
}else
{
	out.println("not deleted");
}
%>