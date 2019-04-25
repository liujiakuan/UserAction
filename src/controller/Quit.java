package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Quit")
public class Quit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Quit() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		//点击退出后把管理员登录的名字之前保存为session做判断的，现在删除掉
		HttpSession session=request.getSession();
		session.removeAttribute("managername");
		//清除掉指定信息之后跳转到指定页面
		request.getRequestDispatcher("/jsp/common/quit.jsp").forward(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
