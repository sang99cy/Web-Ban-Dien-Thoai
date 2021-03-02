package com.niit.java.DAO;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Repository;

import com.niit.java.Entity.DanhMuc;
@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class danhmucDaoImpl implements danhmucDao {

	@Autowired
	SessionFactory sessionFactory;
	@Override
	@Transactional
	public List<DanhMuc> getAll() {
		
		
			Session session=sessionFactory.getCurrentSession();
			List<DanhMuc> list=session.createQuery("FROM DanhMuc").list();
			return list;
	}

	@Override
	@Transactional
	public void themDanhMuc(DanhMuc dm) {
		
		Session session = sessionFactory.getCurrentSession();
	    session.save(dm);
	}

	@Override
	@Transactional
	public DanhMuc getById(int madanhmuc) {
		 Session session = sessionFactory.getCurrentSession();
		 return session.get(DanhMuc.class, madanhmuc);
	}

	@Override
	@Transactional
	public void updateDanhMuc(DanhMuc dm) {
		 Session session = sessionFactory.getCurrentSession();
		 session.update(dm);
		
	}

	@Override
	@Transactional
	public void deleteDanhMuc(DanhMuc dm) {
		Session session = sessionFactory.getCurrentSession();
	    session.remove(dm);
		
	}

	@Override
	@Transactional
	public List<DanhMuc> listDMByCha(int danhmuccha) {
		Session session = sessionFactory.getCurrentSession();
		List<DanhMuc> list = session.createQuery("FROM DanhMuc WHERE danhmuccha='"+danhmuccha+"'").getResultList();
		return list;
	}
	@Transactional
	public List<DanhMuc> listDMByCon(int madanhmuc) {
		Session session = sessionFactory.getCurrentSession();
		List<DanhMuc> list = session.createQuery("FROM DanhMuc WHERE danhmuccha='"+madanhmuc+"'").getResultList();
		return list;
	}

}	