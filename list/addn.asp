
<html>
<head> <title></title> </head>
<body>
<center>
<br>

<%
bunho = request.form("bunho")
nbunho = request.form("nbunho")
id = request.form("id")
%>

<% if len(id) = 0 then %>

�α����Ŀ� �亯�ڸ�Ʈ���Ⱑ �����մϴ�.   &nbsp
<a href=view.asp?bunho=<%=bunho%>>���ư���</a>

<% else %>

<table>

<tr>
<td></td>
<td align=right>
<form action=list.asp method=post>
<input type=hidden name=id value="<%=id%>">
<input type=submit value=���>
</td></form>
</tr>

<tr>
<td colspan=2 align=center>[ �亯�ڸ�Ʈ�ޱ� ]</td>
</tr>

<tr>
<td>&nbsp</td>
</tr>

<tr>
<td>�۾���   &nbsp</td>

<td>
<form action=addnsave.asp method=post>

<%=id%>

<input type=hidden name=bunho value=<%=bunho%>>
<input type=hidden name=nbunho value=<%=nbunho%>>
<input type=hidden name=id value="<%=id%>">
</td>
</tr>

<tr>
<td valign=top>�� &nbsp ��   &nbsp</td>

<td><textarea rows=5 cols=47 name=�ؽ�Ʈ></textarea></td>
</tr>

<tr>
<td>��й�ȣ   &nbsp</td>
<td><input type=password name=�н����� size=12 maxlength=10>   &nbsp&nbsp&nbsp&nbsp&nbsp
<input type=submit value=�����ϱ�></td></form>
</tr>
</table>

<% end if %>

</body>
</html>
