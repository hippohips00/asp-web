
<html>
<head> <title></title> </head>
<body>
<center>
<br>

<% id = request.form("id") %>

<table>
<tr>
<td width=500 align=right>

<form action=list.asp method=post>
<input type=hidden name=id value="<%=id%>">
<input type=submit value=���>
</td></form>
</tr>
</table>
<br>

<form action=save.asp method=post enctype=multipart/form-data>

<table>
<tr>
<td valign=top align=right>�� &nbsp ��   &nbsp</td>

<td><input type=text name=jemock size=47 maxlength=23></td>
</tr>

<tr>
<td valign=top align=right>�۾���   &nbsp</td>
<td><%=id%></td>
</tr>

<tr>
<td valign=top align=right>�� &nbsp ��   &nbsp</td>
<td><textarea rows=6 cols=60 name=�ؽ�Ʈ></textarea></td>
</tr>

<tr>
<td>÷������   &nbsp</td>

<td><input type=file name=pile></td>
</tr>

<tr>
<td valign=top>��й�ȣ   &nbsp</td>
<td>
<input type=password name=�н����� size=12 maxlength=10>   &nbsp&nbsp&nbsp

<input type=hidden name=id value="<%=id%>">
<input type=submit value=�����ϱ�>
</td></form>
</tr>
</table>

</center>
</body>
</html>
