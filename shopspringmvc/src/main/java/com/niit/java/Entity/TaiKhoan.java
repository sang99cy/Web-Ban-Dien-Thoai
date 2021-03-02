package com.niit.java.Entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="taikhoan")
public class TaiKhoan {
	@Column(name="idtaikhoan")
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int mataikhoan;
	@Column(name="tentaikhoan")
	private String tentaikhoan;
	@Column(name="tendangnhap")
	private String tendangnhap;
	@Column(name="matkhau")
	private String matkhau;
	@Column(name="diachi")
	private String diachi;
	@Column(name="vaitro")
	private int vaitro;
	public TaiKhoan() {
		super();
	}
	
	public TaiKhoan(int mataikhoan, String tentaikhoan, String tendangnhap, String matkhau, String diachi,int vaitro) {
		super();
		this.mataikhoan = mataikhoan;
		this.tentaikhoan = tentaikhoan;
		this.tendangnhap = tendangnhap;
		this.matkhau = matkhau;
		this.diachi = diachi;
		this.vaitro= vaitro;
	}

	public int getMataikhoan() {
		return mataikhoan;
	}
	public void setMataikhoan(int mataikhoan) {
		this.mataikhoan = mataikhoan;
	}
	public String getTentaikhoan() {
		return tentaikhoan;
	}
	public void setTentaikhoan(String tentaikhoan) {
		this.tentaikhoan = tentaikhoan;
	}
	public String getTendangnhap() {
		return tendangnhap;
	}
	public void setTendangnhap(String tendangnhap) {
		this.tendangnhap = tendangnhap;
	}
	public String getMatkhau() {
		return matkhau;
	}
	public void setMatkhau(String matkhau) {
		this.matkhau = matkhau;
	}
	public String getDiachi() {
		return diachi;
	}
	public void setDiachi(String diachi) {
		this.diachi = diachi;
	}

	public int getVaitro() {
		return vaitro;
	}

	public void setVaitro(int vaitro) {
		this.vaitro = vaitro;
	}
	
	

}
