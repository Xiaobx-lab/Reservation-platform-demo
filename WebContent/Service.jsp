<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" name="viewport" content="width=device-width, initial-scale=1.0">
		<title>服务</title>
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
				border: 1px solid red;
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
					<h1 class="header-title">服务</h1>
				</div>
			</div>
			<div class="row">
				<div class="content-title">
					<span>收购范围</span>
				</div>
			</div>
			<div class="row">		
				<table class="table">
				  <caption style="text-align: center;color: black;"><b>高价回收各种旧衣服、鞋、包包、纺织品。</b></caption>
				  <tbody>
				    <tr class="info">
				      <td>衣裤类：长短外套、牛仔外套、风衣、西装、夹克、皮衣、皮草、棉衣、羽绒服、T恤、衬衫、雪绒衫、针织衫、毛衣、卫衣、马甲、背心、吊带、羊绒衫、内衣、内裤、长裙、休闲裤、牛仔裤、哈伦裤、短裤、喇叭裤</td>
				    <tr class="success">
				      <td>鞋子类：运动鞋、皮鞋、休闲鞋、平底鞋、童鞋、凉鞋、拖鞋</td>
				    <tr class="warning">
				      <td>皮包类：双肩包、电脑包、皮包、钱包、书包</td>
				    <tr class="danger">
				      <td>床上用品：床单、被套、褥子、被子、毛毯、毛绒玩具</td>
				  </tbody>
				</table>
			</div>
			<div class="row" style="color: red;">
				备注：破损、掉皮、发黄、脏污、严重褪色、老花衣、白色帆布鞋、高跟鞋、内增高鞋、加绒棉鞋、布鞋、保暖内衣、超短裙、超短裤不收
			</div>
			<div class="row" style="height: 50px;"></div>
			<div class="row bottom">
				<ul class="na">
					<a href="${path}/yuyue1.jsp"><li class="col-xs-4 li"><img src="img/预约.png" /><br/>预约</li></a>
					<a href="#"><li class="col-xs-4 li"><img src="img/服务.png" /><br/>服务</li></a>
					<a href="${path}/us.jsp"><li class="col-xs-4 li"><img src="img/我们.png" /><br/>我们</li></a>
				</ul>
			</div>
		</div>
		
	</body>
</html>
