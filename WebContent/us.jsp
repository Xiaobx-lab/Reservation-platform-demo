<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" name="viewport" content="width=device-width, initial-scale=1.0">
		<title>联系我们</title>
		<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">  
		<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
		<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<style type="text/css">
			.header{
				background: red;
				padding: 0px;
				color: white;
			}
			.header-title{
				font-size: 20px;
				font-family:  Microsoft Yahei;
				text-align: center;
				display: block;
				margin: 0 30%;
				padding: .7em 0;
			}
			.content-title{
				background-color: #FDEEF0;
				border-left:10px solid red;
				line-height: 40px;
				margin-top: 10px;
				padding-left: 10px;
			}
			.bottom{
				width: 100%;
				height: 55px;
				position: fixed;
				bottom: 0px;
			}
			.na{
				margin-bottom: 0;
				padding: 0;
				text-align: center;
				list-style: none;
				height: 55px;
				background-color: red;
			}
			.li{
				padding-top: 13px;
				height: 55px;
			}
			.li:hover{
				background-color: #F25165;
			}
			a{
				color: white
			}
			a:hover{
				text-decoration: none;
				color: white;
			}
			img{
				margin-top: -20px;
				width: 30px;
			}
		</style>
		<script type="text/x-jquery-tmpl">
			function reset(){
				$(".in").val("");
				$("#textarea").val("")
			}
		</script>
	</head>
	<body>
		<div class="container">
			<div class="row">
				<div class="header col-xs-12">
					<h1 class="header-title">衣然爱你</h1>
				</div>
			</div>
			<div class="row">
				<div class="content-title">
					<span>关于我们</span>
				</div>
			</div>
			<div class="row" style="text-align: center;margin-top: 20px;"><img src="img/ma.jpg" style="width: 60%;height:80%;"><br>
			电话：13099585088
			</div>
			<div class="row" style="height: 50px;"></div>
			<div class="row bottom">
				<ul class="na">
					<a href="${path}/yuyue1.jsp"><li class="col-xs-4 li"><img src="img/预约.png" /><br/>预约</li></a>
					<a href="${path}/Service.jsp"><li class="col-xs-4 li"><img src="img/服务.png" /><br/>服务</li></a>
					<a href="#"><li class="col-xs-4 li"><img src="img/我们.png" /><br/>我们</li></a>
				</ul>		
			</div>
		</div>
		
	</body>
</html>
