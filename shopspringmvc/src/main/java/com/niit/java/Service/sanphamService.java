package com.niit.java.Service;

import java.util.List;

import com.niit.java.Entity.SanPham;

public interface sanphamService {
	public List<SanPham> getAll();
	public boolean themSanPham(SanPham sp);
	public void capnhatSanPham(SanPham sp);
	public SanPham getById(int masanpham);
	public void deleteSanPham(int masanpham);
	public List<SanPham> getListByID(int madanhmuc);
	public List<SanPham> LayDanhSachSanPhamLimit(int spbatdau);
}
