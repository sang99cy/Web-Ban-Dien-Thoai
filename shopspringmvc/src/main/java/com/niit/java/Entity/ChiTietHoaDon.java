package com.niit.java.Entity;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
@Entity
@Table(name="chitiethoadon")
public class ChiTietHoaDon {
	@Id
	@Column(name="idchitiethoadon")
	private int machitiethoadon;
	@Column(name="soluong")
	private int soluong;
	@Column(name="thanhtien")
    private double thanhtien;
    
    
    @ManyToOne
	@JoinColumn(name="idhoadon",nullable=false)
    private HoaDon hoaDon;
    
    @ManyToOne
	@JoinColumn(name="idsanpham",nullable=false)
    private SanPham sanpham;
    
    public ChiTietHoaDon() {
		// TODO Auto-generated constructor stub
	}
	public int getMachitiethoadon() {
		return machitiethoadon;
	}
	public void setMachitiethoadon(int machitiethoadon) {
		this.machitiethoadon = machitiethoadon;
	}

	public int getSoluong() {
		return soluong;
	}
	public void setSoluong(int soluong) {
		this.soluong = soluong;
	}
	public double getThanhtien() {
		return thanhtien;
	}
	public void setThanhtien(double thanhtien) {
		this.thanhtien = thanhtien;
	}
	public HoaDon getHoaDon() {
		return hoaDon;
	}
	public void setHoaDon(HoaDon hoaDon) {
		this.hoaDon = hoaDon;
	}
	public SanPham getSanpham() {
		return sanpham;
	}
	public void setSanpham(SanPham sanpham) {
		this.sanpham = sanpham;
	}
    

}
