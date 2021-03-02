package com.niit.java.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.niit.java.DAO.danhmucDao;
import com.niit.java.Entity.DanhMuc;
@Service
public class danhmucServiceImpl implements danhmucService{

	@Autowired
	danhmucDao danhmucDao;
	@Override
	public List<DanhMuc> getAll() {
		// TODO Auto-generated method stub
		return danhmucDao.getAll();
	}

	@Override
	public void themDanhMuc(DanhMuc dm) {
		danhmucDao.themDanhMuc(dm);
		
	}

	@Override
	public DanhMuc getById(int madanhmuc) {
		return danhmucDao.getById(madanhmuc);
	}

	@Override
	public void updateDanhMuc(DanhMuc dm) {
		danhmucDao.updateDanhMuc(dm);
		
	}

	@Override
	public void deleteDanhMuc(int madanhmuc) {
		DanhMuc dMuc=new DanhMuc();
				dMuc.setMadanhmuc(madanhmuc);
		danhmucDao.deleteDanhMuc(dMuc);
		
	}

	@Override
	public List<DanhMuc> listDMByCha(int danhmuccha) {
		// TODO Auto-generated method stub
		return danhmucDao.listDMByCha(danhmuccha);
	}

	@Override
	public List<DanhMuc> listDMByCon(int madanhmuc) {
		
		return danhmucDao.listDMByCon(madanhmuc);
	}

}
