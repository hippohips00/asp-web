
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

�����Ǿ����ϴ�.   &nbsp

<form action=list.asp method=post>
<input type=hidden name=id value="<%=id%>">
<input type=submit value=���ư���>
</form>

<% else %>

��ȣ�� �°� �Էµ��� �ʾҽ��ϴ�.   <br>
�Է��Ͻ� ���� : <%= rebibunho %>   <br>

<form action=list.asp method=post>
<input type=hidden name=id value="<%=id%>">
<input type=submit value=���ư���>
</form>

<% end if %>

</body>
</html>
