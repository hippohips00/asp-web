
<html>
<head> <title></title> </head>
<body>
<center>
<br>

<% id = request.form("id") %>

<table>
<tr>
<td width=500 align=right>

<form action=list.asp method=post>
<input type=hidden name=id value="<%=id%>">
<input type=submit value=목록>
</td></form>
</tr>
</table>
<br>

<form action=save.asp method=post enctype=multipart/form-data>

<table>
<tr>
<td valign=top align=right>제 &nbsp 목   &nbsp</td>

<td><input type=text name=jemock size=47 maxlength=23></td>
</tr>

<tr>
<td valign=top align=right>글쓴이   &nbsp</td>
<td><%=id%></td>
</tr>

<tr>
<td valign=top align=right>내 &nbsp 용   &nbsp</td>
<td><textarea rows=6 cols=60 name=텍스트></textarea></td>
</tr>

<tr>
<td>첨부파일   &nbsp</td>

<td><input type=file name=pile></td>
</tr>

<tr>
<td valign=top>비밀번호   &nbsp</td>
<td>
<input type=password name=패스워드 size=12 maxlength=10>   &nbsp&nbsp&nbsp

<input type=hidden name=id value="<%=id%>">
<input type=submit value=저장하기>
</td></form>
</tr>
</table>

</center>
</body>
</html>
