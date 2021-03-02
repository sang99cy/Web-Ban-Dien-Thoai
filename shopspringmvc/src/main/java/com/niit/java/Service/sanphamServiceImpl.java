package com.niit.java.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.niit.java.DAO.sanphamDao;
import com.niit.java.Entity.SanPham;
@Service
public class sanphamServiceImpl implements sanphamService {

	@Autowired 
	sanphamDao sanphamDao;
	
	@Override
	public List<SanPham> getAll() {
		// TODO Auto-generated method stub
		return sanphamDao.getAll();
	}

	@Override
	public boolean themSanPham(SanPham sp) {
		sanphamDao.themSanPham(sp);
		return false;
		
	}

	@Override
	public void capnhatSanPham(SanPham sp) {
		sanphamDao.capnhatSanPham(sp);
		
	}

	@Override
	public SanPham getById(int masanpham) {
		return sanphamDao.getById(masanpham);
	}

	@Override
	public void deleteSanPham(int masanpham) {
		SanPham sPham=new SanPham();
		sPham.setMasanpham(masanpham);
		sanphamDao.deleteSanPham(sPham);
		
	}

	@Override
	public List<SanPham> getListByID(int madanhmuc) {
		// TODO Auto-generated method stub
		return sanphamDao.getListByID(madanhmuc);
	}

	@Override
	public List<SanPham> LayDanhSachSanPhamLimit(int spbatdau) {
		// TODO Auto-generated method stub
		return sanphamDao.LayDanhSachSanPhamLimit(spbatdau);
	}

}
