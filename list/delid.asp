
<html>
<head> <title></title> </head>
<body>
<center>
<br>

<% id = request.form("id") %>

[ id ���� ]   <br><br>

<form action=delidcheck.asp method=post>

��й�ȣ ��Ȯ�� : 

<input type=hidden name=id value="<%=id%>">
<input type=password name=askbibun size=12 maxlength=10>   &nbsp
<input type=submit value=����>
</form>   <br><br>

<form action=editid.asp method=post>
<input type=hidden name=id value="<%=id%>">
<input type=submit value=���ư���>
</form>

</body>
</html>
