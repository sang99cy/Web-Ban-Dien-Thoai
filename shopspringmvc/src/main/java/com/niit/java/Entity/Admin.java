package com.niit.java.Entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="admin")
public class Admin {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="idadmin")
	private int maadmin;
	@Column(name="hoten")
	private String hoten;
	@Column(name="email")
	private String email;
	@Column(name="sodienthoai")
	private int sodienthoai;
	@Column(name="matkhau")
	private String matkhau;
	public Admin() {
		// TODO Auto-generated constructor stub
	}
	public int getMaadmin() {
		return maadmin;
	}
	public void setMaadmin(int maadmin) {
		this.maadmin = maadmin;
	}
	public String getHoten() {
		return hoten;
	}
	public void setHoten(String hoten) {
		this.hoten = hoten;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getSodienthoai() {
		return sodienthoai;
	}
	public void setSodienthoai(int sodienthoai) {
		this.sodienthoai = sodienthoai;
	}
	public String getMatkhau() {
		return matkhau;
	}
	public void setMatkhau(String matkhau) {
		this.matkhau = matkhau;
	}
	

}
