
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

검색할 내용이 있어야 검색이 가능합니다.   &nbsp

<form action=list.asp method=post>
<input type=hidden name=id value="<%=id%>">
<input type=submit value=돌아가기>
</form>

<% else %>

<table>
<tr><td width=430 align=right>

<form action=list.asp method=post>
<input type=hidden name=id value="<%=id%>">
<input type=submit value=목록>
</form>

</td></tr>

<tr><td align=center>[ 검색 결과 ]</td></tr>
</table>

<%
Set syst = CreateObject("Scripting.FileSystemObject")

bunhopile = Server.MapPath("./" & "번호.txt")
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
<a href="view.asp?bunho=<%=allbunho%>&id=<%=id%>">본래 내용</a>
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
<input type=submit value=답변달기>
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
