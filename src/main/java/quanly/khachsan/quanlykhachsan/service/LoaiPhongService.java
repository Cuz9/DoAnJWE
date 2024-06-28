package quanly.khachsan.quanlykhachsan.service;

import quanly.khachsan.quanlykhachsan.DAO.LoaiPhongDAO;
import quanly.khachsan.quanlykhachsan.model.LoaiPhong;

import java.util.List;

public class LoaiPhongService {
	private LoaiPhongDAO loaiPhongDAO;

	public LoaiPhongService() {
		loaiPhongDAO = new LoaiPhongDAO();
	}

	public List<LoaiPhong> getAllLoaiPhong() {
		return loaiPhongDAO.getAllLoaiPhong();
	}

	public List<String> getAllMaLoaiPhong() {
		return loaiPhongDAO.getAllMaLoaiPhong();
	}

	public boolean addLoaiPhong(LoaiPhong loaiPhong) {
		return loaiPhongDAO.addLoaiPhong(loaiPhong);
	}

	public boolean updateLoaiPhong(LoaiPhong loaiPhong) {
		return loaiPhongDAO.updateLoaiPhong(loaiPhong);
	}

	public boolean deleteLoaiPhong(String maLoaiPhong) {
		return loaiPhongDAO.deleteLoaiPhong(maLoaiPhong);
	}

	public LoaiPhong getLoaiPhongById(String maLoaiPhong) {
		return loaiPhongDAO.getLoaiPhongById(maLoaiPhong);
	}
}
