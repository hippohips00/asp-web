
<html>
<head> <title></title> </head>
<body>
<center>
<br>

<%
bunho = request.form("bunho")
nbunho = request.form("nbunho")
id = request.form("id")

Set syst = CreateObject("Scripting.FileSystemObject")

textname = Server.MapPath("./text/" & bunho & "n" & nbunho & ".txt")

set text = syst.OpenTextFile(textname, 1, true)

bibun = text.readline
name = text.readline
daytime = text.readline
naiwong = text.readall
naiwong = replace(naiwong, chr(13) & chr(10), "<br>")
%>

<table>
<tr>
<td></td>
<td align=right width=400>
<form action=list.asp method=post>
<input type=hidden name=id value="<%=id%>">
<input type=submit value=���>   &nbsp
</td></form>

<td>
<form action=editn.asp method=post>
<input type=hidden name=bunho value=<%=bunho%>>
<input type=hidden name=nbunho value=<%=nbunho%>>
<input type=hidden name=bibun value=<%=bibun%>>
<input type=hidden name=id value="<%=id%>">
<input type=submit value=����>
</td></form>

<td>
<form action=deleten.asp method=post>
<input type=hidden name=bibun value=<%=bibun%>>
<input type=hidden name=bunho value=<%=bunho%>>
<input type=hidden name=nbunho value=<%=nbunho%>>
<input type=hidden name=id value="<%=id%>">
<input type=submit value=����>
</td></form></tr>

<tr>
<td valign=top>�۾���   &nbsp&nbsp</td>

<td colspan=3 align=left>
<%=id%>   &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp

�ۼ���   &nbsp&nbsp
<%=daytime%>
</td>
</tr>

<tr>
<td valign=top>
�� &nbsp ��   &nbsp&nbsp
</td><td colspan=3 align=left>
<%=trim(naiwong)%>
</td>
</tr>

</table>

</body>
</html>
