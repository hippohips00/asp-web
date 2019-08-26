
<html>
<head> <title></title> </head>
<body>
<center>
<br>

<% id = request.form("id") %>

[ id 삭제 ]   <br><br>

<form action=delidcheck.asp method=post>

비밀번호 재확인 : 

<input type=hidden name=id value="<%=id%>">
<input type=password name=askbibun size=12 maxlength=10>   &nbsp
<input type=submit value=삭제>
</form>   <br><br>

<form action=editid.asp method=post>
<input type=hidden name=id value="<%=id%>">
<input type=submit value=돌아가기>
</form>

</body>
</html>
