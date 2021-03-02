package com.niit.java.Service;

import java.util.HashMap;
import java.util.List;

import com.niit.java.Entity.ChiTietHoaDon;
import com.niit.java.Entity.HoaDon;
import com.niit.java.Model.Cart;

public interface HoaDonService {
	public int themhoadon(HoaDon hd);
	public int themchitiethoadon(HashMap<Long, Cart> carts);
	public List<HoaDon> getAlllistHD();
	public int HuyDH(int id);
	public int HuyCTDH(int id);
	public List<ChiTietHoaDon> laychitiethoadontheoma(int mahoadon);
}
