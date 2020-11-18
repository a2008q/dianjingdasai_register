<%--
  Created by IntelliJ IDEA.
  User: yi
  Date: 2019/11/26
  Time: 15:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
  <base href="<%=basePath%>">
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>电竞大赛</title>
  <style>
    .box-1{
      width: 100%;
      height: 600px;
      padding-top: 50px;
    }
    .box-2{
      width: 400px;
      height: 580px;
      background-color: rgb(255, 255, 255);
      margin: 0 auto;
      border:2px solid aqua;
    }
    .box-3{
      width: 400px;
      height: 50px;
      background-color: aqua;

    }
  </style>
</head>
<body>
<div class="box-1">
  <div class="box-2">
    <div class="box-3"><h1 style="text-align: center;font-family: 方正舒体;padding-top: 5px;">电竞大赛报名表</h1></div>
    <form action="RegServlet" method="post">
      <h4 style="float: left;margin-left: 90px;">战队名:</h4><input type="text" name="name" data-optioned placeholder="请输入战队名" style="float: left;margin-top: 19px;padding: 5px;border: none;border-bottom: 2px solid rgb(19, 18, 18);">
      <h4 style="clear: both; float: left;margin-left: 90px;">队长:</h4><input type="text" name="captain" placeholder="请输入队长名" style="float: left;margin-top: 19px;padding: 5px;border: none;border-bottom: 2px solid rgb(19, 18, 18);">
      <h4 style="clear: both; float: left;margin-left: 90px;">队员:</h4><input type="text" name="member1" placeholder="选填" style="float: left;margin-top: 19px;padding: 5px;border: none;border-bottom: 2px solid rgb(19, 18, 18);">
      <h4 style="clear: both; float: left;margin-left: 90px;">队员:</h4><input type="text" name="member2" placeholder="选填" style="float: left;margin-top: 19px;padding: 5px;border: none;border-bottom: 2px solid rgb(19, 18, 18);">
      <h4 style="clear: both; float: left;margin-left: 90px;">队员:</h4><input type="text" name="member3" placeholder="选填" style="float: left;margin-top: 19px;padding: 5px;border: none;border-bottom: 2px solid rgb(19, 18, 18);">
      <h4 style="clear: both; float: left;margin-left: 90px;">队员:</h4><input type="text" name="member4" placeholder="选填" style="float: left;margin-top: 19px;padding: 5px;border: none;border-bottom: 2px solid rgb(19, 18, 18);">
      <h4 style="clear: both; float: left;margin-left: 90px;">联系方式:</h4><input type="text" name="phone" placeholder="qq或手机号" style="float: left;margin-top: 19px;padding: 5px;border: none;border-bottom: 2px solid rgb(19, 18, 18);">
      <input type="submit" style="margin-top: 450px;border:0;background-color: aqua;vertical-align:middle;width: 80px;height: 30px;font-family: 楷体;">
    </form>
  </div>
</div>
</body>
</html>
