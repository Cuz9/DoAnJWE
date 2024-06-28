package quanly.khachsan.quanlykhachsan.controller.user;

import com.google.gson.Gson;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;

@WebServlet("/contact")
public class Contact extends HttpServlet {
    class ContactEle {
        String name, phone, style, ngay, gio;

        public ContactEle(String name, String phone, String style, String ngay, String gio) {
            this.name = name;
            this.phone = phone;
            this.style = style;
            this.ngay = ngay;
            this.gio = gio;
        }
    }

    Gson gson = new Gson();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("contact[name]");
        String phone = req.getParameter("contact[phone]");
        String style = req.getParameter("contact[Style]");
        String ngay = req.getParameter("properties[Ngay]");
        String gio = req.getParameter("properties[Gio]");

        File file = new File("C:\\Users\\ACER\\OneDrive\\Desktop\\QuanLyKhachSan\\contact\\contact" + System.currentTimeMillis() + ".json");
        System.out.println("getAbsolutePath " + file.getAbsolutePath());
        Files.createFile(file.toPath());
        ContactEle contactEle = new ContactEle(name, phone, style, ngay, gio);

        Files.write(file.toPath(), gson.toJson(contactEle).getBytes());

        req.getRequestDispatcher("user/home.jsp").forward(req, resp);
    }
}
