package quanly.khachsan.quanlykhachsan.DAO;

import quanly.khachsan.quanlykhachsan.connection.MyConnection;
import quanly.khachsan.quanlykhachsan.model.NguoiQuanTri;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;

public class NguoiQuanTriDAO {
    public NguoiQuanTri login(String taiKhoan, String matKhau) {
        Connection conn = MyConnection.getConnection();
        String sql = "SELECT * FROM NguoiQuanTri WHERE TaiKhoan = ? AND MatKhau = ?";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, taiKhoan);
            ps.setString(2, matKhau);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                NguoiQuanTri admin = new NguoiQuanTri();
                admin.setTaiKhoan(rs.getString("TaiKhoan"));
                admin.setMatKhau(rs.getString("MatKhau"));
                admin.setTenNguoiQuanTri(rs.getString("TenNguoiQuanTri"));
                admin.setGioiTinh(rs.getBoolean("GioiTinh"));
                admin.setCmnd(rs.getString("CMND"));
                admin.setDiaChi(rs.getString("DiaChi"));
                admin.setEmail(rs.getString("Email"));
                admin.setSoDienThoai(rs.getString("SoDienThoai"));
                return admin;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public HashMap<String, Integer> getCount() {
        HashMap<String, Integer> res = new HashMap<>();
        Connection conn = MyConnection.getConnection();
        String[] sqls = {
                "LoaiPhong",
                "phong",
                "khachhang",
                "hoadon",
                "dichvu",
                "chitietdichvu",
                "phieuthuephong",
        };
        PreparedStatement ps = null;
        for(String sql: sqls) {
            try {
                ps = conn.prepareStatement("SELECT count(*) FROM " + sql);
                ResultSet rs = ps.executeQuery();
                rs.next();
                res.put(sql, rs.getInt("count(*)"));
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }
        return res;
    }
}
