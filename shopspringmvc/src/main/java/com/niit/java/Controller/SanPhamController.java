package com.niit.java.Controller;

import java.lang.reflect.Method;
import java.util.List;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.support.PagedListHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.ServletRequestUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.niit.java.Entity.DanhMuc;
import com.niit.java.Entity.SanPham;
import com.niit.java.Service.danhmucService;
import com.niit.java.Service.sanphamService;

@Controller
public class SanPhamController {
	
	@Autowired
	sanphamService sanphamService;
	@Autowired
	danhmucService danhmucService;
	
	@RequestMapping("/sanpham-list")
	public String getdanhsachsanpham(HttpServletRequest request,ModelMap modelMap) {
		List<SanPham> sanPhams=sanphamService.getAll();
		modelMap.addAttribute("listDM", danhmucService.getAll());
		PagedListHolder pagedListHolder = new PagedListHolder(sanPhams);
		int page = ServletRequestUtils.getIntParameter(request, "p", 0);
		pagedListHolder.setPage(page);
		pagedListHolder.setPageSize(4);
		modelMap.put("pagedListHolder", pagedListHolder);
		//modelMap.addAttribute("listSP", sanPhams);
		return "admin/danhsachsanpham";
	}
	
	@RequestMapping("/sanpham-save")
	public String themsanpham(ModelMap modelMap) {
		modelMap.addAttribute("listDM", danhmucService.getAll());
		modelMap.addAttribute("sanpham", new SanPham());
		return "admin/themsanpham";
	}
	
	@RequestMapping("/themsanpham")
	public String xulythemsanpham(HttpServletRequest request,@ModelAttribute("sanpham") SanPham sanpham,ModelMap modelMap) {
		sanphamService.themSanPham(sanpham);
		modelMap.addAttribute("listSP", sanphamService.getAll());
		//return "admin/danhsachsanpham";
		if(sanphamService.themSanPham(sanpham)) {
			return "redirect:"+request.getHeader("Referer");
		}
		else {
			return "admin/danhsachsanpham";
		}
		
	}
	
	@RequestMapping("/sanpham-update/{id}")
	public String getttsanpham(@PathVariable("id") int id,ModelMap modelMap) {
		sanphamService.getById(id);
		return "admin/capnhatsanpham";
	}
	
	@RequestMapping("/sanpham-delete/{id}")
	public String deletesanpham(@PathVariable("id") int id,ModelMap modelMap,HttpServletRequest request) {
		
		sanphamService.deleteSanPham(id);
		
		List<SanPham> sanPhams=sanphamService.getAll();
		modelMap.addAttribute("listDM", danhmucService.getAll());
		PagedListHolder pagedListHolder = new PagedListHolder(sanPhams);
		int page = ServletRequestUtils.getIntParameter(request, "p", 0);
		pagedListHolder.setPage(page);
		pagedListHolder.setPageSize(4);
		modelMap.put("pagedListHolder", pagedListHolder);
		//modelMap.addAttribute("listSP", sanPhams);
		return "admin/danhsachsanpham";
	}
	@RequestMapping("/chitietsanpham/{id}")
	public String getchitietttsanpham(@PathVariable("id") int id,ModelMap modelMap) {
		modelMap.addAttribute("details",sanphamService.getById(id));
		modelMap.addAttribute("listdmcha",danhmucService.listDMByCha(0));
		return "detail";
	}
	//lấy dữ liệu sản phẩm theo danh mục sản phẩm
	@RequestMapping("/getAllSPintCategory/{id}")
	public ModelAndView getALLSPintCategory(HttpServletRequest request,@PathVariable("id") int id,ModelMap modelMap) {
		modelMap.addAttribute("listdmcha",danhmucService.listDMByCha(0));
		List<SanPham> list=sanphamService.getListByID(id);
		for (SanPham sPham : list) {
			System.out.println(sPham.getTensanpham());
		}
		ModelAndView modelAndView=new ModelAndView();
		modelAndView.addObject("listSPINTC", list);
		
		modelAndView.setViewName("product-cateory");
		return modelAndView;
	}

}
