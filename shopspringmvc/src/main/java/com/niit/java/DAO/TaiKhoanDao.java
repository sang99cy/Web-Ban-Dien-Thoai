package com.niit.java.DAO;

import java.util.List;

import com.niit.java.Entity.Admin;
import com.niit.java.Entity.TaiKhoan;

public interface TaiKhoanDao {
	public void createAccount(TaiKhoan tk);
	public TaiKhoan CheckLogin(String tendangnhap,String matkhau);
	public void createAdmin(Admin admin);
	public Admin CheckLoginAdmin(String emai,String matkhau);
	//thêm người dùng
	public List<TaiKhoan> getAllTaiKhoan();
	//xóa người dùng
	public void deleteTaiKhoan(TaiKhoan taikhoan);
    
}
