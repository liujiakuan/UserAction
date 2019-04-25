package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.PrizeModel;

@WebServlet("/GetPrizeController")
public class GetPrizeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public GetPrizeController() {
        super();
    }
  //原本以为这里在获取奖品资源的时候回出现事务问题打算用上面的方法来使线程同步访问
  //结果不需要用上面的方法来保证 线程同步：servlet默认是单线程访问，表示同一个时刻只能有一个线程访问它的service方法
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		PrizeModel.setPrizeCount();//这里设置奖品数量减一
		String prizeName=PrizeModel.getPrize();//获取奖品的名称
		int prizeCount=PrizeModel.getPrizeCount();//获取当前剩余奖品的数量
		HttpSession session=request.getSession();
		String userName=(String) session.getAttribute("username");
		request.setAttribute("prizeCount",prizeCount);
		request.setAttribute("prizeName",prizeName);
		PrizeModel.saveToAwardee(userName,prizeName);//点击领取奖励之后把领取信息插入到领取奖励列表awardee
		request.getRequestDispatcher("/jsp/user/showPrize.jsp").forward(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
