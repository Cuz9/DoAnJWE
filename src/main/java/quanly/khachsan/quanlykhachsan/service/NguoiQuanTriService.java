package quanly.khachsan.quanlykhachsan.service;


import quanly.khachsan.quanlykhachsan.DAO.NguoiQuanTriDAO;
import quanly.khachsan.quanlykhachsan.model.NguoiQuanTri;

import java.util.HashMap;

public class NguoiQuanTriService {
    private NguoiQuanTriDAO nguoiQuanTriDAO = new NguoiQuanTriDAO();

    public NguoiQuanTri login(String taiKhoan, String matKhau) {
        return nguoiQuanTriDAO.login(taiKhoan, matKhau);
    }

    public HashMap<String, Integer> getCount() {
        return nguoiQuanTriDAO.getCount();
    }
}
