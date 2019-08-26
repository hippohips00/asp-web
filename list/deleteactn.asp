
<html>
<head> <title></title> </head>
<body>
<center>
<br><br><br>

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

Set syst = CreateObject("Scripting.FileSystemObject")

syst.DeleteFile(Server.MapPath("./text/" & bunho & "n" & nbunho & ".txt"))

npile = Server.MapPath("./text/" & bunho & "n.txt")

set text = syst.OpenTextFile(npile, 1, true)
nbunho = text.readline
commentsu = text.readline

saicommentsu = commentsu -1

Set text = syst.openTextFile(npile, 2)
text.WriteLine(nbunho)
text.WriteLine(saicommentsu)
%>

코멘트가 삭제되었습니다.   &nbsp

<a href=view.asp?bunho=<%=bunho%>&id=<%=id%>><font color=blue>돌아가기</a>

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
