<%--
  Created by IntelliJ IDEA.
  User: yi
  Date: 2019/11/26
  Time: 21:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>队伍信息</h1>
<jsp:useBean id="regTeam" class="entity.Teams" scope="session"/>
<table width="600" cellpadding="0" cellspacing="0" border="1">
    <tr>
        <td class="title">队名：</td>
        <td class="content">&nbsp;<jsp:getProperty name="regTeam"  property="name"/></td>
    </tr>
    <tr>
        <td class="title">队长：</td>
        <td class="content">&nbsp;<jsp:getProperty name="regTeam"  property="captain"/></td>
    </tr>
    <tr>
        <td class="title">队员</td>
        <td class="content">&nbsp;<jsp:getProperty name="regTeam"  property="member1"/></td>
        <td class="content">&nbsp;<jsp:getProperty name="regTeam"  property="member2"/></td>
        <td class="content">&nbsp;<jsp:getProperty name="regTeam"  property="member3"/></td>
        <td class="content">&nbsp;<jsp:getProperty name="regTeam"  property="member4"/></td>
    </tr>
</table>
</body>
</html>
