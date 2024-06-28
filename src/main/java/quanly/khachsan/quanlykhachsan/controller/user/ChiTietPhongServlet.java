package quanly.khachsan.quanlykhachsan.controller.user;

import quanly.khachsan.quanlykhachsan.model.Phong;
import quanly.khachsan.quanlykhachsan.service.LoaiPhongService;
import quanly.khachsan.quanlykhachsan.service.PhongService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/chi-tiet-phong")
public class ChiTietPhongServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private PhongService phongService = new PhongService();
    private LoaiPhongService loaiPhongService = new LoaiPhongService();

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }

        switch (action) {
            default:
                chiTiet(request, response);
                break;
        }
    }

    private void chiTiet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Phong phong = phongService.getPhongById(request.getParameter("maPhong"));
        request.setAttribute("phong", phong);
        request.getRequestDispatcher("user/chitietphong.jsp").forward(request, response);
    }

}
