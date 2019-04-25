package controller;

import java.io.IOException;
//import java.io.PrintWriter;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.CheckManager;
import model.bean.ManagerBean;

@WebServlet("/CheckLog")
public class CheckLog extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public CheckLog() {
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
				if(checkCode.equalsIgnoreCase((String) session.getAttribute("checkCode"))){//checkCode
					ManagerBean managerBean=new ManagerBean();
					managerBean.setName(name);
					managerBean.setPassword(password);
					managerBean.setOnLineStatus(0);
					//out.println(name+":"+password+":"+checkCode+":--"+(String) session.getAttribute("checkCode"));
					//RequestDispatcher dispatcher=request.getRequestDispatcher("/jsp/manager/login.jsp");
					//dispatcher.forward(request,response);
					if(CheckManager.checkManager(managerBean)==true){
						//登录成功后将登录名字设置为session，后期做判断********session、cookie生命周期与标识符是否区分大小写
						session.setAttribute("managername",name);
						response.sendRedirect("/UserAction/jsp/manager/data/index.jsp");
						//request.getRequestDispatcher("/jsp/manager/data/index.jsp").forward(request,response);
						return;
					}
					else{
						//跳转到错误页面
						//System.out.println("");
					}
				}
				else{
					out.println("登录失败,请检查！(可能是格式或者验证码错误，<a href='/UserAction/jsp/manager/login.jsp'>点击返回从新登录！</a>)");
				}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
