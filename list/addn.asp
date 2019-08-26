
<html>
<head> <title></title> </head>
<body>
<center>
<br>

<%
bunho = request.form("bunho")
nbunho = request.form("nbunho")
id = request.form("id")
%>

<% if len(id) = 0 then %>

로그인후에 답변코멘트쓰기가 가능합니다.   &nbsp
<a href=view.asp?bunho=<%=bunho%>>돌아가기</a>

<% else %>

<table>

<tr>
<td></td>
<td align=right>
<form action=list.asp method=post>
<input type=hidden name=id value="<%=id%>">
<input type=submit value=목록>
</td></form>
</tr>

<tr>
<td colspan=2 align=center>[ 답변코멘트달기 ]</td>
</tr>

<tr>
<td>&nbsp</td>
</tr>

<tr>
<td>글쓴이   &nbsp</td>

<td>
<form action=addnsave.asp method=post>

<%=id%>

<input type=hidden name=bunho value=<%=bunho%>>
<input type=hidden name=nbunho value=<%=nbunho%>>
<input type=hidden name=id value="<%=id%>">
</td>
</tr>

<tr>
<td valign=top>내 &nbsp 용   &nbsp</td>

<td><textarea rows=5 cols=47 name=텍스트></textarea></td>
</tr>

<tr>
<td>비밀번호   &nbsp</td>
<td><input type=password name=패스워드 size=12 maxlength=10>   &nbsp&nbsp&nbsp&nbsp&nbsp
<input type=submit value=저장하기></td></form>
</tr>
</table>

<% end if %>

</body>
</html>
