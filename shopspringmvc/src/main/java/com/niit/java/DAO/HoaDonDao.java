package com.niit.java.DAO;

import java.util.HashMap;
import java.util.List;

import com.niit.java.Entity.ChiTietHoaDon;
import com.niit.java.Entity.HoaDon;
import com.niit.java.Model.Cart;
import com.niit.java.Model.chitietHDM;

public interface HoaDonDao {
	public int themhoadon(HoaDon hd);
	public List<HoaDon> getAlllistHD();
	public void deleteHoaDon(HoaDon hd);
	public void deleteCTHoaDon(ChiTietHoaDon chiTietHoaDon);
	public int themchitiethoadon(ChiTietHoaDon chitietHD);
	public int getIDHoaDon();
	public List<ChiTietHoaDon> laychitiethoadontheoma(int mahoadon);
  }
