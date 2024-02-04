<%@include file="db.jsp" %>
<table align="center" border="1px">
<%
 String qr="select * from expense";
 Statement st=con.createStatement();
 ResultSet rs=st.executeQuery(qr);
 if(rs.next())
 {
   do
   {
	   String type=rs.getString("type");
	   String name=rs.getString("name");
	   String currency=rs.getString("currency");
	   String friend=rs.getString("friend");
	   String date=rs.getString("date"); 
	   String amount=rs.getString("amount"); 
	   %>
	   <tr>
	   <form action="updateexpense.jsp">
	   <td><input type="text" name="type" value="<%=type %>" /></td>
	   <td><%=name %><input type="hidden" name="name" value="<%=name %>" /></td>
	   <td><input type="text" name="currency" value="<%=currency %>" /></td>
	   <td><input type="text" name="friend" value="<%=friend %>" /></td>
	   <td><input type="date" name="date" value="<%=date %>" /></td>
	   <td><input type="text" name="amount" value="<%=amount %>" /></td>
	   <td><input type="submit" value="Update" /></td>
	   <td><a href="deleteexpense.jsp?name=<%=name %>">Delete</a></td>
	   </form> 
	   </tr>
	   <%
   }while(rs.next());
 }
 else
 {
	 out.println("no records found");
 }
%>
</table>