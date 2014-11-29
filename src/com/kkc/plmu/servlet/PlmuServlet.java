package com.kkc.plmu.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class PlmuServlet
 */
@WebServlet("/plmu")
public class PlmuServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PlmuServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String pg = request.getParameter("pg");
		String actionUrl = "";
		request.setCharacterEncoding("utf-8");
		try {
			if (pg == null || pg.equals("index")) {
				actionUrl = "index.jsp";
				request.setAttribute("current", "index");
			} else if (pg.equals("play")) {
				String inst = request.getParameter("inst");
				if(inst == null || inst.equals("piano")){
					request.setAttribute("inst", "piano");
				} else {
					request.setAttribute("inst", "piano");
				}
				actionUrl = "play.jsp";
				request.setAttribute("current", "play");
			}
		}catch (Exception e) {
			actionUrl = "error.jsp";
			request.setAttribute("errormsg", e.toString());
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(actionUrl);
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
