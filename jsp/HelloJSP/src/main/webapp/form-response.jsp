The person is confirmed: 
<hr/>
<%
	String name = request.getParameter("name");
	if (name != null && !name.isEmpty()) {
		out.println("Name: " + name);
		Cookie cookie = new Cookie("name", name);
		cookie.setMaxAge(60);
		response.addCookie(cookie);
	} else {
		Cookie[] cookies = request.getCookies();
		boolean nameCookieFound = false;
		if (cookies != null) {
			for (Cookie cookie : cookies) {
				if ("name".equals(cookie.getName())) {
					out.println("Name: " + cookie.getValue() + " (yes we do remembered) (but this will last for 1 min)");
					nameCookieFound = true;
					break;
				}
			}
		}
		
		if (!nameCookieFound) {
			out.println("Name: no name entered and no previous name data found");
		}
	}
%>
<hr/>
Age: ${param.age}
<hr/>
Country: ${param.country}
<hr/>
Language preference: ${param.languagePreference}
<hr/>
Preferred skills: 
<ul>
	<%
		String[] preferrededSkills = request.getParameterValues("preferredSkills");
		if (preferrededSkills != null) {
			for (String preferredSkill : preferrededSkills) {
				out.println("<li>" + preferredSkill + "</li>");	
			}
		}
	%>
</ul>