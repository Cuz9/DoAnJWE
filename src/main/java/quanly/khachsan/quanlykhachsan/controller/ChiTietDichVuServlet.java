package quanly.khachsan.quanlykhachsan.controller;

import quanly.khachsan.quanlykhachsan.model.ChiTietDichVu;
import quanly.khachsan.quanlykhachsan.service.ChiTietDichVuService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet("/chitietdichvu")
public class ChiTietDichVuServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ChiTietDichVuService chiTietDichVuService = new ChiTietDichVuService();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		if (session == null || session.getAttribute("adminLoggedIn") == null) {
			response.sendRedirect(request.getContextPath() + "/admin");
			return;
		}
		String action = request.getParameter("action");
		if (action == null) {
			action = "";
		}
		switch (action) {
		default:
			displayAllChiTietDichVu(request, response);
			break;
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		if (session == null || session.getAttribute("adminLoggedIn") == null) {
			response.sendRedirect(request.getContextPath() + "/admin");
			return;
		}
		doGet(request, response);
	}

	private void displayAllChiTietDichVu(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<ChiTietDichVu> chiTietDichVuList = chiTietDichVuService.getAllChiTietDichVu();
		request.setAttribute("chiTietDichVuList", chiTietDichVuList);
		request.getRequestDispatcher("admin/chitietdichvu/listchitietdichvu.jsp").forward(request, response);
	}
}
