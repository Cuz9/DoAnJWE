package quanly.khachsan.quanlykhachsan.service;

import quanly.khachsan.quanlykhachsan.DAO.DichVuDAO;
import quanly.khachsan.quanlykhachsan.model.DichVu;

import java.util.List;

public class DichVuService {
	private DichVuDAO dichVuDAO;

	public DichVuService() {
		dichVuDAO = new DichVuDAO();
	}

	public List<DichVu> getAllDichVu() {
		return dichVuDAO.getAllDichVu();
	}

	public DichVu getDichVuById(String maDichVu) {
		return dichVuDAO.getDichVuById(maDichVu);
	}

	public boolean addDichVu(DichVu dichVu) {
		return dichVuDAO.addDichVu(dichVu);
	}

	public boolean updateDichVu(DichVu dichVu) {
		return dichVuDAO.updateDichVu(dichVu);
	}

	public boolean deleteDichVu(String maDichVu) {
		return dichVuDAO.deleteDichVu(maDichVu);
	}
}
