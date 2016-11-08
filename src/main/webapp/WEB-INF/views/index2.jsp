<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" import="com.bonc.tender.entity.*,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String basePath = request.getContextPath();
	String MethodURL = basePath + "/list.action?pageNumber=";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-3.1.0.min.js"></script>
<script>
	$(function() {

		$("input[name='delete']").click(function() {
			$.ajax({
				type : "post",
				url : "delete",
				data : {
					"id" : $(this).parent().prev().prev().prev().text()
				}

			});
			$(this).parent().parent().remove();
		});
		$("input[name = 'update']").click(function() {

			var idValue = $(this).parent().prev().prev().prev().text();
			$("#id").val(idValue);

		});

	})
</script>

<style>
body {
	text-align: center;
}

div, ul, li {
	margin: 0px;
	padding: 0px;
}

li {
	list-style: none;
	float: left;
	width: 150px;
	height: 24px;
	line-height: 24px;
	text-align: center;
	border: solid 1px black;
}

#cart {
	width: 640px;
	text-align: center;
}

#form_create {
	width: 224px;
}

#form_create input {
	
}

.page {
	width: 150px;
	margin-left: 210px;
}

#select {
	width: 500px;
}

h4 {
	width: 600px;
}
</style>
</head>
<body>
	<div id="cart">
		<h2>显示用户信息</h2>
		<form action="show">
		<input type="submit" value="显示所有信息">
	</form>
		<ul>
			<li>Id号</li>
			<li>姓名</li>
			<li>邮箱</li>
			<li>操作</li>
		</ul>

		<c:forEach items="${user.content}" var="userList">

			<ul>
				<li>${userList.id}</li>
				<li>${userList.name}</li>
				<li>${userList.email}</li>
				<li><input type="button" value="删除" name="delete"
					class="delete"> <input type="submit" value="修改信息"
					name="update" class="update" form="form_update"></li>
			</ul>
		</c:forEach>
	</div>
	<div class="page">
		<a href="show?page=${prePage }&str=${str}&choice=${choice}"> <input class="btn1" type="button"
			value="上一页">
		</a> <a href="show?page=${nextPage }&str=${str}&choice=${choice}"> <input class="btn1"
			type="button" value="下一页">
		</a>

	</div>
	<form id="form_update" name="form_update" action="updateUser">
		<input type="hidden" name="id" id="id">
	</form>
	<h4>
		<a href="addUser">点击这里，添加更多用户</a>
	</h4>
	<h4>
		<a href="selectUser">点击这里，按条件查找</a>
	</h4>
</body>
</html>