package com.niit.java.DAO;

import java.util.List;

import com.niit.java.Entity.DanhMuc;

public interface danhmucDao {
	public List<DanhMuc> getAll();
	public void themDanhMuc(DanhMuc dm);
	public DanhMuc getById(int madanhmuc);
	public void updateDanhMuc(DanhMuc dm);
	public void deleteDanhMuc(DanhMuc dm);
	public List<DanhMuc> listDMByCha(int danhmuccha);
	public List<DanhMuc> listDMByCon(int madanhmuc);
}
