
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
<input type=submit value=목록>
</td></form></tr>

<tr>
<td>글쓴이   &nbsp</td>

<form action=editsaven.asp method=post>

<td><%=name%></td>
</tr>

<tr>
<td valign=top>내 &nbsp 용   &nbsp</td>

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

<input type=submit value=변경>
<input type=reset value=다시보기>

</td></form>
</tr>
</table>

<% else %>

암호가 맞게 입력되지 않았습니다.   <br>
입력하신 내용 : <%= rebibunho %>   <br>

<form action=list.asp method=post>
<input type=hidden name=id value="<%=id%>">
<input type=submit value=돌아가기>
</form>

<% end if %>

</body>
</html>
