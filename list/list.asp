
<html>
<head> <title></title> </head>
<body>
<center>
<br>

<table>

<tr>

<% id = request.form("id") %>
	
<td align=left>
<form action=list.asp method=post>
<input type=hidden name=id value="<%=id%>">
<input type=submit value="���� ��ħ">   &nbsp
</td></form>

<% if len(id) = 0 then %>

<td>
<form action=login.asp method=post>
id <input type=text name=id size=12 maxlength=10>   &nbsp
</td>

<td>
password <input type=password name=askbibun size=12 maxlength=10>   &nbsp
<input type=submit value=�α���>
</td></form>

<td>
<form action=makeid.asp>
<input type=submit value="id ����">
</td></form>

<td>(�α����Ŀ� �۾��Ⱑ��)</td>

<% else %>

<td width=200 align=right>id : <%=id%>   &nbsp</td>

<td>
<form action=list.asp>
<input type=submit value=�α׾ƿ�>
</td></form>

<td>
<form action=editid.asp method=post>
<input type=hidden name=id value="<%=id%>">
<input type=submit value="id ����">
</td></form>

<td width=300 align=right>
<form action=write.asp method=post>
<input type=hidden name=id value="<%=id%>">
<input type=submit value=�۾���>
</td></form>

<% end if %>

</tr>
<tr><td></td></tr>
</table>

<table border=1>
<tr>
<td width=90 align=center>�۾���</td>
<td width=400 align=center>�� ��</td>
<td width=85 align=center>�ۼ���</td>
<td width=40 align=center>����</td>
<td width=40 align=center>��ȸ</td>
<td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>
</tr>
</table>

<%
Set syst = CreateObject("Scripting.FileSystemObject")

bunpile = Server.MapPath("./" & "��ȣ.txt")
bunopen = syst.OpenTextFile(bunpile, 1, true).ReadAll
%>

<% newbunopen = request.form("newbunopen") %>

<%
if newbunopen > 0 then
bunopen = newbunopen
end if
%>

<%
for allpilebunho = bunopen to bunopen - 99 step -1

allpile = Server.MapPath("./text/" & allpilebunho & ".txt")

if syst.FileExists(allpile) then
Set text = syst.OpenTextFile(allpile, 1, false)
amho = text.readline
jemock = text.readline
name = text.readline
daytime = text.readline
count = text.readline
pilename = text.readline
text.close
set text=nothing
%>

<STYLE type="text/css">
A:link {color:black}
A:active {color:black}
A:visited {color:gray}
A:link, A:active, A:visited {text-decoration:none}
</STYLE>

<%
appile = Server.MapPath("./text/" & allpilebunho +1 & ".txt")

if syst.FileExists(appile) then
%>

<table border=1>
<tr>

<td width=90 align=center><%=name%></td>

<td width=15></td>

<td width=380 align=left>

<a href="view.asp?bunho=<%=allpilebunho%>&id=<%=id%>"><%=trim(jemock)%></a>

<%
npile = Server.MapPath("./text/" & allpilebunho & "n.txt")

if syst.FileExists(npile) then

Set n = syst.OpenTextFile(npile, 1, false)
nbunho = n.readline
commentsu = n.readline
n.close
set n=nothing
%>

<%="("%>   <%=commentsu%>   <%=")"%>

<% end if %>
</td>

<td width=85 align=center><%=daytime%></td>

<td width=40 align=center>

<% if len(pilename) > 0 then %>   <a href="pile/<%=pilename%>">����</a>
<% else %>   &nbsp
<% end if %>

</td>

<td width=40 align=center><%=count%></td>

<%
addpile = Server.MapPath("./text/" & allpilebunho -1 & ".txt")

if syst.FileExists(addpile) then
%>

<td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>

<% else %>

<td>
<form action=add.asp method=post>
<input type=hidden name=bunho value=<%=allpilebunho%>>
<input type=hidden name=id value="<%=id%>">
<input type=submit value=�亯�ޱ�>
</td></form>
</tr>

<% end if %>

</table>

<% else %>

<table border=1>
<tr>

<td width=90 align=center><%=name%></td>

