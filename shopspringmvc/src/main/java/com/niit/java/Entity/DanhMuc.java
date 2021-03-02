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
@Table(name="danhmuc")
public class DanhMuc {
	@Column(name="iddanhmuc")
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int madanhmuc;
	
	@Column(name="tendanhmuc")
	private String tendanhmuc;
	
	@Column(name="danhmuccha")
    private String danhmuccha;
	
	@OneToMany(mappedBy="danhMuc",fetch=FetchType.LAZY)
	@Cascade(org.hibernate.annotations.CascadeType.ALL)
	private Set<SanPham> sanPhams;
	
    public DanhMuc() {
		// TODO Auto-generated constructor stub
	}
    
    
	public DanhMuc(int madanhmuc) {
		super();
		this.madanhmuc = madanhmuc;
	}


	public Set<SanPham> getSanPhams() {
		return sanPhams;
	}

	public void setSanPhams(Set<SanPham> sanPhams) {
		this.sanPhams = sanPhams;
	}

	public int getMadanhmuc() {
		return madanhmuc;
	}
	public void setMadanhmuc(int madanhmuc) {
		this.madanhmuc = madanhmuc;
	}
	public String getTendanhmuc() {
		return tendanhmuc;
	}
	public void setTendanhmuc(String tendanhmuc) {
		this.tendanhmuc = tendanhmuc;
	}
	public String getDanhmuccha() {
		return danhmuccha;
	}
	public void setDanhmuccha(String danhmuccha) {
		this.danhmuccha = danhmuccha;
	}
    
}
