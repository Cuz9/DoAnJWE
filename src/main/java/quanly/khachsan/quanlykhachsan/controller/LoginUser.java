package quanly.khachsan.quanlykhachsan.controller;

import quanly.khachsan.quanlykhachsan.controller.user.helper.CartItem;
import quanly.khachsan.quanlykhachsan.model.KhachHang;
import quanly.khachsan.quanlykhachsan.model.PhieuThuePhong;
import quanly.khachsan.quanlykhachsan.model.Phong;
import quanly.khachsan.quanlykhachsan.service.KhachHangService;
import quanly.khachsan.quanlykhachsan.service.PhieuThuePhongService;
import quanly.khachsan.quanlykhachsan.service.PhongService;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginUser
 */
@WebServlet("/dangnhap")
public class LoginUser extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private KhachHangService khachHangService = new KhachHangService();
    PhieuThuePhongService phieuThuePhongService = new PhieuThuePhongService();
    PhongService phongService = new PhongService();

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("user/loginuser.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String taiKhoan = request.getParameter("taiKhoan");
        String matKhau = request.getParameter("matKhau");

        KhachHang khachHang = khachHangService.loginKhachHang(taiKhoan, matKhau);
        if (khachHang != null) {
            HttpSession session = request.getSession();
            session.setAttribute("khachHang", khachHang);

            List<CartItem> list1 = getCartItems(khachHang);
            session.setAttribute("cartItemList", list1);
            session.setAttribute("CartItemListSize", list1.size());
            System.out.println("xxxxx " + list1.size());
            response.sendRedirect(request.getContextPath() + "/home");
        } else {
            request.setAttribute("error", "Đăng nhập thất bại");
            request.getRequestDispatcher("user/loginuser.jsp").forward(request, response);
        }
    }

    private List<CartItem> getCartItems(KhachHang khachHang) {
        List<PhieuThuePhong> list = phieuThuePhongService.getAllPhieuThuePhong();
        List<CartItem> list1 = new ArrayList<>();
        for (PhieuThuePhong phieuThuePhong : list) {
            if (phieuThuePhong.getMaKhachHang().equals(khachHang.getMaKhachHang())) {
                Date date = new Date(phieuThuePhong.getNgayDen().getTime());
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
                String ngay = simpleDateFormat.format(date);
                Phong phong = phongService.getPhongById(phieuThuePhong.getMaPhong());
                CartItem cartItem = new CartItem(ngay, "12h", phieuThuePhong.getMaPhong(), khachHang.getMaKhachHang(), phong.getHinhAnh());
                cartItem.setStatus(true);
                list1.add(cartItem);
            }
        }
        return list1;
    }
}