
<html>
<head> <title></title> </head>
<body><center><br>

<%
pilebunho = request.form("pilebunho")
bibun = request.form("bibun")
rebibunho = request.form("rebibun")
id = request.form("id")

rebibun = request.form("rebibun")
for a=1 to Len(rebibun)
password = password & Hex((Asc(Mid(rebibun,a,1))*Len(rebibun)))
next
rebibun = password
%>

<% if bibun = rebibun then %>

<%
set syst = CreateObject("Scripting.FileSystemObject")

pilename = Server.MapPath("./text/" & pilebunho & ".txt")

set text = syst.OpenTextFile(pilename, 1, true)

bibun = text.readline
jemock = text.readline
name = text.readline
daytime = text.readline
count = text.readline
pilename = text.readline
naiwong = text.readall
naiwong = replace(naiwong, "<br>", chr(13) & chr(10))
%>

<table>
<tr><td></td><td align=right>
<form action=list.asp method=post>
<input type=hidden name=id value="<%=id%>">
<input type=submit value=���>
</td></form></tr>

<tr>
<td valign=top>�� &nbsp ��   &nbsp   </td>
<td>
<form method=post action=editsave.asp>
<input type=text name=rejemock value="<%=jemock%>" size=47 maxlength=23>
</td></tr>

<tr>
<td valign=top>�۾���   &nbsp   </td>
<td><%=name%></td></tr>

<tr>
<td valign=top>�� &nbsp ��   &nbsp   </td>
<td>
<textarea rows=6 cols=60 name=renaiwong><%=trim(naiwong)%></textarea>
</td></tr>

<tr>
<td></td>
<td><%=pilename%>   &nbsp&nbsp

<% if len(pilename) >0 then %>
���ϻ��� <input type=checkbox name=uppile value=del>
<% end if %>

</td></tr>

<tr>
<td></td>
<td align=right>
<input type=hidden name=bibun value=<%=bibun%>>
<input type=hidden name=pilebunho value=<%=pilebunho%>>
<input type=hidden name=id value="<%=id%>">
<input type=hidden name=name value="<%=name%>">

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
