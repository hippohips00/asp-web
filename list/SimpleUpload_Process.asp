

<%@ LANGUAGE="VBSCRIPT"%> 
<HTML> 
<BODY> 
<% 
    Set uploadform = Server.CreateObject ("DEXT.FileUpload") 
    uploadform.DefaultPath = "C:\TEMP" 
    uploadform.Save 'uploadform("file1").Save ��� �ص� ��. 
    Set uploadform = Nothing 
%> 
</BODY> 
</HTML> 