
<html>
<head> <title></title> </head>
<body>
<center>
<br>

<%
bunho=request.form("bunho")
nbunho=request.form("nbunho")
id=request.form("id")

naiwong = request.form("�ؽ�Ʈ")
naiwong = "�� " & naiwong
naiwong = replace(naiwong,"<","��")
naiwong = replace(naiwong,">","��")

bibun=request.form("�н�����")
for a=1 to Len(bibun)
password = password & Hex((Asc(Mid(bibun,a,1))*Len(bibun)))
next
bibun = password
%>

<% addnbunho = nbunho +1 %>

<%
Set syst = CreateObject("Scripting.FileSystemObject")

Set createnpile = syst.CreateTextFile(Server.MapPath("./text/" & bunho & "n" & addnbunho & ".txt"), true)
createnpile.WriteLine(bibun)
createnpile.WriteLine(id)
createnpile.WriteLine(date)
createnpile.WriteLine(naiwong)
createnpile.Close
%>

<%
npile = Server.MapPath("./text/" & bunho & "n.txt")

set text = syst.OpenTextFile(npile, 1, true)
nbunho = text.readline
commentsu = text.readline

sainbunho = nbunho + 1
saicommentsu = commentsu +1

Set text = syst.openTextFile(npile, 2)
text.WriteLine(sainbunho)
text.WriteLine(saicommentsu)
%>

�ڸ�Ʈ �亯�� ����Ǿ����ϴ�.

<a href=view.asp?bunho=<%=bunho%>&id=<%=id%>><font color=blue>���ư���</a>

</center>
</body>
</html>
