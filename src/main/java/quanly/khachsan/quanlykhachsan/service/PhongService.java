package quanly.khachsan.quanlykhachsan.service;

import quanly.khachsan.quanlykhachsan.DAO.PhongDAO;
import quanly.khachsan.quanlykhachsan.model.Phong;

import java.util.List;

public class PhongService {
	private PhongDAO phongDAO;

	public PhongService() {
		this.phongDAO = new PhongDAO(); // Khởi tạo đối tượng PhongDAO
	}

	public List<Phong> getAllPhongs() {
		return phongDAO.getAllPhongs();
	}

	public Phong getPhongById(String maPhong) {
		return phongDAO.getPhongById(maPhong);
	}

	public boolean createPhong(Phong phong) {
		return phongDAO.createPhong(phong);
	}

	public boolean updatePhong(Phong phong) {
		return phongDAO.updatePhong(phong);
	}

	public boolean deletePhong(String maPhong) {
		return phongDAO.deletePhong(maPhong);
	}
}
