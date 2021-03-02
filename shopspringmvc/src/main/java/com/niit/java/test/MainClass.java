package com.niit.java.test;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.java.DAO.danhmucDaoImpl;
import com.niit.java.DAO.sanphamDao;
import com.niit.java.DAO.sanphamDaoImpl;
import com.niit.java.Entity.DanhMuc;
import com.niit.java.Entity.SanPham;
import com.niit.java.Service.sanphamService;
@Repository
public class MainClass {

	@Autowired
	sanphamDao sanphamDao;
	@Transactional
    public void them() {
    	SanPham sPham=new SanPham();
		DanhMuc danhMuc=new DanhMuc();
		danhMuc.setMadanhmuc(1);
		sPham.setDanhMuc(danhMuc);
	    sPham.setTensanpham("nokia 3");
	    sPham.setSoluong(10);
	    sanphamDao.themSanPham(sPham);
    }
	
	public static void main(String[] args) {
		MainClass sClass=new MainClass();
		sClass.them();
		
		
		 

	}

}
