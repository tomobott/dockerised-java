<html>
  <%@ page import="java.net.*" %> 
<body>
  <h2>Hello World!</h2>
  <%
    String hostname, serverAddress;
    hostname = "error";
    serverAddress = "error";
    try {
      InetAddress inetAddress;
      inetAddress = InetAddress.getLocalHost();
      hostname = inetAddress.getHostName();
      serverAddress = inetAddress.getHostAddress();
    } catch (UnknownHostException e) {
      e.printStackTrace();
    }
  %>
  <ul>
    <li>Pod IP address: <%=serverAddress %></li>
    <li>Pod hostname:   <%=hostname %></li>
  </ul>
</body>
</html>
