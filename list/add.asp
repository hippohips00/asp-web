
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
<td>�α��� �Ŀ� �۾��Ⱑ �����մϴ�.   &nbsp</td>

<td>
<form action=list.asp>
<input type=submit value=���>
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
<input type=submit value=���>
</td></form>
</tr>

<form action=addsave.asp method=post enctype=multipart/form-data>

<tr>
<td align=right valign=top>�۾���   &nbsp</td>
<td><%=id%></td>
</tr>

<tr>
<td align=right valign=top>�� &nbsp ��   &nbsp</td>

<td>
<input type=text name=jemock size=43 maxlength=19>
</td>
</tr>

<tr>
<td valign=top align=right>�� &nbsp ��   &nbsp</td>

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
<textarea rows=10 cols=53 name=�ؽ�Ʈ>




~ ���� ���� ~

���� : <%=jemock%>

���� : <%=trim(naiwong)%>
</textarea></td>
</tr>

<tr>
<td>÷������   &nbsp</td>

<td><input type=file name=pile></td>
</tr>

<input type=hidden name=bunho value=<%=bunho%>>
<input type=hidden name=id value="<%=id%>">

<tr>
<td valign=top>��й�ȣ   &nbsp</td>
<td><input type=password name=�н����� size=12 maxlength=10>   &nbsp&nbsp&nbsp&nbsp&nbsp

<input type=submit value=�����ϱ�>
</td></form>
</tr>
</table>

<% end if %>

</body>
</html>
