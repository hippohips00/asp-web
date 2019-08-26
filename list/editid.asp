
<html>
<head> <title></title> </head>
<body>
<center>
<br>

<% id = request.form("id") %>

로그인한 id : <%=id%> <br><br>

<form action=delid.asp method=post>
<input type=hidden name=id value="<%=id%>">
<input type=submit value=id삭제>
</form>   <br>

<form action=list.asp method=post>
<input type=hidden name=id value="<%=id%>">
<input type=submit value=돌아가기>
</form>

</body>
</html>
