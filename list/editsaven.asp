
<html>
<head> <title></title> </head>
<body>
<center>
<br>

<%
bunho=request.form("bunho")
nbunho=request.form("nbunho")
bibun=request.form("bibun")
daytime=request.form("daytime")
id=request.form("id")

renaiwong=request.form("renaiwong")
renaiwong = replace(renaiwong,"<","��")
renaiwong = replace(renaiwong,">","��")
%>

<%
Set syst = CreateObject("Scripting.FileSystemObject")

pilename = Server.MapPath("./text/" & bunho & "n" & nbunho & ".txt")

set text = syst.OpenTextFile(pilename, 1, true)
bibun=text.readline
name=text.readline
daytime=text.readline

Set text = syst.openTextFile(pilename, 2)
text.WriteLine(bibun)
text.WriteLine(name)
text.WriteLine(daytime)
text.WriteLine(renaiwong)
%>

�ڸ�Ʈ�� ����Ǿ����ϴ�.   &nbsp

<a href=view.asp?bunho=<%=bunho%>&id=<%=id%>><font color=blue>���ư���</a>

</center>
</body>
</html>
