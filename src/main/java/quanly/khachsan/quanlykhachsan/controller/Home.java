package quanly.khachsan.quanlykhachsan.controller;

import quanly.khachsan.quanlykhachsan.model.Phong;
import quanly.khachsan.quanlykhachsan.service.PhongService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Servlet implementation class home
 */
@WebServlet({"/home", "/"})
public class Home extends HttpServlet {
	private static final long serialVersionUID = 1L;

    private PhongService phongService = new PhongService();
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
        List<Phong> listPhongs = phongService.getAllPhongs();
        request.setAttribute("listPhongs", listPhongs);
		request.getRequestDispatcher("user/home.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
