
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
<input type=submit value=���ư���>
</form>
</td>
</tr>

<form action=makeidcheck.asp method=post>

<tr>
<td>������ id </td>
<td>
<input type=text name=id maxlength=10 size=12>
</td>
</tr>

<tr>
<td>��й�ȣ </td>
<td>
<input type=password name=bibun maxlength=10 size=12 value=<%=bibun%>>
</td>
</tr>

<tr>
<td></td>
<td align=right>
<input type=submit value=�����ϱ�>
</td>
</tr>

</table>

</body>
</html>
