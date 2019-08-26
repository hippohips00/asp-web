
<html>
<head> <title></title> </head>
<body><center><br>

<%
pilebunho = request.form("pilebunho")
bibun = request.form("bibun")
id = request.form("id")
name = request.form("name")
uppile=request.form("uppile")

rejemock = request.form("rejemock")
rejemock = replace(rejemock,"<","〈")
rejemock = replace(rejemock,">","〉")

renaiwong = request.form("renaiwong")
renaiwong = replace(renaiwong,"<","〈")
renaiwong = replace(renaiwong,">","〉")
%>

<%
Set syst = CreateObject("Scripting.FileSystemObject")

allpilename = Server.MapPath("./text/" & pilebunho & ".txt")

set text = syst.OpenTextFile(allpilename, 1, true)
bibun = text.readline
jemock = text.readline
name = text.readline
daytime = text.readline
count = text.readline
pilename = text.readline

if uppile="del" then
syst.DeleteFile(Server.MapPath("./pile/" & pilename))
pilename=""
end if

Set text = syst.openTextFile(allpilename, 2)
text.WriteLine(bibun)
text.WriteLine(rejemock)
text.WriteLine(name)
text.WriteLine(daytime)
text.WriteLine(count)
text.WriteLine(pilename)
text.WriteLine(renaiwong)
%>

변경되었습니다.   &nbsp

<form action=list.asp method=post>
<input type=hidden name=id value="<%=id%>">
<input type=submit value=돌아가기>
</form>

</body>
</html>
