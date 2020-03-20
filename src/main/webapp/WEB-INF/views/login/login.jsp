<%--
  Created by IntelliJ IDEA.
  User: tinle
  Date: 3/9/20
  Time: 12:04 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String contextPath = request.getContextPath(); %>

<!DOCTYPE html>
<html lang="en">
<head>
	<title>Bootstrap Example</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>

<div class="container">
	<div class="row mt-5">
		<div class="col-md-5 m-auto mt-5">
			<h3 class="text-center">ĐĂNG NHẬP HỆ THỐNG</h3>
			<div class="p-4 border mt-4">
				<form method="post" action="<%=contextPath%>/login">
					<div class="form-group">
						<label>Email</label>
<%--						<input type="email" class="form-control" name="email">--%>
						<input type="text" class="form-control" name="email" value="${email}">
						<label class="text text-danger">${message}</label>
					</div>
					<div class="form-group">
						<label>Mật khẩu</label>
						<input type="password" class="form-control" name="password">
						<label class="text text-danger">${incorrect}</label>
					</div>
					<button type="submit" class="btn btn-primary">Đăng nhập</button>
				</form>
			</div>
		</div>
	</div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
