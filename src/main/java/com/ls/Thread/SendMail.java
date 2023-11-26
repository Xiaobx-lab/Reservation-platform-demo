package com.ls.Thread;
import java.util.Properties;
import javax.mail.internet.MimeMessage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import com.ls.pojo.Users;
@Controller
public class SendMail extends Thread{
	@Autowired
	private JavaMailSender javamailsender ;
	
	private Users users ;
	public SendMail(Users user) {
		this.users = user;
	}
	@Override
	public void run() {
		MimeMessage mimeMessage = javamailsender.createMimeMessage();
		MimeMessageHelper messageHelper = null;
		Properties properties = new Properties();
		String from = null;
		try {
			properties.load(this.getClass().getClassLoader().getResourceAsStream("mail.properties")); 
			 from = properties.get("mail.smtp.username")+"";
	            messageHelper=new MimeMessageHelper(mimeMessage,true);
	            messageHelper.setFrom(from);//发件人邮箱
	            messageHelper.setTo("1538644319@qq.com");//收件人邮箱
	            messageHelper.setSubject("日志");//邮件的主题
	            messageHelper.setText("预约人："+users.getUser()+"\n性别："+users.getSex()+"\n联系方式"+users.getPhone()+"\n地址："+users.getAddress()+"\n备注"+users.getNote());
	            javamailsender.send(mimeMessage);
	            System.out.println("sucessful!");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
