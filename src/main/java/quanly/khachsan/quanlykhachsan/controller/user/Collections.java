package quanly.khachsan.quanlykhachsan.controller.user;

import quanly.khachsan.quanlykhachsan.model.Phong;
import quanly.khachsan.quanlykhachsan.service.PhongService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/collections")
public class Collections extends HttpServlet {
    private PhongService phongService = new PhongService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Phong> listPhongs = phongService.getAllPhongs();
        req.setAttribute("listPhongs", listPhongs);
        req.getRequestDispatcher("user/collections.jsp").forward(req, resp);
    }
}
