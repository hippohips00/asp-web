
<html>
<head> <title></title> </head>
<body>
<center>
<br>

<%
bunho = request.form("bunho")
nbunho = request.form("nbunho")
bibun = request.form("bibun")
id = request.form("id")
%>

<% addnbunho = nbunho +1 %>

<%
Set syst = CreateObject("Scripting.FileSystemObject")

addnpile = Server.MapPath("./text/" & bunho & "n" & addnbunho & ".txt")

if syst.FileExists(addnpile) then
%>

코멘트 답변글이 있는 등의 이유로 삭제는 불가능하며, 내용 변경은 가능합니다.   <br>

<form action=ncontrol.asp method=post>
<input type=hidden name=bunho value=<%=bunho%>>
<input type=hidden name=nbunho value=<%=nbunho%>>
<input type=hidden name=id value="<%=id%>">
<input type=submit value=돌아가기>
</form>

<% else %>

<form action=deleteactn.asp method=post>
<input type=hidden name=bunho value=<%=bunho%>>
<input type=hidden name=nbunho value=<%=nbunho%>>
<input type=hidden name=bibun value=<%=bibun%>>
<input type=hidden name=id value="<%=id%>">

비밀번호 : <input type=password name=rebibun size=12 maxlength=10>

<input type=submit value=삭제>
</form>

<% end if %>

</center>
</body>
</html>
