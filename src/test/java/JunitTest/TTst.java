package JunitTest;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
//import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.context.ApplicationContext;
//import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.test.context.ContextConfiguration;
//import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.alibaba.fastjson.JSON;
import com.lwyykj.core.bean.user.User;
import com.lwyykj.user.service.UserService;
//import com.lwyykj.user.service.UserService;

@RunWith(SpringJUnit4ClassRunner.class) // 表示继承了SpringJUnit4ClassRunner类
@ContextConfiguration(locations = { "classpath:config/springmvc-weixin.xml" })
public class TTst {
	private static Logger logger = Logger.getLogger(TTst.class);
	//private ApplicationContext ac = null;
	@Resource
	private UserService userService = null;

	//@Before
//	public void before() {
//		ac = new ClassPathXmlApplicationContext("applicationContext.xml");
//		userService = (UserService) ac.getBean("userService");
//	}

	@Test
	public void test1() {
		User user = userService.findById(1);
		// System.out.println(user.getUserName());
		// logger.info("值："+user.getUserName());
		logger.info(JSON.toJSONString(user));
	}
}