package com.niit.java.Service;

import java.util.List;

import javax.validation.constraints.Null;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.niit.java.DAO.TaiKhoanDao;
import com.niit.java.Entity.Admin;
import com.niit.java.Entity.TaiKhoan;
import com.niit.java.test.MaHoa;

@Service
public class TaiKhoanServiceImpl implements TaiKhoanService{
	@Autowired
	private TaiKhoanDao taiKhoanDao;

	@Override
	public boolean createAccount(TaiKhoan tk) {
		//tk.setMatkhau(BCrypt.hashpw(tk.getMatkhau(),BCrypt.gensalt(12)));
		tk.setMatkhau(MaHoa.encryption(tk.getMatkhau()));
		taiKhoanDao.createAccount(tk);
		return false;
	}

	@Override
	public TaiKhoan CheckLogin(String tendangnhap, String matkhau) {
		// TODO Auto-generated method stub
		return taiKhoanDao.CheckLogin(tendangnhap, matkhau);
	}
	public TaiKhoan CheckGetLogin(TaiKhoan tk) {
		String tendangnhap=tk.getTendangnhap();
		String matkhau=tk.getMatkhau();
		TaiKhoan results=CheckLogin(tendangnhap, MaHoa.encryption(matkhau));
		if (results!=null) {
			return results;
		}
		return null;
	}

	@Override
	public boolean createAccountAdmin(Admin admin) {
		admin.setMatkhau(MaHoa.encryption(admin.getMatkhau()));
		taiKhoanDao.createAdmin(admin);
		return false;
	}

	@Override
	public Admin CheckLoginAdmin(String email, String matkhau) {
		// TODO Auto-generated method stub
		return taiKhoanDao.CheckLoginAdmin(email, matkhau);
	}

	@Override
	public Admin CheckgetLoginAdmin(Admin admin) {
		String email=admin.getEmail();
		String matkhau=admin.getMatkhau();
		Admin results=CheckLoginAdmin(email, MaHoa.encryption(matkhau));
		if (results!=null) {
			return results;
		}
		return null;
	}

	@Override
	public void deleteTaiKhoan(int mataikhoan) {
		TaiKhoan tKhoan=new TaiKhoan();
		tKhoan.setMataikhoan(mataikhoan);
		taiKhoanDao.deleteTaiKhoan(tKhoan);
		
	}

	@Override
	public List<TaiKhoan> getAllTaiKhoan() {
		
		return taiKhoanDao.getAllTaiKhoan();
	}
	

	

}
