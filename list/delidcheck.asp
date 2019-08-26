
<html>
<head> <title></title> </head>
<body>
<center>
<br>

<%
id = request.form("id")

askbibun = request.form("askbibun")
askbibunre = askbibun

for a=1 to Len(askbibun)
password = password & Hex((Asc(Mid(askbibun,a,1))*Len(askbibun)))
next
askbibun = password
%>

<%
Set syst = CreateObject("Scripting.FileSystemObject")

pile = Server.MapPath("./id/" & id & ".txt")

Set text = syst.OpenTextFile(pile, 1, false)

id = text.readline
bibun = text.readline
text.close
%>

<% if askbibun = bibun then %>

<%
Set syst = CreateObject("Scripting.FileSystemObject")

syst.DeleteFile(Server.MapPath("./id/" & id & ".txt"))
%>

id 가 삭제되었습니다.

<meta http-equiv="Refresh" content="2;URL=list.asp">

<% else %>

비밀번호가 맞게 입력되지 않았습니다.   <br>
입력하신 내용 : <%=askbibunre%>

<form action=delid.asp method=post>
<input type=hidden name=id value="<%=id%>">
<input type=submit value=돌아가기>
</form>

<% end if %>

</body>
</html>
