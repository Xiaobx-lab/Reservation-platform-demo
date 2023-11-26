<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" name="viewport" content="width=device-width, initial-scale=1.0">
		<title>预约</title>
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
			.content-content{
				margin: 20px 15px;
				font-family: 微软雅黑;
				font-size: 14px;
			}
			.box{
				height: 35px;
				margin-top: 10px;
			}
			.box2{
				height: 40px;
				margin-top: 30px;
				color: white;
				font-size: 20px;
			}
			.content-box{
				float: left;
				margin: 0;
				width: 20%;
			}
			.content-input{
				float: left;
				background-color: white;
				border: 1px solid red;
				border-radius: 5px;
				width: 75%;
				height: 32px;
				margin: -5px 0;
				padding: 2.5px 1px;
			}
			.in{
				width: 100%;
				border: 0;
				outline: none;
			}
			.box-button{
				margin-top: 10px;
				text-align: center;
				width: 100%;
				height: 40px;
				border-radius: 5px;
				background-color: red;
				border: none;
				outline: none;
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
		<script>
			$(document).ready(function(){
			  $("#name").blur(function(){
			    if($("#name").val()==""){
					$("#warn1").show();
				}else{
					$("#warn1").hide();
				}
			  });
			});	
			$(document).ready(function(){
			  $(":radio").blur(function(){
				var val=$('input:radio[name="sex"]:checked').val();
			    if(val!=null){
					$("#warn2").hide()();
				}else{
					$("#warn2").show();
				}
			  });
			});	
			$(document).ready(function(){
			  $("#tel").blur(function(){
			    if($("#tel").val()==""){
					$("#warn3").show();
				}else{
					$("#warn3").hide();
				}
			  });
			});	
			$(document).ready(function(){
			  $("#addres").blur(function(){
			    if($("#addres").val()==""){
					$("#warn4").show();
				}else{
					$("#warn4").hide();
				}
			  });
			});	
		</script>
		<script>
			function sub(){
				var name = document.getElementById("name").value;
				var male = document.getElementById("male");
				var female = document.getElementById("female");
				var tel = document.getElementById("tel").value;
				var zz = /^1\d{10}$/;
				var addres = document.getElementById("addres").value;
				if(name="" || !zz.test(tel) || kg.test(addres) || !male.checked && !female.checked){
					alert("信息尚未完善，请返回完善信息！");
					return false;
				}else{return true;}
			}
		</script>
		<script>
		$(function(){
			$("#submit").click(function(){
				var xhq = new XMLHttpRequest();
				xhq.open("get","${path}/mail.action");
				xhq.send(null);
			})
		})
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
					<span>在线预约</span>
				</div>
				<form  action="${path}/order.action" onsubmit="return sub()" >
					<div class="content-content">
						<div class="box">
							<div class="content-box">
								<span>联系人：</span>
							</div>
							<div class="content-input">
								<input class="in" id="name" type="text" autocomplete="off"name="user"/>
								<div id="warn1" style=" display: none; color: red;margin-top: 6px;">*联系人不可为空</div>
							</div>
						</div>
						<div class="box">
							<div class="content-box">
								<span>性&nbsp;&nbsp;&nbsp;别：</span>
							</div>
							<div style="float: left;">
								男：<input type="radio" id="male" name="sex"value="男"/>
								女：<input type="radio" id="female" name="sex" value="女"/>
								<div id="warn2"style="color: red;display: none;">*性别选项不可为空</div>
							</div>
						</div>
						<div class="box">
							<div class="content-box">
								<span>手机号：</span>
							</div>
							<div class="content-input">
								<input class="in" id="tel" type="tel" autocomplete="off" name="phone" placeholder="请输入11位手机号" />
								<div id="warn3"  style="margin-top: 3px;color: red;display: none;">*请输入正确格式手机号</div>
							</div>						
						</div>
						<div class="box">
							<div class="content-box">
								<span>地址：</span>
							</div>
							<div class="content-input">
								<input class="in" id="addres" type="tel" autocomplete="off" name="address" />
								<div id="warn4" style="margin-top: 3px;color: red;display: none;">*地址不可为空</div>
							</div>						
						</div>
						<div class="box">
							<div class="content-box">
								<span>留言板：</span>
							</div>
							<div >
								<textarea id="textarea" class="content-input" style="height: 45px;outline: none;" autocomplete="off"  placeholder="请输入需要预约的服务" name="note"></textarea>
							</div>						
						</div>
						<div class="box2">
							<input type="submit" class="box-button" id="submit"  value="提&nbsp;&nbsp;&nbsp;交" />
						</div>
						<div class="box2">
							<input type="button" class="box-button" onclick="reset()" value="重&nbsp;&nbsp;&nbsp;置" />
						</div>
					</div>
				</form>
			</div>
			<div class="row" style="height: 50px;"></div>
			<div class="row bottom" data-position="fixed">
				<ul class="na">
					<a href="#"><li class="col-xs-4 li"><img src="img/预约.png" /><br/>预约</li></a>
					<a href="${path}/Service.jsp"><li class="col-xs-4 li"><img src="img/服务.png" /><br/>服务</li></a>
					<a href="${path}/us.jsp"><li class="col-xs-4 li"><img src="img/我们.png" /><br/>我们</li></a>
				</ul>
			</div>
		</div>
		
	</body>
</html>
