
<html>
<head> <title></title> </head>
<body>
<center>
<br>

<%
pilebunho = request.form("pilebunho")
bibun = request.form("bibun")
id = request.form("id")
%>

<form action=editact.asp method=post>
<input type=hidden name=pilebunho value=<%=pilebunho%>>
<input type=hidden name=bibun value=<%=bibun%>>
<input type=hidden name=id value="<%=id%>">

��й�ȣ : <input type=password name=rebibun size=12 maxlength=10>
<input type=submit value=Ȯ��>
</form>

</body>
</html>
