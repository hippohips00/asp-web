
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

�ڸ�Ʈ�� �����Ǿ����ϴ�.   &nbsp

<a href=view.asp?bunho=<%=bunho%>&id=<%=id%>><font color=blue>���ư���</a>

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
