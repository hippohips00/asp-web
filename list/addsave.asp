
<html>
<head> <title></title> </head>
<body><center><br>

<%
Set uploadform = Server.CreateObject("DEXT.FileUpload")

uploadform.DefaultPath = server.mappath("./pile/")

id = uploadform("id")
pilename = uploadform("pile").filename
%>

<% if right(pilename,3) = "zip" or right(pilename,3) = "ZIP" or right(pilename,3) = "jpg" or right(pilename,3) = "JPG" or right(pilename,3) = "gif" or right(pilename,3) = "GIF" or right(pilename,3) = "bmp" or right(pilename,3) = "BMP" or right(pilename,3) = "tif" or right(pilename,3) = "TIF" or right(pilename,3) = "png" or right(pilename,3) = "PNG" or right(pilename,3) = "wav" or right(pilename,3) = "WAV" or right(pilename,3) = "wma" or right(pilename,3) = "WMA" or right(pilename,3) = "mp3" or right(pilename,3) = "MP3" or right(pilename,3) = "avi" or right(pilename,3) = "AVI" or right(pilename,3) = "wmv" or right(pilename,3) = "WMV" or right(pilename,3) = "mpg" or right(pilename,3) = "MPG" or right(pilename,3) = "txt" or right(pilename,3) = "TXT" or right(pilename,3) = "rtf" or right(pilename,3) = "RTF" or right(pilename,3) = "ppt" or right(pilename,3) = "PPT" or right(pilename,3) = "xls" or right(pilename,3) = "XLS" or right(pilename,3) = "" then %>

<%
allpilename = uploadform.DefaultPath & "\" & pilename

uploadedpile = uploadform("pile").SaveAs(allpilename, False)

pilename = uploadform("pile").lastsavedfilename

bunho = uploadform("bunho")

jemock = uploadform("jemock")
jemock = "�� " & jemock
jemock = replace(jemock,"<","��")
jemock = replace(jemock,">","��")

naiwong = uploadform("�ؽ�Ʈ")
naiwong = replace(naiwong,"<","��")
naiwong = replace(naiwong,">","��")

bibun = uploadform("�н�����")
for a=1 to Len(bibun)
password = password & Hex((Asc(Mid(bibun,a,1))*Len(bibun)))
next
bibun = password
%>

<% addbunho = bunho -1 %>

<%
Set syst = CreateObject("Scripting.FileSystemObject")

set addpile = syst.CreateTextFile(Server.MapPath("./text/" & addbunho & ".txt"), true)

addpile.WriteLine(bibun)
addpile.WriteLine(jemock)
addpile.WriteLine(id)
addpile.WriteLine(date)

count = 0
addpile.WriteLine(count)

addpile.WriteLine(pilename)
addpile.WriteLine(naiwong)
addpile.Close

Set syst = nothing
%>

�亯���� ����Ǿ����ϴ�.   &nbsp

<form action=list.asp method=post>
<input type=hidden name=id value="<%=id%>">
<input type=submit value=���ư���>
</form>

<% else %>

���ε��Ͻ÷��� ÷������ ������ zip ���Ϸ� ������ ���ε尡 �����մϴ�.   <br><br>

<form action=list.asp method=post>
<input type=hidden name=id value="<%=id%>">
<input type=submit value=���>
</form>

<% end if %>

</body>
</html>
