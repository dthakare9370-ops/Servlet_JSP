<%@page import="java.util.Arrays"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>App Running</h1> 
	<a href="home">Go To Home </a>
	
	<h2>${name}</h2>
	<h2>${list}</h2>
	
	<%= new Date() %>
	<br>
	<%= Arrays.asList("a",'b','c','d') %>
	
	<br>
	
	<h1>
		<% 
			int a = 10;
			int b = 20;
			int sum = a+b;
			out.println(sum);
			
			for(int i=0;i<10;i++){
				out.println("ram , ");
			}
		%>
	</h1>
	
	<%!
	
		String getName(){
		return "My Name is Harish";
	}
	
	%>
	
	<%= getName() %>
</body>
</html>