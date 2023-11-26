<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" name="viewport" content="width=device-width, initial-scale=1.0">
		<title>后台</title>
		<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
		<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
		<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
	.content{
		font-size: 15px;
		margin-top: 50px;
	}
	.co-table{
		margin-top: 20px;
		border: #DCDCDC 2px solid;
		border-radius: 5px;
	}
</style>
	</head>
	<body>
		<div class="container">
			<div class="row content">
				<div>
					<ul class="nav nav-tabs">
						<li class="active"><a href="#"><b>预约用户详情</b></a></li>
					</ul>
				</div>
				<div class="co-table">
					<table class="table table-hover">
						<thead>
							<tr style="background-color: #DCDCDC;">
								<th>姓名</th>
								<th>性别</th>
								<th>手机号</th>
								<th>地址</th>
								<th>备注</th>
							</tr>
						</thead>
						<tbody>
						<c:forEach var ="user" items="${users}">
							<tr>
								<td>${user.user}</td>
								<td>${user.sex}</td>
								<td>${user.phone}</td>
								<td>${user.address}</td>
								<td>${user.note}</td>
							</tr>
						</c:forEach>														
						</tbody>
					</table>
				</div>			
			</div>
		</div>
	
	</body>
</html>
