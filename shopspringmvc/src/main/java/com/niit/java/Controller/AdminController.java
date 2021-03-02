package com.niit.java.Controller;

import java.util.List;

import javax.persistence.NoResultException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.java.Entity.Admin;
import com.niit.java.Entity.DanhMuc;
import com.niit.java.Entity.TaiKhoan;
import com.niit.java.Service.TaiKhoanService;
import com.niit.java.Service.danhmucService;

@Controller

public class AdminController {
	@Autowired
	danhmucService danhmucService;
	@Autowired
	TaiKhoanService taikhoanService;
	
	@RequestMapping("/admin")
	public String defaults(ModelMap modelMap,HttpServletRequest request) {
		/*List<DanhMuc> list=danhmucService.getAll();
		for(DanhMuc dMuc :list) {
			System.out.println(dMuc.getTendanhmuc());
		}
		return "admin/index";*/
		modelMap.addAttribute("admin",new Admin());
		return "admin/login";
	}
	@RequestMapping("/admin-login")
	public String xulidangnhap(@ModelAttribute("admin") Admin admin,HttpSession session,ModelMap modelMap,HttpServletRequest request) {
		try {
			Admin ad=taikhoanService.CheckgetLoginAdmin(admin);
			 if(ad!=null) {
			    	System.out.println("đăng nhập thành công");
			    	session.setAttribute("logininfo", ad);
			    	return "admin/index";
			 }
		} catch (NoResultException e) {
			// TODO: handle exception
			System.out.println("đăng nhập thất bại");
			modelMap.addAttribute("status", "đăng nhập thất bại");
			return "admin/login";
		}
		return null;
	}
	@RequestMapping("/dangky-form")
	public String displayformDangKy(ModelMap modelMap) {
		modelMap.addAttribute("admin", new Admin());
		return "admin/registration";
	}
	@PostMapping("/admin-dangky")
	public String xulytaotaikhoanAdmin(@ModelAttribute("admin") Admin admin,ModelMap modelMap,HttpServletRequest request) {
		boolean kt=taikhoanService.createAccountAdmin(admin);
		String massages="";
		if(kt==true) {
			System.out.println("đăng ký ko thành công");
			modelMap.addAttribute(massages, "đăng ký ko thành công");
			return "redirect:"+request.getHeader("Referer");
		}else {
			System.out.println("đăng ký tài khoản thành công");
			modelMap.addAttribute(massages, "đăng ký tài khoản thành công");
			//return "redirect:"+request.getHeader("Referer");
			return "admin/registration";
		}
		
	}
	@RequestMapping("/admin-dangxuat")
	public String logout(@ModelAttribute("admin") Admin admin,HttpSession session,ModelMap modelMap,HttpServletRequest request) {
		session.removeAttribute("logininfo");
		return "admin/index";
	}
	

}
