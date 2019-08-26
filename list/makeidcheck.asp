
<html>
<head> <title></title> </head>
<body>
<center>
<br>

<%
id = request.form("id")
id = replace(id,"<","〈")
id = replace(id,">","〉")
%>

<% bibun = request.form("bibun") %>

<%
Set syst = CreateObject("Scripting.FileSystemObject")

pile = Server.MapPath("./id/" & id & ".txt")

if syst.FileExists(pile) then
%>

이미 존재하는 id 입니다.

<form action=makeid.asp method=post>
<input type=hidden name=bibun value=<%=bibun%>>
<input type=submit value=변경하기>
</form>

<% else %>

<%
bibun = request.form("bibun")
for a=1 to Len(bibun)
password = password & Hex((Asc(Mid(bibun,a,1))*Len(bibun)))
next
bibun = password
%>

<%
Set makepile = syst.CreateTextFile(Server.MapPath("./id/" & id & ".txt"), true)
makepile.WriteLine(id)
makepile.WriteLine(bibun)
makepile.close
%>

id가 생성되었습니다.

<form action=list.asp method=post>
<input type=hidden name=id value="<%=id%>">
<input type=submit value=돌아가기>
</form>

<% end if %>

</body>
</html>
