package com.niit.java.DAO;

import java.util.List;

import javax.persistence.Query;
import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.hql.internal.ast.SqlASTFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;

import com.niit.java.Entity.ChiTietHoaDon;
import com.niit.java.Entity.HoaDon;
import com.niit.java.Model.chitietHDM;
@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class HoaDonDaoImpl implements HoaDonDao {

	@Autowired
	SessionFactory sessionFactory;
	@Override
	@Transactional
	public int themhoadon(HoaDon hd) {
		Session session=sessionFactory.getCurrentSession();
		int kt=(int) session.save(hd);
		return kt;

	}

	@Override
	@Transactional
	public List<HoaDon> getAlllistHD() {
		Session session=sessionFactory.getCurrentSession();
		List<HoaDon> list=session.createQuery("FROM HoaDon").list();
		return list;
	}

	@Override
	@Transactional
	public void deleteHoaDon(HoaDon hd) {
		Session session=sessionFactory.getCurrentSession();
		session.remove(hd);
		
	}

	@Override
	@Transactional
	public int themchitiethoadon(ChiTietHoaDon chitietHD) {
		Session session=sessionFactory.getCurrentSession();
		int kt=(int) session.save(chitietHD);
		return kt;
	}

	@Override
	@Transactional
	public int getIDHoaDon() {
		Session session=sessionFactory.getCurrentSession();
		Query query=session.createQuery("SELECT MAX(mahoadon) FROM HoaDon");
		int id=(int) query.getSingleResult();
		return id;
	}

	@Override
	@Transactional
	public void deleteCTHoaDon(ChiTietHoaDon chiTietHoaDon) {
		Session session=sessionFactory.getCurrentSession();
		session.remove(chiTietHoaDon);
	}

	@Override
	@Transactional
	public List<ChiTietHoaDon> laychitiethoadontheoma(int mahoadon) {
		Session session=sessionFactory.getCurrentSession();
		Query query=session.createQuery("FROM ChiTietHoaDon h WHERE h.hoaDon.mahoadon = :mahoadon");
		query.setParameter("mahoadon", mahoadon);
		List<ChiTietHoaDon> chiTietHoaDons=query.getResultList();
		return chiTietHoaDons;
	}

}
