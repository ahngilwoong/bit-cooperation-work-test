<%--
  Created by IntelliJ IDEA.
  User: ahngilung
  Date: 2022/11/29
  Time: 3:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<title>CSS</title>
<style>
  table {
    width: 100%;
    border: 1px solid #444444;
    border-collapse: collapse;
  }
  th, td {
    background-color: aquamarine;
    border: 1px solid #444444;
    padding: 10px;
  }
</style>
<html>
<head>
  <title>$Title$</title>
</head>
<body>
<table>

  <tr><th>A 기능</th><th>B 기능</th><th>C 기능</th>

  <tr>
    <td> <a href="/first-view.jsp"><h2>A 기능 링크</h2></a></td>
    <td> <a href="/second-view.jsp"><h2>B 링크 기능</h2></a></td>
    <td><a href="/third-view.jsp"><h2>C 기능 링크</h2></a></td>
  </tr>

  <a href="/insert.jsp"><h2>회원 추가</h2></a>
</table>
</body>
</html>

