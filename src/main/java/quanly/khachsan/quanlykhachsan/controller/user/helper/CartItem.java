package quanly.khachsan.quanlykhachsan.controller.user.helper;

import quanly.khachsan.quanlykhachsan.model.KhachHang;

import java.util.Objects;

public class CartItem {
    Long id;
    boolean status = false;
    String ngay, gio, maPhong;
    String khachHang, img;

    public CartItem(Long id) {
        this.id = id;
    }

    public CartItem(String ngay, String gio, String maPhong, String khachHang, String img) {
        id = System.currentTimeMillis();
        this.ngay = ngay;
        this.gio = gio;
        this.maPhong = maPhong;
        this.khachHang = khachHang;
        this.img = img;
    }

    @Override
    public String toString() {
        return "CartItem{" +
                "id=" + id +
                ", ngay='" + ngay + '\'' +
                ", gio='" + gio + '\'' +
                ", maPhong='" + maPhong + '\'' +
                ", khachHang='" + khachHang + '\'' +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        CartItem cartItem = (CartItem) o;
        return Objects.equals(id, cartItem.id);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id);
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNgay() {
        return ngay;
    }

    public void setNgay(String ngay) {
        this.ngay = ngay;
    }

    public String getGio() {
        return gio;
    }

    public void setGio(String gio) {
        this.gio = gio;
    }

    public String getMaPhong() {
        return maPhong;
    }

    public void setMaPhong(String maPhong) {
        this.maPhong = maPhong;
    }

    public String getKhachHang() {
        return khachHang;
    }

    public void setKhachHang(String khachHang) {
        this.khachHang = khachHang;
    }
}
