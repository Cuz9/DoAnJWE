package quanly.khachsan.quanlykhachsan.service;

import quanly.khachsan.quanlykhachsan.DAO.HoaDonDAO;
import quanly.khachsan.quanlykhachsan.DAO.PhieuThuePhongDAO;
import quanly.khachsan.quanlykhachsan.model.ChiTietHoaDon;
import quanly.khachsan.quanlykhachsan.model.HoaDon;
import quanly.khachsan.quanlykhachsan.model.PhieuThuePhong;

import java.sql.Date;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;


public class HoaDonService {
    private HoaDonDAO hoaDonDAO;
    PhieuThuePhongDAO phieuThuePhongDAO = new PhieuThuePhongDAO();

    public HoaDonService() {
        hoaDonDAO = new HoaDonDAO();
    }

    public List<HoaDon> getAllHoaDon() {
        return hoaDonDAO.getAllHoaDon();
    }

    public boolean createHoaDon(HoaDon hoaDon) {
        return hoaDonDAO.createHoaDon(hoaDon);
    }

    public float calculateTongTien(String maPhieuThuePhong, Date ngayThanhToan) {
        return hoaDonDAO.calculateTongTien(maPhieuThuePhong, ngayThanhToan);
    }

    public List<String> getAvailablePhieuThuePhong() {
        ArrayList<String> res = new ArrayList<>();
        List<PhieuThuePhong> list = phieuThuePhongDAO.getAllPhieuThuePhong();

        List<HoaDon> hoaDons = getAllHoaDon();
        HashSet<String> strings = new HashSet<>();

        for (HoaDon hoaDon : hoaDons) {
            strings.add(hoaDon.getMaPhieuThuePhong());
        }

        for (PhieuThuePhong phieuThuePhong : list) {
            if (!strings.contains(phieuThuePhong.getMaPhieuThuePhong())) {
                res.add(phieuThuePhong.getMaPhieuThuePhong());
            }
        }
//        return res;
        return hoaDonDAO.getAvailablePhieuThuePhong();
    }

    public ChiTietHoaDon getChiTietHoaDon(String maHoaDon) {
        return hoaDonDAO.getChiTietHoaDon(maHoaDon);
    }

}
