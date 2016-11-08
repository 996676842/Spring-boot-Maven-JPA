<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="select">
		<h2>根据条件查询用户信息</h2>
		<form name="form_select" id="form_select" method="get"
			action="show">
			<select name="choice" id="choice">
				<option value="name">姓名</option>
				<option value="email">邮箱</option>
			</select> <input type="text" name="str" id="str">
			 <input type="submit" value="提交" id="com1">
		</form>
	</div>
</body>
</html>