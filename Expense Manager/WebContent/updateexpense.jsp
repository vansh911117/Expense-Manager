<%@include file="db.jsp"%>
<%
String type=request.getParameter("type");
String name=request.getParameter("name");
String currency=request.getParameter("currency");
String friend=request.getParameter("friend");
String date=request.getParameter("date");
String amount=request.getParameter("amount");
String qr="update expense set type=?,currency=?,friend=?,date=?,amount=? where name=?";
PreparedStatement ps=con.prepareStatement(qr);
ps.setString(1,type);
ps.setString(2,currency);
ps.setString(3,friend);
ps.setString(4,date);
ps.setString(5,amount);
ps.setString(6, name);
int i=ps.executeUpdate();
RequestDispatcher rd=request.getRequestDispatcher("include.jsp");
rd.include(request,response);
if(i>0)
{
	out.println(i+" product updated sucessfully");
}else{
	out.println("not updated");
}
%>