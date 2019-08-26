
<html>
<head> <title></title> </head>
<body>
<center>
<br>

<%
id = request.form("id")

askbibun = request.form("askbibun")
for a=1 to Len(askbibun)
password = password & Hex((Asc(Mid(askbibun,a,1))*Len(askbibun)))
next
askbibunin = password
%>

<%
Set syst = CreateObject("Scripting.FileSystemObject")

pile = Server.MapPath("./id/" & id & ".txt")
%>

<% if syst.FileExists(pile) then %>

<%
Set text = syst.OpenTextFile(pile, 1, false)

id = text.readline
bibun = text.readline
text.close
%>

<% if askbibunin = bibun then %>

id 와 비밀번호가 확인되었습니다.

<form action=list.asp method=post>
<input type=hidden name=id value=<%=id%>>
<input type=submit value=돌아가기>
</form>

<% else %>
id 와 비밀번호가 맞지않습니다.   <br>
입력하신 id : <%=id%>   <br>
입력하신 비밀번호 : <%=askbibun%>

<form action=list.asp>
<input type=submit value=돌아가기>
</form>

<% end if %>

<% else %>

id 가 없습니다. <br>
입력하신 id : <%=id%>   <br>

<form action=list.asp>
<input type=submit value=돌아가기>
</form>

<% end if %>

</body>
</html>
