<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script type="text/javascript" src="js/jquery-3.1.0.min.js">
$(function(){
	
})
</script>
<style type="text/css">
#div_update {
	width: 250px;
	height: 180px; 
	border : 1px solid gray;
	padding: 20px;
	margin-left: 100px;
}

.submit {
	margin-left: 70px;
}
</style>
</head>
<body>
	<div id="div_update">
		<h2>修改用户信息</h2>
		<form action="update" method="post" id="form_update">
			<label>姓名：</label>
			<input type="text" name="name" value="${user1.name} "> <br /> 
			<label>邮箱：</label>
			<input type="text" name="email" value="${user1.email }"> <br /> 
			<input type="hidden" name="id" value="${user1.id }"> <br /> 
			
			<input type="submit" value="提交" class="submit" name="submit"> 
			<input type="reset" value="清除">
		</form>
	</div>
</body>
</html>