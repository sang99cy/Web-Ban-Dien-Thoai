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
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.Cascade;

@Entity
@Table(name="hoadon")
public class HoaDon {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="idhoadon")
	private int mahoadon;
	@Column(name="hoten")
	private String hoten;
	@Column(name="sodienthoai")
	private int sodienthoai;
	@Column(name="email")
	private String email;
	@Column(name="diachi")
	private String diachi;
	
	@OneToMany(mappedBy="hoaDon",fetch=FetchType.LAZY,cascade= {CascadeType.PERSIST,CascadeType.REMOVE})
	
	Set<ChiTietHoaDon> danhsachchitiethoadon;
	
	public Set<ChiTietHoaDon> getDanhsachchitiethoadon() {
		return danhsachchitiethoadon;
	}
	public void setDanhsachchitiethoadon(Set<ChiTietHoaDon> danhsachchitiethoadon) {
		this.danhsachchitiethoadon = danhsachchitiethoadon;
	}
	public HoaDon() {
		// TODO Auto-generated constructor stub
	}
	public int getMahoadon() {
		return mahoadon;
	}
	public int setMahoadon(int mahoadon) {
		return this.mahoadon = mahoadon;
	}
	public String getHoten() {
		return hoten;
	}
	public void setHoten(String hoten) {
		this.hoten = hoten;
	}
	public int getSodienthoai() {
		return sodienthoai;
	}
	public void setSodienthoai(int sodienthoai) {
		this.sodienthoai = sodienthoai;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getDiachi() {
		return diachi;
	}
	public void setDiachi(String diachi) {
		this.diachi = diachi;
	}


}
