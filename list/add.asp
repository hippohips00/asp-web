
<html>
<head> <title></title> </head>
<body>
<center>
<br>

<% bunho = request.form("bunho") %>
<% id = request.form("id") %>

<% if len(id) = 0 then %>

<table>
<tr>
<td>로그인 후에 글쓰기가 가능합니다.   &nbsp</td>

<td>
<form action=list.asp>
<input type=submit value=목록>
</td></form>
</tr>
</table>

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

<form action=addsave.asp method=post enctype=multipart/form-data>

<tr>
<td align=right valign=top>글쓴이   &nbsp</td>
<td><%=id%></td>
</tr>

<tr>
<td align=right valign=top>제 &nbsp 목   &nbsp</td>

<td>
<input type=text name=jemock size=43 maxlength=19>
</td>
</tr>

<tr>
<td valign=top align=right>내 &nbsp 용   &nbsp</td>

<%
Set syst = CreateObject("Scripting.FileSystemObject")

pile = Server.MapPath("./text/" & bunho & ".txt")

set text = syst.OpenTextFile(pile, 1, true)

bibun = text.readline
jemock = text.readline
name = text.readline
daytime = text.readline
count = text.readline
pilename = text.readline
naiwong = text.readall
naiwong = replace(naiwong, "<br>", chr(13) & chr(10))
%>

<td>
<textarea rows=10 cols=53 name=텍스트>




~ 원글 본문 ~

제목 : <%=jemock%>

내용 : <%=trim(naiwong)%>
</textarea></td>
</tr>

<tr>
<td>첨부파일   &nbsp</td>

<td><input type=file name=pile></td>
</tr>

<input type=hidden name=bunho value=<%=bunho%>>
<input type=hidden name=id value="<%=id%>">

<tr>
<td valign=top>비밀번호   &nbsp</td>
<td><input type=password name=패스워드 size=12 maxlength=10>   &nbsp&nbsp&nbsp&nbsp&nbsp

<input type=submit value=저장하기>
</td></form>
</tr>
</table>

<% end if %>

</body>
</html>
