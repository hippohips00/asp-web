
<html>
<head> <title></title> </head>
<body>
<center>
<br>

<%
searchtext = request.form("searchtext")
id = request.form("id")
%>

<% if len(searchtext) < 1 then %>

�˻��� ������ �־�� �˻��� �����մϴ�.   &nbsp

<form action=list.asp method=post>
<input type=hidden name=id value="<%=id%>">
<input type=submit value=���ư���>
</form>

<% else %>

<table>
<tr><td width=430 align=right>

<form action=list.asp method=post>
<input type=hidden name=id value="<%=id%>">
<input type=submit value=���>
</form>

</td></tr>

<tr><td align=center>[ �˻� ��� ]</td></tr>
</table>

<%
Set syst = CreateObject("Scripting.FileSystemObject")

bunhopile = Server.MapPath("./" & "��ȣ.txt")
bunho = syst.OpenTextFile(bunhopile, 1, false).ReadAll

for allbunho = bunho to 1 step -1
allpile = Server.MapPath("./text/" & allbunho & ".txt")

if syst.FileExists(allpile) then
Set allpileopen = syst.OpenTextFile(allpile, 1, false)
bibun = allpileopen.ReadLine
naiwong = allpileopen.ReadAll
naiwong = replace(naiwong, chr(13) & chr(10), "<br>")

allpileopen.close

if instr(naiwong,searchtext) <> 0 then
%>

<table border=1>
<tr>

<td width=430>
<%=naiwong%>
</td>

<td>
<a href="view.asp?bunho=<%=allbunho%>&id=<%=id%>">���� ����</a>
</td>
</tr>

<%
addpile = Server.MapPath("./text/" & allbunho -1 & ".txt")

if syst.FileExists(addpile) then
else
%>

<tr><td></td><td>

<form action=add.asp method=post>
<input type=hidden name=bunho value=<%=allbunho%>>
<input type=hidden name=id value="<%=id%>">
<input type=submit value=�亯�ޱ�>
</td></form>
</tr>

<% end if %>

</table>

<%
end if
end if
%>

<% next %>

<% end if %>

</center>
</body>
</html>
