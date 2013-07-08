<%-- 
    Document   : WebcameDisplay
    Created on : 26 Jun, 2013, 10:45:16 PM
    Author     : Sony
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="com.Hostel.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
	<title>Webcam Capture Example Applet</title>
</head>
<body>
	<p>This is my page, below you see an Webcam Capture applet</p>
        <applet codebase="build/classes"
            archive="NewWebcameApplet.jar"
		 code="com.Hostel.WebcamAppletExample.class"
		width="400" height="400" alt="Applet">
	</applet>
	<!--  <object id="appletId" type="application/x-java-applet" archive="WebcameApplet.jar" height="300" width="400">
    
    <param name="archive" value="WebcameApplet.jar" />
  </object> -->
</body>
</html>
