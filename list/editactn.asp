
<html>
<head> <title></title> </head>
<body>
<center>
<br>

<%
bunho = request.form("bunho")
nbunho = request.form("nbunho")
bibun = request.form("bibun")
rebibunho = request.form("rebibun")
id = request.form("id")

rebibun = request.form("rebibun")
for a=1 to Len(rebibun)
password = password & Hex((Asc(Mid(rebibun,a,1))*Len(rebibun)))
next
rebibun = password
%>

<%
if bibun = rebibun then

set syst = CreateObject("Scripting.FileSystemObject")

pilename = Server.MapPath("./text/" & bunho & "n" & nbunho & ".txt")

set text = syst.OpenTextFile(pilename, 1, true)

bibun = text.readline
name = text.readline
daytime = text.readline
naiwong = text.readall
%>

<table>
<tr>
<td></td>
<td align=right>
<form action=list.asp method=post>
<input type=hidden name=id value="<%=id%>">
<input type=submit value=���>
</td></form></tr>

<tr>
<td>�۾���   &nbsp</td>

<form action=editsaven.asp method=post>

<td><%=name%></td>
</tr>

<tr>
<td valign=top>�� &nbsp ��   &nbsp</td>

<td><textarea rows=5 cols=50 name=renaiwong><%=trim(naiwong)%></textarea></td>
</tr>

<tr>
<td></td>
<td align=right>
<input type=hidden name=bibun value=<%=bibun%>>
<input type=hidden name=bunho value=<%=bunho%>>
<input type=hidden name=nbunho value=<%=nbunho%>>
<input type=hidden name=daytime value=<%=daytime%>>
<input type=hidden name=id value="<%=id%>">

<input type=submit value=����>
<input type=reset value=�ٽú���>

</td></form>
</tr>
</table>

<% else %>

��ȣ�� �°� �Էµ��� �ʾҽ��ϴ�.   <br>
�Է��Ͻ� ���� : <%= rebibunho %>   <br>

<form action=list.asp method=post>
<input type=hidden name=id value="<%=id%>">
<input type=submit value=���ư���>
</form>

<% end if %>

</body>
</html>
