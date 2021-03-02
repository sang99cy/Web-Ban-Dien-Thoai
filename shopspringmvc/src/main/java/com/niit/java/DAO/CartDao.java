package com.niit.java.DAO;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;

import com.niit.java.Entity.SanPham;
import com.niit.java.Model.Cart;
@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class CartDao {
	@Autowired
	private sanphamDao sanphamDao=new sanphamDaoImpl();
	
	public HashMap<Long, Cart> AddCart(long id,HashMap<Long, Cart> cart) {
        Cart itemCart=new Cart();
        SanPham product=sanphamDao.getById((int) id);
        if(product!=null && cart.containsKey(id)){
        	itemCart=cart.get(id);
        	 itemCart.setQuantity(itemCart.getQuantity() + 1);
        	 itemCart.setTotalPrice(itemCart.getQuantity()*itemCart.getSanPham().getDongia());
        }else {
        	itemCart.setSanPham(product);
        	itemCart.setQuantity(1);
        	double totalPrice=product.getDongia()*1;
        	itemCart.setTotalPrice(totalPrice);
		}
        cart.put(id,itemCart);
        return cart;
		
	}
	public HashMap<Long, Cart> SubCart(long id,HashMap<Long, Cart> cart) {
        Cart itemCart=new Cart();
        SanPham product=sanphamDao.getById((int) id);
        if(product!=null && cart.containsKey(id)){
        	itemCart=cart.get(id);
        	 itemCart.setQuantity(itemCart.getQuantity() - 1);
        	 itemCart.setTotalPrice(itemCart.getQuantity()*itemCart.getSanPham().getDongia());
        }else {
        	itemCart.setSanPham(product);
        	itemCart.setQuantity(itemCart.getQuantity() - 1);
        	double totalPrice=product.getDongia()*1;
        	itemCart.setTotalPrice(totalPrice);
		}
        cart.put(id,itemCart);
        return cart;
		
	}
	public HashMap<Long, Cart>EditCart(long id,int quantity,HashMap<Long, Cart> cart) {
		if (cart==null) {
			return cart;
		}
        Cart itemCart=new Cart();
        if(cart.containsKey(id)) {
        	itemCart=cart.get(id);
        	itemCart.setQuantity(quantity);
        	itemCart.setTotalPrice(quantity*itemCart.getSanPham().getDongia());
        }   
        cart.put(id,itemCart);
        return cart;	
	}
    public HashMap<Long, Cart> DeleteCart(long id,HashMap<Long, Cart> cart) {
    	if (cart==null) {
			return cart;
		}
        if (cart.containsKey(id)) {
			cart.remove(id);
		}
        return cart;	
	}
    public double TotalQuantity(HashMap<Long, Cart> cart) {
    	int totalQuantity=0;
    	for (Map.Entry<Long, Cart> itemCart : cart.entrySet()) {
			totalQuantity += itemCart.getValue().getQuantity();
		}
        return totalQuantity;	
	}
    public int TotalPrice(HashMap<Long, Cart> cart) {
    	int totalPrice=0;
    	for (Map.Entry<Long, Cart> itemCart : cart.entrySet()) {
			totalPrice += itemCart.getValue().getTotalPrice();
		}
        return totalPrice;	
	}

}
