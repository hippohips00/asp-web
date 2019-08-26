
<html>
<head> <title></title> <head>
<body>
<center>
<br>

<% bibun = request.form("bibun") %>

<table>

<tr>
<td></td>
<td align=right>
<form action=list.asp>
<input type=submit value=돌아가기>
</form>
</td>
</tr>

<form action=makeidcheck.asp method=post>

<tr>
<td>생성할 id </td>
<td>
<input type=text name=id maxlength=10 size=12>
</td>
</tr>

<tr>
<td>비밀번호 </td>
<td>
<input type=password name=bibun maxlength=10 size=12 value=<%=bibun%>>
</td>
</tr>

<tr>
<td></td>
<td align=right>
<input type=submit value=생성하기>
</td>
</tr>

</table>

</body>
</html>
