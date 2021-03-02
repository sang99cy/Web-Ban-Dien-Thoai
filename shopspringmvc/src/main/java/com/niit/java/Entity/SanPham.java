package com.niit.java.Entity;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.ForeignKey;

@Entity
@Table(name="sanpham")
public class SanPham {
	@Column(name="idsanpham")
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int masanpham;
	@Column(name="tensanpham")
	private String tensanpham;
	@Column(name="soluong")
	private int soluong;
	@Column(name="mota")
	private String mota;
	@Column(name="hinhanh")
	private String hinhanh;
	@Column(name="dongia")
	private int dongia;
	@Column(name="giamgia")
	private int giamgia;
	
	@ManyToOne(optional=false)
	@JoinColumn(name="iddanhmuc")
	private DanhMuc danhMuc;
	
	@OneToMany(mappedBy="hoaDon",fetch=FetchType.LAZY)
	Set<ChiTietHoaDon> danhsachchitiethoadon;
	
	
	public DanhMuc getDanhMuc() {
		return danhMuc;
	}

	public void setDanhMuc(DanhMuc danhMuc) {
		this.danhMuc = danhMuc;
	}

	public int getMasanpham() {
		return masanpham;
	}

	public void setMasanpham(int masanpham) {
		this.masanpham = masanpham;
	}
	
	public String getTensanpham() {
		return tensanpham;
	}

	public void setTensanpham(String tensanpham) {
		this.tensanpham = tensanpham;
	}

	public String getHinhanh() {
		return hinhanh;
	}

	public void setHinhanh(String hinhanh) {
		this.hinhanh = hinhanh;
	}

	public int getSoluong() {
		return soluong;
	}

	public void setSoluong(int soluong) {
		this.soluong = soluong;
	}

	public String getMota() {
		return mota;
	}

	public void setMota(String mota) {
		this.mota = mota;
	}

	public int getDongia() {
		return dongia;
	}

	public void setDongia(int dongia) {
		this.dongia = dongia;
	}

	public int getGiamgia() {
		return giamgia;
	}

	public void setGiamgia(int giamgia) {
		this.giamgia = giamgia;
	}

	public SanPham() {
		super();
	}

	public SanPham(String tensanpham, int soluong, String mota, String hinhanh, int dongia, int giamgia,
			DanhMuc danhMuc) {
		super();
		
		this.tensanpham = tensanpham;
		this.soluong = soluong;
		this.mota = mota;
		this.hinhanh = hinhanh;
		this.dongia = dongia;
		this.giamgia = giamgia;
		this.danhMuc = danhMuc;
	}
	

}
