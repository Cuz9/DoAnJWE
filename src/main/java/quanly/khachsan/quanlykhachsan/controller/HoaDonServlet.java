package quanly.khachsan.quanlykhachsan.controller;

import quanly.khachsan.quanlykhachsan.model.ChiTietHoaDon;
import quanly.khachsan.quanlykhachsan.model.HoaDon;
import quanly.khachsan.quanlykhachsan.service.HoaDonService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.sql.Date;
import java.util.List;

@WebServlet("/hoadon")
public class HoaDonServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private HoaDonService hoaDonService = new HoaDonService();

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
		case "create":
			showCreateForm(request, response);
			break;
		case "detail":
			showHoaDonDetail(request, response);
			break;
		default:
			displayAllHoaDon(request, response);
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
		String action = request.getParameter("action");
		if (action == null) {
			action = "";
		}
		switch (action) {
		case "create":
			createHoaDon(request, response);
			break;
		case "detail":
			showHoaDonDetail(request, response);
			break;
		default:
			displayAllHoaDon(request, response);
			break;
		}
	}

	private void showHoaDonDetail(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String maHoaDon = request.getParameter("maHoaDon");
		ChiTietHoaDon chiTietHoaDon = hoaDonService.getChiTietHoaDon(maHoaDon);
		if (chiTietHoaDon != null) {
			request.setAttribute("chiTietHoaDon", chiTietHoaDon);
			request.getRequestDispatcher("admin/hoadon/detail.jsp").forward(request, response);
		}
	}

	private void displayAllHoaDon(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<HoaDon> hoaDonList = hoaDonService.getAllHoaDon();
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("maHoaDon,ngayThanhToan,maPhieuThuePhong,tongTien\n");
        for(HoaDon hoaDon: hoaDonList) {
            stringBuffer.append(String.format("%s,%s,%s,%f\n",hoaDon.getMaHoaDon(),hoaDon.getNgayThanhToan(),hoaDon.getMaPhieuThuePhong(), hoaDon.getTongTien()));
        }
        String path = "C:\\Users\\ACER\\OneDrive\\Desktop\\QuanLyKhachSan\\report\\report.csv";
        File file = new File(path);
        Files.write(file.toPath(), stringBuffer.toString().getBytes());
        request.getSession().setAttribute("hoaDon", path);
		request.setAttribute("hoaDonList", hoaDonList);
		request.getRequestDispatcher("admin/hoadon/listhoadon.jsp").forward(request, response);
	}

	private void showCreateForm(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<String> availablePhieuThuePhongList = hoaDonService.getAvailablePhieuThuePhong();
		request.setAttribute("maPhieuThuePhongList", availablePhieuThuePhongList);
		request.getRequestDispatcher("admin/hoadon/addhoadon.jsp").forward(request, response);
	}

	private void createHoaDon(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String maHoaDon = request.getParameter("maHoaDon");
		Date ngayThanhToan = Date.valueOf(request.getParameter("ngayThanhToan"));
		String maPhieuThuePhong = request.getParameter("maPhieuThuePhong");

		float tongTien = hoaDonService.calculateTongTien(maPhieuThuePhong, ngayThanhToan);

		HoaDon hoaDon = new HoaDon(maHoaDon, ngayThanhToan, maPhieuThuePhong, tongTien);

		if (hoaDonService.createHoaDon(hoaDon)) {
			response.sendRedirect(request.getContextPath() + "/hoadon");
		} else {
			request.setAttribute("error", "Tạo hóa đơn thất bại");
			request.getRequestDispatcher("admin/hoadon/addhoadon.jsp").forward(request, response);
		}
	}
}