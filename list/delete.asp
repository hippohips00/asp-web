
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

�亯���� �ִ� ���� ������ ������ �Ұ����ϸ�, ���� ������ �����մϴ�.   <br>
÷�������� '����' ���� ������ �����մϴ�.   <br><br>

<a href=view.asp?bunho=<%=textbunho%>&id=<%=id%>>   <font color=blue>���ư���</font>   </a>

<% else %>

<% npile = Server.MapPath("./text/" & textbunho & "n.txt") %>

<% if syst.FileExists(npile) then %>

�ڸ�Ʈ���� �ִ� ���� ������ ������ �Ұ����ϸ�, ���� ������ �����մϴ�.   <br>
÷�������� '����' ���� ������ �����մϴ�.   <br><br>

<a href=view.asp?bunho=<%=textbunho%>&id=<%=id%>>   <font color=blue>���ư���</font>   </a>

<% else %>

<form action=deleteact.asp method=post>
<input type=hidden name=textbunho value=<%=textbunho%>>
<input type=hidden name=pilename value="<%=pilename%>">
<input type=hidden name=bibun value=<%=bibun%>>
<input type=hidden name=id value="<%=id%>">

��й�ȣ : <input type=password name=rebibun size=12 maxlength=10>

<input type=submit value=����>
</form>

<% end if %>

<% end if %>

</body>
</html>
