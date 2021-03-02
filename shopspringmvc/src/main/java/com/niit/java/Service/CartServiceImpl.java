package com.niit.java.Service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.niit.java.DAO.CartDao;
import com.niit.java.Model.Cart;

@Service
public class CartServiceImpl implements CartService {
	@Autowired
	private CartDao cartDao=new CartDao();
     
	@Override
	public HashMap<Long, Cart> AddCart(long id, HashMap<Long, Cart> cart) {
		// TODO Auto-generated method stub
		return cartDao.AddCart(id, cart);
	}

	@Override
	public HashMap<Long, Cart> EditCart(long id, int quantity, HashMap<Long, Cart> cart) {
		// TODO Auto-generated method stub
		return cartDao.EditCart(id, quantity, cart);
	}

	@Override
	public HashMap<Long, Cart> DeleteCart(long id, HashMap<Long, Cart> cart) {
		// TODO Auto-generated method stub
		return cartDao.DeleteCart(id, cart);
	}

	@Override
	public double TotalQuantity(HashMap<Long, Cart> cart) {
		// TODO Auto-generated method stub
		return cartDao.TotalQuantity(cart);
	}

	@Override
	public int TotalPrice(HashMap<Long, Cart> cart) {
		// TODO Auto-generated method stub
		return cartDao.TotalPrice(cart);
	}

	@Override
	public HashMap<Long, Cart> SubCart(long id, HashMap<Long, Cart> cart) {
		// TODO Auto-generated method stub
		return cartDao.SubCart(id, cart);
	}
        
}
