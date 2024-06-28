package quanly.khachsan.quanlykhachsan.service;

import quanly.khachsan.quanlykhachsan.DAO.PhieuThuePhongDAO;
import quanly.khachsan.quanlykhachsan.model.PhieuThuePhong;

import java.util.List;

public class PhieuThuePhongService {
	private PhieuThuePhongDAO phieuThuePhongDAO;

	public PhieuThuePhongService() {
		phieuThuePhongDAO = new PhieuThuePhongDAO();
	}

	public List<PhieuThuePhong> getAllPhieuThuePhong() {
		return phieuThuePhongDAO.getAllPhieuThuePhong();
	}

    public boolean addPhieu(PhieuThuePhong phieuThuePhong) {return  phieuThuePhongDAO.addPhieu(phieuThuePhong);}
}
