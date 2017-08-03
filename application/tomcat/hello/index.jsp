<html>
<head>
<title>Sample Application JSP Page</title>
</head>
<body bgcolor=white>

<table border="0">
<tr>
<td align=center>
<img src="images/tomcat.png">
</td>
<td>
<h1>Sample Application JSP Page</h1>
</td>
</tr>
</table>

<br/>
<%
    // This scriptlet declares and initializes "date"
    System.out.println( "Evaluating date now" );
    java.util.Date date = new java.util.Date();
%>
<strong>Hello!</strong>
<br/><br/>The time is now:
<%
    out.println( date );
    out.println( "<br/>Your machine's address is: " );
    out.println( request.getRemoteHost());
    out.println( "<br/>Your Java Version  is: " );
    out.println( System.getenv( "JAVA_VERSION" ));
    out.println( "<br/>Your Tomcat Version is: " );
    out.println( System.getenv( "TOMCAT_VERSION" ));
    out.println( "<br/>Your Catalina Home is: " );
    out.println( System.getenv( "CATALINA_HOME" ));
%>

</body>
</html>
