
<html>
<head> <title></title> </head>
<body><center><br>

<%
textbunho = request.form("textbunho")
pilename = request.form("pilename")
bibun = request.form("bibun")
id = request.form("id")
%>

<% addbunho = textbunho -1 %>

<%
Set syst = CreateObject("Scripting.FileSystemObject")

addpile = Server.MapPath("./text/" & addbunho & ".txt")
%>

<% if syst.FileExists(addpile) then %>

답변글이 있는 등의 이유로 삭제는 불가능하며, 내용 변경은 가능합니다.   <br>
첨부파일은 '변경' 에서 삭제가 가능합니다.   <br><br>

<a href=view.asp?bunho=<%=textbunho%>&id=<%=id%>>   <font color=blue>돌아가기</font>   </a>

<% else %>

<% npile = Server.MapPath("./text/" & textbunho & "n.txt") %>

<% if syst.FileExists(npile) then %>

코멘트글이 있는 등의 이유로 삭제는 불가능하며, 내용 변경은 가능합니다.   <br>
첨부파일은 '변경' 에서 삭제가 가능합니다.   <br><br>

<a href=view.asp?bunho=<%=textbunho%>&id=<%=id%>>   <font color=blue>돌아가기</font>   </a>

<% else %>

<form action=deleteact.asp method=post>
<input type=hidden name=textbunho value=<%=textbunho%>>
<input type=hidden name=pilename value="<%=pilename%>">
<input type=hidden name=bibun value=<%=bibun%>>
<input type=hidden name=id value="<%=id%>">

비밀번호 : <input type=password name=rebibun size=12 maxlength=10>

<input type=submit value=삭제>
</form>

<% end if %>

<% end if %>

</body>
</html>
