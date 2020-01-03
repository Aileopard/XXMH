package edu.ujs.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.ujs.beans.Student;
import edu.ujs.service.StudentService;

/**
 * 控制器类（处理器Handler）
 * 该注解在使用时不需要再实现Controller接口，只需要将@Controller注解加入到控制器类上
 * 然后通过Spring的扫描机制找到标注了该注解的控制器即可
 * @author leopard
 *还用到了注解形式为@RequestMapping的注解，该注解类型用于映射一个请求或一个方法。
 *1.当标注在一个方法时，该方法将成为一个请求处理方法，它会在程序接收到对应的URL请求时被调用。
 *2.当标注在一个类上，该类中的方法都将映射为相对于类级别的请求，表示该控制器所处理的所有请求都
 *被映射到value属性值所指定的路径下。
 */

@Controller
public class LoginController {
	
	@Autowired
	private StudentService studentService;
	
	@RequestMapping("/login")
	public String login(String id,String password,Model model,HttpSession session){
		/*因为已经在1.js里面判断过id和password的格式的正确性了	
		 * 所以在controller里只需要判断用户身份为管理员/老师/学生的？
		 * 同时在要判断数据库中是否有该条记录
		 */
		try {
			//取id的第一位数字，由此判断用户身份
			int firstNumber=Integer.parseInt(id.substring(0,1));
			System.out.println(id);
			//id第一位为1表示管理员，2表示老师，3表示学生
			switch (firstNumber) {
				case 1:
				{
					//管理员页面待完善。。。。。。
					return "管理员页面。。。";
				}
					
				case 2:
				{
					//老师页面待完善。。。。。。
					return "老师页面。。。";
				}
			
				case 3:
				{
					//学生页面
					System.out.println("学生页面");
					Student student=studentService.selectStudent(id,password);
					System.out.println("bbbbb");
					if(student!=null)
					{
						//将学生对象添加到session
						session.setAttribute("Student_Session", student);
						System.out.println("StudentsPage");
						//跳转到学生页面
						return "StudentsPage";
					}
				}

				default:
				{
					System.out.println("登录错误");
					model.addAttribute("msg","没有该用户");
					//如果用户和密码格式正确但是却没有该用户
					return "login";
				}
			}
		} catch (Exception e) {
			System.out.println("错误");
			model.addAttribute("errorMsg","没有该用户");
			//如果用户和密码格式正确但是却没有该用户
			return "login";
		}
	}

}
