package quanly.khachsan.quanlykhachsan.service;

import java.util.List;
import quanly.khachsan.quanlykhachsan.DAO.ChiTietDichVuDAO;
import quanly.khachsan.quanlykhachsan.model.ChiTietDichVu;

public class ChiTietDichVuService {
	private ChiTietDichVuDAO chiTietDichVuDAO;

	public ChiTietDichVuService() {
		chiTietDichVuDAO = new ChiTietDichVuDAO();
	}

	public List<ChiTietDichVu> getAllChiTietDichVu() {
		return chiTietDichVuDAO.getAllChiTietDichVu();
	}
}
