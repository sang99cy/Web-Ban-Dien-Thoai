package com.niit.java.Service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.niit.java.Entity.Admin;
import com.niit.java.Entity.TaiKhoan;

@Service
public interface TaiKhoanService {
	//user
	public boolean createAccount(TaiKhoan tk);
	public TaiKhoan CheckLogin(String tendangnhap, String matkhau);
	public TaiKhoan CheckGetLogin(TaiKhoan tk);
	public void deleteTaiKhoan(int mataikhoan);
	public List<TaiKhoan> getAllTaiKhoan();
	//admin
	public boolean createAccountAdmin(Admin admin);
	public Admin CheckLoginAdmin(String email,String matkhau);
	public Admin CheckgetLoginAdmin(Admin admin);
}
