
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

�ڸ�Ʈ �亯���� �ִ� ���� ������ ������ �Ұ����ϸ�, ���� ������ �����մϴ�.   <br>

<form action=ncontrol.asp method=post>
<input type=hidden name=bunho value=<%=bunho%>>
<input type=hidden name=nbunho value=<%=nbunho%>>
<input type=hidden name=id value="<%=id%>">
<input type=submit value=���ư���>
</form>

<% else %>

<form action=deleteactn.asp method=post>
<input type=hidden name=bunho value=<%=bunho%>>
<input type=hidden name=nbunho value=<%=nbunho%>>
<input type=hidden name=bibun value=<%=bibun%>>
<input type=hidden name=id value="<%=id%>">

��й�ȣ : <input type=password name=rebibun size=12 maxlength=10>

<input type=submit value=����>
</form>

<% end if %>

</center>
</body>
</html>
