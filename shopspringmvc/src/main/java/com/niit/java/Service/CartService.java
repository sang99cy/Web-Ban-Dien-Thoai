package com.niit.java.Service;

import java.util.HashMap;

import org.springframework.stereotype.Service;

import com.niit.java.Model.Cart;

@Service
public interface CartService {
	public HashMap<Long, Cart> AddCart(long id,HashMap<Long, Cart> cart);
	public HashMap<Long, Cart>EditCart(long id,int quantity,HashMap<Long, Cart> cart);
	 public HashMap<Long, Cart>DeleteCart(long id,HashMap<Long, Cart> cart);
	 public double TotalQuantity(HashMap<Long, Cart> cart);
	 public int TotalPrice(HashMap<Long, Cart> cart);
	 public HashMap<Long, Cart> SubCart(long id,HashMap<Long, Cart> cart);
}
