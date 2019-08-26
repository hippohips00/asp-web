
<html>
<head> <title></title> </head>
<body>
<center>
<br>

<%
bunho = request.form("bunho")
nbunho = request.form("nbunho")
bibun = request.form("bibun")
id = request.form("id")
%>

<form action=editactn.asp method=post>

<input type=hidden name=bunho value=<%=bunho%>>
<input type=hidden name=nbunho value=<%=nbunho%>>
<input type=hidden name=bibun value=<%=bibun%>>
<input type=hidden name=id value="<%=id%>">

비밀번호 : <input type=password name=rebibun size=12 maxlength=10>

<input type=submit value=확인>
</form>

</body>
</html>
