<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>AddUser</title>
<style type="text/css">
#div_add {
	width: 250px;
	height: 180px; 
	padding: 20px;
	border: 1px solid gray;
	margin-left: 100px;
}

.submit {
	margin-left: 70px;
}
</style>
</head>
<body>
	<div id="div_add">
		<h2>添加用户信息</h2>
		<form action="add" method="post" id="form_add">
			<label>姓名：</label> <input type="text" name="name"> <br /> <label>邮箱：</label>
			<input type="text" name="email"> <br /> <input type="submit"
				value="提交" class="submit"> <input type="reset" value="清除">
		</form>
	</div>
</body>
</html>