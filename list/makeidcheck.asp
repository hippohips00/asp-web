
<html>
<head> <title></title> </head>
<body>
<center>
<br>

<%
id = request.form("id")
id = replace(id,"<","��")
id = replace(id,">","��")
%>

<% bibun = request.form("bibun") %>

<%
Set syst = CreateObject("Scripting.FileSystemObject")

pile = Server.MapPath("./id/" & id & ".txt")

if syst.FileExists(pile) then
%>

�̹� �����ϴ� id �Դϴ�.

<form action=makeid.asp method=post>
<input type=hidden name=bibun value=<%=bibun%>>
<input type=submit value=�����ϱ�>
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

id�� �����Ǿ����ϴ�.

<form action=list.asp method=post>
<input type=hidden name=id value="<%=id%>">
<input type=submit value=���ư���>
</form>

<% end if %>

</body>
</html>
