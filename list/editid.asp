
<html>
<head> <title></title> </head>
<body>
<center>
<br>

<% id = request.form("id") %>

�α����� id : <%=id%> <br><br>

<form action=delid.asp method=post>
<input type=hidden name=id value="<%=id%>">
<input type=submit value=id����>
</form>   <br>

<form action=list.asp method=post>
<input type=hidden name=id value="<%=id%>">
<input type=submit value=���ư���>
</form>

</body>
</html>
