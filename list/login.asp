
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

id �� ��й�ȣ�� Ȯ�εǾ����ϴ�.

<form action=list.asp method=post>
<input type=hidden name=id value=<%=id%>>
<input type=submit value=���ư���>
</form>

<% else %>
id �� ��й�ȣ�� �����ʽ��ϴ�.   <br>
�Է��Ͻ� id : <%=id%>   <br>
�Է��Ͻ� ��й�ȣ : <%=askbibun%>

<form action=list.asp>
<input type=submit value=���ư���>
</form>

<% end if %>

<% else %>

id �� �����ϴ�. <br>
�Է��Ͻ� id : <%=id%>   <br>

<form action=list.asp>
<input type=submit value=���ư���>
</form>

<% end if %>

</body>
</html>
