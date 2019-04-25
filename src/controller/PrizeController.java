package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.PrizeModel;

@WebServlet("/PrizeController")
public class PrizeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public PrizeController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		int prizeCount=PrizeModel.getPrizeCount();
		request.setAttribute("prizeCount",prizeCount);
		//PrizeModel.setPrizeCount();
		request.getRequestDispatcher("/jsp/user/getPrize.jsp").forward(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
