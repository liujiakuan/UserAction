package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.CheckManager;
import model.bean.ManagerBean;

@WebServlet("/CheckReg")
public class CheckReg extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
    public CheckReg() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		HttpSession session=request.getSession();
		//处理中文//.getBytes("ISO8859-1"),"UTF-8"
		//用户名
		String name=new String(request.getParameter("userName").getBytes("ISO8859-1"),"UTF-8");
		//密码
		String password=request.getParameter("password");
		//验证码
		String checkCode=request.getParameter("checkCode").toString();
		if(checkCode.equalsIgnoreCase((String) session.getAttribute("checkCode"))){
			ManagerBean managerBean=new ManagerBean();
			managerBean.setName(name);
			managerBean.setPassword(password);
			managerBean.setOnLineStatus(0);
			CheckManager.addManager(managerBean);
			//out.println(name+":"+password+":"+checkCode+":--"+(String) session.getAttribute("checkCode"));
			//RequestDispatcher dispatcher=request.getRequestDispatcher("/jsp/manager/login.jsp");
			//dispatcher.forward(request,response);
			//重定向不能设置对象在各个servlet之间访问，也不能设置参数信息，而且只需在服务器请求一次
			//request.getRequestDispatcher("/jsp/manager/login.jsp").forward(request,response);
			response.sendRedirect("/UserAction/jsp/manager/login.jsp");
			return;
		}
		else{
			out.println("注册失败,请检查！(可能是格式或者验证码错误，<a href='/UserAction/jsp/manager/register.jsp'>点击返回从新注册！</a>)");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);//----------------------------下次用这个在做测试
	}

}
