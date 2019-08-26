
<html>
<head> <title></title> </head>
<body>
<center>
<br>

<%
bunho=request.form("bunho")
nbunho=request.form("nbunho")
id=request.form("id")

naiwong = request.form("텍스트")
naiwong = "≫ " & naiwong
naiwong = replace(naiwong,"<","〈")
naiwong = replace(naiwong,">","〉")

bibun=request.form("패스워드")
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

코멘트 답변이 저장되었습니다.

<a href=view.asp?bunho=<%=bunho%>&id=<%=id%>><font color=blue>돌아가기</a>

</center>
</body>
</html>
