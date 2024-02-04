<%@include file="db.jsp" %>
<%
String type=request.getParameter("type");
String name=request.getParameter("name");
String currency=request.getParameter("currency");
String friend=request.getParameter("friend");
String date=request.getParameter("date");
String amount=request.getParameter("amount");
String qr="insert into expense values(?,?,?,?,?,?)";
PreparedStatement ps=con.prepareStatement(qr);
ps.setString(1,type);
ps.setString(2,name);
ps.setString(3,currency);
ps.setString(4,friend);
ps.setString(5,date);
ps.setString(6,amount);
int i=ps.executeUpdate();
RequestDispatcher rd=request.getRequestDispatcher("include.jsp");
rd.include(request,response);
if(i>0)
{
	out.println("expense added sucessfully");
}
else{
	out.println("something went wrong");
}
con.close();
%>