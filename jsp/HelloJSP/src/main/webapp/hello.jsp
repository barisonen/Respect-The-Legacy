<%@page import="com.practice.jsp.Utils"%>
<html>
<body>
	<jsp:include page="header.html" />
	<h3>Hello JSP</h3>
	<hr />
	2 + 2 is
	<%=2 + 2%>
	<hr />
	<%
	for (int i = 1; i <= 5; i++) {
		out.println(i);
	}
	%>
	<hr />
	2.5 * 5 is
	<%=multiplyWith(2.5, 5)%>
	<hr />
	2.5 / 2 is
	<%=Utils.divideWith(2.5, 2)%>
	<hr />
	Request user agent:
	<%=request.getHeader("User-Agent")%>
	<hr />
	Request language
	<%=request.getLocale()%>
	<hr />
	<jsp:include page="form.html" />
</body>
<jsp:include page="footer.jsp" />
<%!double multiplyWith(double i, double y) {
		return i * y;
	}%>
</html>