
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

bibun = uploadform("패스워드")
for a=1 to Len(bibun)
password = password & Hex((Asc(Mid(bibun,a,1))*Len(bibun)))
next
bibun = password

jemock = uploadform("jemock")
jemock = replace(jemock,"<","〈")
jemock = replace(jemock,">","〉")

naiwong = uploadform("텍스트")
naiwong = replace(naiwong,"<","〈")
naiwong = replace(naiwong,">","〉")
%>

<%
Set syst = CreateObject("Scripting.FileSystemObject")

bunhopile = Server.MapPath("./" & "번호.txt")
bunho = syst.OpenTextFile(bunhopile, 1, true).ReadAll
saibunho = bunho + 10
syst.opentextfile(bunhopile,2).Write(saibunho)
%>

<%
Set saipile = syst.CreateTextFile(Server.MapPath("./text/" & saibunho & ".txt"), true)
saipile.WriteLine(bibun)
saipile.WriteLine(jemock)
saipile.WriteLine(id)
saipile.WriteLine(date)

count = 0
saipile.WriteLine(count)

saipile.WriteLine(pilename)
saipile.WriteLine(naiwong)
saipile.Close

Set syst = nothing
%>

저장되었습니다.   &nbsp

<form action=list.asp method=post>
<input type=hidden name=id value="<%=id%>">
<input type=submit value=돌아가기>
</form>

<% else %>

업로드하시려던 첨부파일 종류는 zip 파일로 변경후 업로드가 가능합니다.   <br><br>

<form action=list.asp method=post>
<input type=hidden name=id value="<%=id%>">
<input type=submit value=목록>
</form>

<% end if %>

</body>
</html>
