package quanly.khachsan.quanlykhachsan.controller.user;

import quanly.khachsan.quanlykhachsan.model.HoaDon;
import quanly.khachsan.quanlykhachsan.model.KhachHang;
import quanly.khachsan.quanlykhachsan.controller.user.helper.CartItem;
import quanly.khachsan.quanlykhachsan.model.PhieuThuePhong;
import quanly.khachsan.quanlykhachsan.model.Phong;
import quanly.khachsan.quanlykhachsan.service.HoaDonService;
import quanly.khachsan.quanlykhachsan.service.KhachHangService;
import quanly.khachsan.quanlykhachsan.service.PhieuThuePhongService;
import quanly.khachsan.quanlykhachsan.service.PhongService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@WebServlet("/dat-phong")
public class DatPhong extends HttpServlet {
    PhongService phongService = new PhongService();
    PhieuThuePhongService phieuThuePhongService = new PhieuThuePhongService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        List<CartItem> list = (List<CartItem>) session.getAttribute("cartItemList");
        Long cartId = Long.parseLong(req.getParameter("cartId"));
        int index = list.indexOf(new CartItem(cartId));
        CartItem cartItem = list.remove(index);
        System.out.println(cartItem);
        boolean bf = cartItem.isStatus();
        cartItem.setStatus(true);
        list.add(cartItem);
        session.setAttribute("cartItemList", list);
        if (!bf) {
            Phong phong = phongService.getPhongById(cartItem.getMaPhong());
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
            try {
                Date date = simpleDateFormat.parse(cartItem.getNgay());
                java.sql.Date sqlDate = new java.sql.Date(date.getTime());
                PhieuThuePhong phieuThuePhong = new PhieuThuePhong("PTP" + System.currentTimeMillis(), cartItem.getMaPhong(), cartItem.getKhachHang(), sqlDate, phong.getDonGia() * 0.2f);
                phieuThuePhongService.addPhieu(phieuThuePhong);
            } catch (ParseException e) {
                throw new RuntimeException(e);
            }
        }

        req.getRequestDispatcher("user/chitietphong.jsp").

                forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String ngay = req.getParameter("properties[Ngay]");
        String gio = req.getParameter("properties[Gio]");
        String maPhong = req.getParameter("maPhong");
        KhachHang khachHang = (KhachHang) req.getSession().getAttribute("khachHang");

        if (ngay == null || gio == null) {
            req.setAttribute("err", "Hãy nhập ngày giờ");
        } else {
            HttpSession session = req.getSession();
            List<CartItem> list = (List<CartItem>) session.getAttribute("cartItemList");
            if (list == null) {
                list = new ArrayList<>();
            }
            Phong phong = phongService.getPhongById(maPhong);
            CartItem cartItem = new CartItem(ngay, gio, maPhong, khachHang.getMaKhachHang(), phong.getHinhAnh());
            list.add(cartItem);
            session.setAttribute("cartItemList", list);
            session.setAttribute("CartItemListSize", list.size());
        }
        req.getRequestDispatcher("user/chitietphong.jsp").forward(req, resp);
    }


}

