package com.ls.controller;

import java.io.UnsupportedEncodingException;
import java.lang.reflect.InvocationTargetException;
import java.util.List;
import java.util.Map;
import java.util.Properties;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
//import org.springframework.mail.javamail.JavaMailSender;

import com.ls.Service.ServiceDemo;
import com.ls.Thread.SendMail;
import com.ls.pojo.Users;

@Controller
public class controllerDemo {
	@Autowired
	private ServiceDemo serviceDemo = null;
	@Autowired
	private JavaMailSender javamailsender ;
	//用户预约
	@RequestMapping("order.action")
	public String insertOrder(HttpServletRequest request,HttpServletResponse response) {
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		response.setContentType("text/html;charset=utf-8");
		//获取预约信息
		Users users = new Users();
		Map<String, String[]> parameterMap = request.getParameterMap();
		//将预约的用户信息封装成对象
		try {
			BeanUtils.populate(users, parameterMap);
		} catch (Exception e) {
			//e.printStackTrace();
		} 
		System.out.println(users);
		//将用户添加到数据库
		serviceDemo.inserUsers(users);
//		SendMail sendMail = new SendMail(users);
//		sendMail.start();
		//发送邮件
//		MimeMessage mimeMessage = javamailsender.createMimeMessage();
//		MimeMessageHelper messageHelper = null;
//		Properties properties = new Properties();
//		String from = null;
//		try {
//			properties.load(this.getClass().getClassLoader().getResourceAsStream("mail.properties")); 
//			 from = properties.get("mail.smtp.username")+"";
//	            messageHelper=new MimeMessageHelper(mimeMessage,true);
//	            messageHelper.setFrom(from);//发件人邮箱
//	            messageHelper.setTo("2812967026@qq.com");//收件人邮箱
//	            messageHelper.setSubject("您有一条新的预约消息请查收！");//邮件的主题
//	            messageHelper.setText("预约人："+users.getUser()+"\n性别："+users.getSex()+"\n联系方式"+users.getPhone()+"\n地址："+users.getAddress()+"\n备注"+users.getNote());
//	            javamailsender.send(mimeMessage);
//	            System.out.println("sucessful!");
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
		return "test";
	}
	
	//后台管理员查看所有预约用户信息
	@RequestMapping("selectAll.action")
	public ModelAndView selectAllUsers() throws Exception{
		//创建一个MoudelAndView对象
		ModelAndView modelAndView = new ModelAndView();
		List<Users> users = serviceDemo.queryAll();
		System.out.println(users.get(0));
		modelAndView.addObject("users",users);
		//指定视图名称
		modelAndView.setViewName("backStage");
		return modelAndView;
	}	
	//跳转到服务页面
	@RequestMapping("jumpService.action")
	public String jumpService() throws Exception{
		return "service";
	}
	//发邮件测试
	@RequestMapping("mail.action")
	public void sendMail() {
		MimeMessage mimeMessage = javamailsender.createMimeMessage();
		MimeMessageHelper messageHelper = null;
		Properties properties = new Properties();
		String from = null;
		try {
			properties.load(this.getClass().getClassLoader().getResourceAsStream("mail.properties")); 
			 from = properties.get("mail.smtp.username")+"";
	            messageHelper=new MimeMessageHelper(mimeMessage,true);
	            messageHelper.setFrom(from);//发件人邮箱
	            messageHelper.setTo("2812967026@qq.com");//收件人邮箱
	            messageHelper.setSubject("Spring的邮件发送");//邮件的主题
	            messageHelper.setText("<p>您有一条新的预约消息！</p><br/>",true);
	            javamailsender.send(mimeMessage);
	            System.out.println("sucessful!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!1");
		} catch (Exception e) {
			e.printStackTrace();
		}
	//	return "test";
	}

}
