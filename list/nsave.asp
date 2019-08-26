
<html>
<head> <title></title> </head>
<body>
<center>
<br>

<%
textbunho = request.form("textbunho")
id = request.form("id")

naiwong = request.form("텍스트")
naiwong = replace(naiwong,"<","〈")
naiwong = replace(naiwong,">","〉")

bibun = request.form("패스워드")
for a=1 to Len(bibun)
password = password & Hex((Asc(Mid(bibun,a,1))*Len(bibun)))
next
bibun = password
%>

<%
Set syst = CreateObject("Scripting.FileSystemObject")

npile = Server.MapPath("./text/" & textbunho & "n.txt")

if syst.FileExists(npile) then

else

Set createnpile = syst.CreateTextFile(Server.MapPath("./text/" & textbunho & "n.txt"), true)
createnpile.WriteLine("0")
createnpile.WriteLine("0")
createnpile.Close

end if
%>

<%
set text = syst.OpenTextFile(npile, 1, true)
nbunho = text.readline
commentsu = text.readline

sainbunho = nbunho + 10
saicommentsu = commentsu +1

Set text = syst.openTextFile(npile, 2)
text.WriteLine(sainbunho)
text.WriteLine(saicommentsu)
%>

<%
Set createsainpile = syst.CreateTextFile(Server.MapPath("./text/" & textbunho & "n" & sainbunho & ".txt"), true)
createsainpile.WriteLine(bibun)
createsainpile.WriteLine(id)
createsainpile.WriteLine(date)
createsainpile.WriteLine(naiwong)
createsainpile.Close

Set syst = nothing
%>

코멘트가 저장되었습니다.

<a href=view.asp?bunho=<%=textbunho%>&id=<%=id%>><font color=blue>돌아가기</a>

</center>
</body>
</html>
