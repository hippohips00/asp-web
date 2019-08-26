
<html>
<head> <title></title> </head>
<body><center><br><br><br>

<%
textbunho = request.form("textbunho")
pilename = request.form("pilename")
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
Set syst = CreateObject("Scripting.FileSystemObject")

syst.DeleteFile(Server.MapPath("./text/" & textbunho & ".txt"))
syst.DeleteFile(Server.MapPath("./pile/" & pilename))
%>

삭제되었습니다.   &nbsp

<form action=list.asp method=post>
<input type=hidden name=id value="<%=id%>">
<input type=submit value=돌아가기>
</form>

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
