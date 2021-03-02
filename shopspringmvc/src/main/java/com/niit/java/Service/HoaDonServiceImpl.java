package com.niit.java.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.niit.java.DAO.HoaDonDao;
import com.niit.java.Entity.ChiTietHoaDon;
import com.niit.java.Entity.HoaDon;
import com.niit.java.Entity.SanPham;
import com.niit.java.Model.Cart;
import com.niit.java.Model.chitietHDM;
@Service
public class HoaDonServiceImpl implements HoaDonService {

	@Autowired
	HoaDonDao hoadonDao;
	
	@Override
	public int themhoadon(HoaDon hd) {
		
		int kt=hoadonDao.themhoadon(hd);
		return kt;
	}

	@Override
	public List<HoaDon> getAlllistHD() {
		// TODO Auto-generated method stub
		return hoadonDao.getAlllistHD();
	}

	@Override
	public int themchitiethoadon(HashMap<Long, Cart> carts) {
		int idHoadons=hoadonDao.getIDHoaDon();
		for(Map.Entry<Long, Cart> itemcart : carts.entrySet()) {
			//chitietHDM chitietHD=new chitietHDM();
			ChiTietHoaDon chitietHD=new ChiTietHoaDon();
			HoaDon hDon=new HoaDon();
			hDon.setMahoadon(idHoadons);
			chitietHD.setHoaDon(hDon);
			SanPham sPham=new SanPham();
			sPham.setMasanpham(itemcart.getValue().getSanPham().getMasanpham());
			chitietHD.setSanpham(sPham);
			chitietHD.setSoluong(itemcart.getValue().getQuantity());
			chitietHD.setThanhtien(itemcart.getValue().getTotalPrice());
			int kt=hoadonDao.themchitiethoadon(chitietHD);
			return kt;
		}
		return 0;
	}

	@Override
	public int HuyDH(int id) {
		HoaDon hDon=new HoaDon();
		hDon.setMahoadon(id);
		hoadonDao.deleteHoaDon(hDon);
		return 0;
	}

	@Override
	public int HuyCTDH(int id) {
		ChiTietHoaDon chiTietHoaDon=new ChiTietHoaDon();
		HoaDon hDon=new HoaDon();
		hDon.setMahoadon(id);
		chiTietHoaDon.setHoaDon(hDon);
		hoadonDao.deleteCTHoaDon(chiTietHoaDon);
		return 0;
	}

	@Override
	public List<ChiTietHoaDon> laychitiethoadontheoma(int mahoadon) {
		// TODO Auto-generated method stub
		return hoadonDao.laychitiethoadontheoma(mahoadon);
	}

	

	

}
