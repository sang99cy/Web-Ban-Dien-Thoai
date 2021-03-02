package com.niit.java.DAO;

import java.util.List;

import javax.persistence.Query;
import javax.transaction.Transactional;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;

import com.niit.java.Entity.Admin;
import com.niit.java.Entity.TaiKhoan;

@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class TaiKhoanDaoImpl implements TaiKhoanDao {


	@Autowired
	SessionFactory sessionFactory;
	@Override
	@Transactional
	public void createAccount(TaiKhoan tk) {
		Session session = sessionFactory.getCurrentSession();
	    session.save(tk);
		//Query query=session.createQuery("INSERT INTO TaiKhoan (tentaikhoan, tendangnhap, matkhau, diachi, vaitro) VALUES ('"+tk.getTentaikhoan()+"', '"+tk.getTendangnhap()+"', '"+tk.getMatkhau()+"', '"+tk.getDiachi()+"', '"+tk.getVaitro()+"')");
		//query.executeUpdate();
	    //session.close();
	}
	@Override
	@Transactional
	public TaiKhoan CheckLogin(String tendangnhap, String matkhau) {
		Session session = sessionFactory.getCurrentSession();
			TaiKhoan taiKhoan=(TaiKhoan) session.createQuery("FROM TaiKhoan tk WHERE tk.tendangnhap='"+tendangnhap+"' AND tk.matkhau='"+matkhau+"'").getSingleResult();
			if (taiKhoan!=null) {
				return taiKhoan;
			} 
		 return null;
		
	}
	@Override
	@Transactional
	public void createAdmin(Admin admin) {
		Session session = sessionFactory.getCurrentSession();
	    session.save(admin);
		
	}
	@Override
	@Transactional
	public Admin CheckLoginAdmin(String email, String matkhau) {
		Session session = sessionFactory.getCurrentSession();
		Admin admin=(Admin) session.createQuery("FROM Admin ad WHERE ad.email='"+email+"' AND ad.matkhau='"+matkhau+"'").getSingleResult();
		if(admin!=null) {
			return admin;
		}
		return null;
	}
	@Override
	@Transactional
	public List<TaiKhoan> getAllTaiKhoan() {
		Session session = sessionFactory.getCurrentSession();
		List<TaiKhoan> taiKhoans=session.createQuery("FROM TaiKhoan").list();
		return taiKhoans;
	}
	@Override
	@Transactional
	public void deleteTaiKhoan(TaiKhoan taikhoan) {
		Session session = sessionFactory.getCurrentSession();
		session.delete(taikhoan);
	}
	
	

}
