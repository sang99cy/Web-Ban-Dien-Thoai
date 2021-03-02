package com.niit.java.DAO;

import java.util.List;

import com.niit.java.Entity.SanPham;

public interface sanphamDao {
	public List<SanPham> getAll();
	public void themSanPham(SanPham sp);
	public void capnhatSanPham(SanPham sp);
	public SanPham getById(int masanpham);
	public void deleteSanPham(SanPham sp);
	public List<SanPham> getListByID(int madanhmuc);
	public List<SanPham> LayDanhSachSanPhamLimit(int spbatdau);
}
