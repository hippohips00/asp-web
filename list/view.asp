
<html>
<head> <title></title> </head>
<body><center><br>

<%
textbunho = request.querystring("bunho")
id = request.querystring("id")
%>

<table>
<tr>

<% if len(id) = 0 then %>

<td>
<form action=login.asp method=post>
id <input type=text name=id size=12 maxlength=10>   &nbsp
password <input type=password name=askbibun size=12 maxlength=10>   &nbsp
<input type=submit value=로그인>
</td></form>

<td>
<form action=makeid.asp>
<input type=submit value="id 생성">
</td></form>

<% else %>

<td>id : <%=id%>   &nbsp</td>

<td>
<form action=list.asp>
<input type=submit value=로그아웃>
</td></form>

<td>
<form action=editid.asp method=post>
<input type=hidden name=id value="<%=id%>">
<input type=submit value="id 관리">
</td></form>

<% end if %>

</tr>
<tr><td></td></tr></table>

<%
Set syst = CreateObject("Scripting.FileSystemObject")

textname = Server.MapPath("./text/" & textbunho & ".txt")

set text = syst.OpenTextFile(textname, 1, true)

bibun = text.readline
jemock = text.readline
name = text.readline
daytime = text.readline
count = text.readline
pilename = text.readline
naiwong = text.readall
naiwong = replace(naiwong, chr(13) & chr(10), "<br>")

countplus = count + 1

naiwonglen = len(naiwong)
naiwongsave = mid(naiwong,1,naiwonglen - 4)

Set text = syst.openTextFile(textname, 2)

text.WriteLine(bibun)
text.WriteLine(jemock)
text.WriteLine(name)
text.WriteLine(daytime)
text.WriteLine(countplus)
text.WriteLine(pilename)
text.WriteLine(naiwongsave)
%>

<table>
<tr>
<td></td>
<td align=right width=420>

<form action=list.asp method=post>
<input type=hidden name=id value="<%=id%>">
<input type=submit value=목록>   &nbsp
</td></form>

<td>
<form action=edit.asp method=post>
<input type=hidden name=pilebunho value=<%=textbunho%>>
<input type=hidden name=bibun value=<%=bibun%>>
<input type=hidden name=id value="<%=id%>">
<input type=submit value=변경>
</td></form>

<td>
<form action=delete.asp method=post>
<input type=hidden name=bibun value=<%=bibun%>>
<input type=hidden name=textbunho value=<%=textbunho%>>
<input type=hidden name=pilename value="<%=pilename%>">
<input type=hidden name=id value="<%=id%>">
<input type=submit value=삭제>
</td></form></tr>

<tr>
<td>제 &nbsp 목   &nbsp&nbsp</td>
<td colspan=3 align=left><%=trim(jemock)%></td></tr>

<tr>
<td>글쓴이   &nbsp&nbsp</td>
<td><%=trim(name)%>   &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp

작성일   &nbsp&nbsp

<%=daytime%></td></tr>

<tr>
<td colspan=4><a href="pile/<%=pilename%>"><%=pilename%></a></td></tr>

<tr>
<td valign=top>내 &nbsp 용   &nbsp&nbsp</td>
<td colspan=3 align=left width=400><%=trim(naiwong)%></td></tr></table>

<br>

<% npile = Server.MapPath("./text/" & textbunho & "n.txt") %>

<% if syst.FileExists(npile) then %>

<% nbunho = syst.OpenTextFile(npile, 1, true).Readline %>

<%
for allnbunho = 1 to nbunho step +1

allnpile = Server.MapPath("./text/" & textbunho & "n" & allnbunho & ".txt")
%>

<% if syst.FileExists(allnpile) then %>

<%
Set text = syst.OpenTextFile(allnpile, 1, false)
amho = text.readline
name = text.readline
daytime = text.readline
naiwong = text.readall
naiwong = replace(naiwong, chr(13) & chr(10), "<br>")

text.close
set text=nothing
%>

<% apnpile = Server.MapPath("./text/" & textbunho & "n" & allnbunho -1 & ".txt") %>

<% if syst.FileExists(apnpile) then %>

<table border=0>
<tr>

<td width=90><%=name%><br><%=daytime%></td>

<td width=30></td>

<td width=370 align=left valign=top><%=trim(naiwong)%></td>

<td>
<form action=ncontrol.asp method=post>
<input type=hidden name=bunho value=<%=textbunho%>>
<input type=hidden name=nbunho value=<%=allnbunho%>>
<input type=hidden name=bibun value="<%=amho%>">
<input type=hidden name=id value="<%=id%>">
<input type=submit value=글관리>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
</td></form></tr>

<% addnpile = Server.MapPath("./text/" & textbunho & "n" & allnbunho +1 & ".txt") %>

<% if syst.FileExists(addnpile) then %>

<% else %>

<tr>
<td width=30></td><td></td><td></td>

<td>
<form action=addn.asp method=post>
<input type=hidden name=bunho value=<%=textbunho%>>
<input type=hidden name=nbunho value=<%=allnbunho%>>
<input type=hidden name=id value="<%=id%>">
<input type=submit value=답변코멘트달기>   <br>
</td></form></tr>

<% end if %>

</table>

<% else %>

<table border=0>
<tr>

<td width=90><%=name%><br><%=daytime%></td>

<td width=400 align=left valign=top><%=trim(naiwong)%></td>

<td>
<form action=ncontrol.asp method=post>
<input type=hidden name=bunho value=<%=textbunho%>>
<input type=hidden name=nbunho value=<%=allnbunho%>>
<input type=hidden name=bibun value="<%=amho%>">
<input type=hidden name=id value="<%=id%>">
<input type=submit value=글관리>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
</td></form></tr>

<% addnpile = Server.MapPath("./text/" & textbunho & "n" & allnbunho +1 & ".txt") %>

<% if syst.FileExists(addnpile) then %>

<% else %>

<tr>
<td></td><td></td>

<td>
<form action=addn.asp method=post>
<input type=hidden name=bunho value=<%=textbunho%>>
<input type=hidden name=nbunho value=<%=allnbunho%>>
<input type=hidden name=id value="<%=id%>">
<input type=submit value=답변코멘트달기>   <br>
</td></form></tr>

<% end if %>

</table>

<% end if %>

<% end if %>

<% next %>

<% end if %>

<% if len(id) = 0 then %>

(로그인후에 코멘트쓰기 가능)

<% else %>

<table>

<form action=nsave.asp method=post>

<tr>
<td valign=top align=right>코멘트   &nbsp</td>

<td><textarea rows=5 cols=50 name=텍스트></textarea></td></tr>

<input type=hidden name=textbunho value=<%=textbunho%>>
<input type=hidden name=id value="<%=id%>">
<input type=hidden name=name value="<%=id%>">

<tr>
<td valign=top>비밀번호   &nbsp</td>
<td><input type=password name=패스워드 size=12 maxlength=10>   &nbsp&nbsp&nbsp
<input type=submit value=저장하기>
</td></form></tr></table>

<% end if %>

</body>
</html>