<td width=400 align=left>

<a href="view.asp?bunho=<%=allpilebunho%>&id=<%=id%>"><%=trim(jemock)%></a>

<%
npile = Server.MapPath("./text/" & allpilebunho & "n.txt")

if syst.FileExists(npile) then

Set n = syst.OpenTextFile(npile, 1, false)
nbunho = n.readline
commentsu = n.readline
n.close
set n=nothing
%>

<%="("%>   <%=commentsu%>   <%=")"%>

<% end if %>
</td>

<td width=85 align=center><%=daytime%></td>

<td width=40 align=center>

<% if len(pilename) > 0 then %>   <a href="pile/<%=pilename%>">����</a>
<% else %>   &nbsp
<% end if %>

</td>

<td width=40 align=center><%=count%></td>

<%
addpile = Server.MapPath("./text/" & allpilebunho -1 & ".txt")

if syst.FileExists(addpile) then
%>

<td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>

<% else %>

<td>
<form action=add.asp method=post>
<input type=hidden name=bunho value=<%=allpilebunho%>>
<input type=hidden name=id value="<%=id%>">
<input type=submit value=�亯�ޱ�>
</td></form>
</tr>

<% end if %>

</table>

<% end if %>

<%
end if
next
%>

<table>
<tr>

<%
Set syst = CreateObject("Scripting.FileSystemObject")

bunpile = Server.MapPath("./" & "��ȣ.txt")
bunopen = syst.OpenTextFile(bunpile, 1, true).ReadAll
%>

<% if bunopen - newbunopen > 0 and newbunopen > 0 then %>

<td>
<form action=list.asp method=post>
<input type="hidden" name="id" value="<%=id%>">
<input type=submit value=<%="|���"%>>   &nbsp
</form>      </td>

<% end if %>

<% if bunopen - newbunopen > 500 and newbunopen > 0 then %>

<td>
<form action=list.asp method=post>
<input type=hidden name=newbunopen value=<%=newbunopen +500%>>
<input type="hidden" name="id" value="<%=id%>">
<input type=submit value=<%="����5"%>>
</form> </td>

<% end if %>

<% if bunopen - newbunopen > 0 and newbunopen > 0 then %>

<td>
<form action=list.asp method=post>
<input type=hidden name=newbunopen value=<%=newbunopen +100%>>
<input type="hidden" name="id" value="<%=id%>">
<input type=submit value=<%="����"%>>
</form> </td>

<% end if %>

<td valign=top>&nbsp[������]&nbsp</td>

<%
if newbunopen > 0 then
bunopen = newbunopen
end if
%>

<% if bunopen > 199 then %>

<td>
<form action=list.asp method=post>
<input type=hidden name=newbunopen value=<%=bunopen -100%>>
<input type="hidden" name="id" value="<%=id%>">
<input type=submit value=<%="����"%>>   &nbsp
</form>   </td>

<% end if %>

<% if bunopen > 600 then %>

<td>
<form action=list.asp method=post>
<input type=hidden name=newbunopen value=<%=bunopen -500%>>
<input type="hidden" name="id" value="<%=id%>">
<input type=submit value=<%="����5"%>>   &nbsp
</form>   </td>

<% end if %>

<% if bunopen > 199 then %>

<td>
<form action=list.asp method=post>
<input type=hidden name=newbunopen value=<%=100%>>
<input type="hidden" name="id" value="<%=id%>">
<input type=submit value=<%="���|"%>>
</form>   </td>

<% end if %>

<%
if 200 > bunopen and bunopen > 100 then
%>

<td>
<form action=list.asp method=post>
<input type=hidden name=newbunopen value=<%=100%>>
<input type="hidden" name="id" value="<%=id%>">
<input type=submit value=<%="���|"%>>
</form>   </td>

<% end if %>

</tr>
</table>

<table>
<tr><td valign=top>���� �˻�&nbsp</td><td>

<form action=search.asp method=post>
<input type=text name=searchtext size=12 maxlength=10>
<input type=hidden name=id value="<%=id%>">
<input type=submit value=�˻�>
</form>

</td></tr>
</table>

</center>
</body>
</html>
