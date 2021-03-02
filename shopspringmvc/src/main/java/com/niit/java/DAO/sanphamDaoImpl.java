package com.niit.java.DAO;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Query;
import javax.transaction.Transactional;

import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;
import com.niit.java.Entity.SanPham;

@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class sanphamDaoImpl implements sanphamDao {

	@Autowired
	SessionFactory sessionFactory;
	
	@Override
	@Transactional
	public List<SanPham> getAll() {
	    Session session=sessionFactory.getCurrentSession();
	    List<SanPham> sanPhams=session.createQuery("FROM SanPham").list();
		return sanPhams;
	}

	@Override
	@Transactional
	public void themSanPham(SanPham sp) {
		 Session session=sessionFactory.getCurrentSession();
		 //session.createQuery("insert into SanPham (iddanhmuc,tensanpham,hinhanh,soluong,mota,dongia,giamgia) values(?,?,?,?,?,?,?)");
		 session.save(sp);
		
	}

	@Override
	@Transactional
	public void capnhatSanPham(SanPham sp) {
		 Session session=sessionFactory.getCurrentSession();
		 session.update(sp);
		
		
	}

	@Override
	@Transactional
	public SanPham getById(int masanpham) {
		Session session=sessionFactory.getCurrentSession();
		return session.get(SanPham.class,masanpham);
	}

	@Override
	@Transactional
	public void deleteSanPham(SanPham sp) {
		Session session=sessionFactory.getCurrentSession();
		session.remove(sp);
	}

	@Override
	@Transactional
	public List<SanPham> getListByID(int madanhmuc) {
		Session session=sessionFactory.getCurrentSession();
		Query query=session.createQuery("FROM SanPham p WHERE p.danhMuc.madanhmuc = :madanhmuc");
		query.setParameter("madanhmuc", madanhmuc);
		List<SanPham> sanPhams=query.getResultList();
		return sanPhams;
	}

	@Override
	@Transactional
	public List<SanPham> LayDanhSachSanPhamLimit(int spbatdau) {
		Session session=sessionFactory.getCurrentSession();
		List<SanPham> listSanPhams = new ArrayList<>();
		if(spbatdau < 0){
			String query = "from SanPham";
			listSanPhams = (List<SanPham>)  session.createQuery(query).getResultList();
		}else{
			listSanPhams = (List<SanPham>) session.createQuery("from SanPham").setFirstResult(spbatdau).setMaxResults(5).getResultList();
		}
		
		return listSanPhams;
	}


	
}
