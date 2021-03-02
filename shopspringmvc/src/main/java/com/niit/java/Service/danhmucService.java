package com.niit.java.Service;

import java.util.List;

import com.niit.java.Entity.DanhMuc;

public interface danhmucService {
	public List<DanhMuc> getAll();
	public void themDanhMuc(DanhMuc dm);
	public DanhMuc getById(int madanhmuc);
	public void updateDanhMuc(DanhMuc dm);
	public void deleteDanhMuc(int madanhmuc);
	public List<DanhMuc> listDMByCha(int danhmuccha);
	public List<DanhMuc> listDMByCon(int madanhmuc);

}
