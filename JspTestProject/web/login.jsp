<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("EUC-KR");

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");

	MongoClient mongo = new MongoClient("localhost", 27017);

	DB db = mongo.getDB("db01");

	DBCollection table = db.getCollection("user");
		
	BasicDBObject query = new BasicDBObject("id", id);
	DBCursor cursor = table.find(query);   
 	
	cursor.hasNext();
	Document doc = cursor.next();
	
	if(pw.equals(doc.get("pw"))) {
		System.out.println("로그인 성공");
		response.sendRedirect("index.jsp");
	}else {
		System.out.println("로그인 실패");
	}
%>
</body>
</html>