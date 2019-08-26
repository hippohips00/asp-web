
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
<input type=submit value=목록>
</td></form></tr>

<tr>
<td valign=top>제 &nbsp 목   &nbsp   </td>
<td>
<form method=post action=editsave.asp>
<input type=text name=rejemock value="<%=jemock%>" size=47 maxlength=23>
</td></tr>

<tr>
<td valign=top>글쓴이   &nbsp   </td>
<td><%=name%></td></tr>

<tr>
<td valign=top>내 &nbsp 용   &nbsp   </td>
<td>
<textarea rows=6 cols=60 name=renaiwong><%=trim(naiwong)%></textarea>
</td></tr>

<tr>
<td></td>
<td><%=pilename%>   &nbsp&nbsp

<% if len(pilename) >0 then %>
파일삭제 <input type=checkbox name=uppile value=del>
<% end if %>

</td></tr>

<tr>
<td></td>
<td align=right>
<input type=hidden name=bibun value=<%=bibun%>>
<input type=hidden name=pilebunho value=<%=pilebunho%>>
<input type=hidden name=id value="<%=id%>">
<input type=hidden name=name value="<%=name%>">

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
