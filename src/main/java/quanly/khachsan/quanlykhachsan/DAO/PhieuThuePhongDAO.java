package quanly.khachsan.quanlykhachsan.DAO;

import quanly.khachsan.quanlykhachsan.connection.MyConnection;
import quanly.khachsan.quanlykhachsan.model.PhieuThuePhong;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class PhieuThuePhongDAO {
    public List<PhieuThuePhong> getAllPhieuThuePhong() {
        List<PhieuThuePhong> phieuThuePhongs = new ArrayList<>();
        String query = "SELECT * FROM PhieuThuePhong";
        try (Connection connection = MyConnection.getConnection(); PreparedStatement preparedStatement = connection.prepareStatement(query); ResultSet resultSet = preparedStatement.executeQuery()) {

            while (resultSet.next()) {
                PhieuThuePhong phieuThuePhong = new PhieuThuePhong();
                phieuThuePhong.setMaPhieuThuePhong(resultSet.getString("MaPhieuThuePhong"));
                phieuThuePhong.setMaPhong(resultSet.getString("MaPhong"));
                phieuThuePhong.setMaKhachHang(resultSet.getString("MaKhachHang"));
                phieuThuePhong.setNgayDen(resultSet.getDate("NgayDen"));
                phieuThuePhong.setTienCoc(resultSet.getFloat("TienCoc"));
                phieuThuePhongs.add(phieuThuePhong);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return phieuThuePhongs;
    }

    public boolean addPhieu(PhieuThuePhong phieuThuePhong) {
        String sql = "INSERT INTO `quanlykhachsan`.`phieuthuephong` (`MaPhieuThuePhong`, `MaPhong`, `MaKhachHang`, `NgayDen`, `TienCoc`) VALUES (?, ?, ?, ?, ?);";
        try (Connection conn = MyConnection.getConnection(); PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, phieuThuePhong.getMaPhieuThuePhong());
            ps.setString(2, phieuThuePhong.getMaPhong());
            ps.setString(3, phieuThuePhong.getMaKhachHang());
            ps.setDate(4, phieuThuePhong.getNgayDen());
            ps.setFloat(5, phieuThuePhong.getTienCoc());

            return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
}
