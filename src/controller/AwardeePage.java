package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.AwardeePageModel;
import model.bean.AwardeeBean;

@WebServlet("/AwardeePage")
public class AwardeePage extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static int pageNow=1;
    public AwardeePage() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//设置页面编码
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		response.setHeader("Content-Type", "text/html; charset=UTF-8");
		//数据库分页查询出领取到了奖品的人的列表
		//PrintWriter out=response.getWriter();
		
			
		//声明一个集合来放当前页从数据库获取出的对象
		List<AwardeeBean> list=new ArrayList<>();
		//定义分页所需要的变量
		//pageNow=1;//当前页,默认为1--定义在上面为全局变量,这样保证每次pageNow都是更新后的值
		int pageSize=5;//指定每页显示多少条数据
		int pageCount=0;//共多少页，计算得出
		int rowCount=0;//表示共有多少条数据，数据库查询的出
		//点击上一页下一页事件
		String pageTurn=request.getParameter("pageTurn");
		//算出总共有多条记录

		rowCount=AwardeePageModel.getAwardeeCount();
		//算出总共有多少页
		pageCount=rowCount%pageSize==0?rowCount/pageSize:rowCount/pageSize+1;
		//pageCount=(rowCount-1)/pageSize+1;//这个不用判断，效率因该更高
		//得到当前页
		if(request.getParameter("pageNow")!=null&&Integer.parseInt(request.getParameter("pageNow"))<=pageCount){
			pageNow=Integer.parseInt(request.getParameter("pageNow"));
		}
		else{
			
		}
		//上一页
		if(pageTurn!=null&&pageTurn.equals("last")&&pageNow>1){
			pageNow-=1;
		}
		else{
			
		}
		//下一页
		if(pageTurn!=null&&pageTurn.equals("next")&&pageNow<pageCount){
			pageNow+=1;
		}
		else{
			
		}
		//跳转到指定页
		if(request.getParameter("setPageNow")!=null&&Integer.parseInt(request.getParameter("setPageNow"))>0&&Integer.parseInt(request.getParameter("setPageNow"))<=pageCount){
			pageNow=Integer.parseInt(request.getParameter("setPageNow"));
		}
		else{
			
		}
		//把pageNow放在cookie里面，用js来获取，实现当前页高亮
		Cookie pageNowCookie=new Cookie("pageNowCookie",String.valueOf(pageNow));
		pageNowCookie.setMaxAge(-1);
		response.addCookie(pageNowCookie);
		
		list=AwardeePageModel.getPageRegion((pageSize*(pageNow-1)+1),pageSize*pageNow);
		//list=AwardeePageModel.getPageRegion(5*2,5*1);
		request.setAttribute("pageCount",pageCount);
		//out.print(pageCount);
		request.setAttribute("awardeeList",list);
		request.getRequestDispatcher("/jsp/user/prizeList.jsp").forward(request,response);
	}
		

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
