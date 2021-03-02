package com.niit.java.Controller;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.support.PagedListHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.ServletRequestUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.niit.java.Entity.DanhMuc;
import com.niit.java.Service.danhmucService;
import com.niit.java.Service.sanphamService;

@Controller
public class DanhmucController {
	@Autowired 
	danhmucService danhmucService;
	@Autowired
	sanphamService sanphamService;
	@RequestMapping("/danhmuc-list")
	public String loadDanhmuc(HttpServletRequest request,ModelMap modelMap) {
		List<DanhMuc> danhMucs =danhmucService.getAll(); 
	    //modelMap.addAttribute("listDM", danhmucService.getAll());
		PagedListHolder pagedListHolder = new PagedListHolder(danhMucs);
		int page = ServletRequestUtils.getIntParameter(request, "p", 0);
		pagedListHolder.setPage(page);
		pagedListHolder.setPageSize(4);
		modelMap.put("pagedListHolder", pagedListHolder);
		return "admin/danhsachdanhmuc";
	}
	@RequestMapping("/danhmuc-save")
	public String themdanhmuc(ModelMap map) {
		map.addAttribute("danhmuc",new DanhMuc());
		return "admin/themdanhmuc";
	}
	@RequestMapping("/themdanhmuc")
	public String xulythemdanhmuc(HttpServletRequest request,HttpServletResponse response,@ModelAttribute("DanhMuc") DanhMuc danhmuc,ModelMap modelMap) {
		try {
			request.setCharacterEncoding("utf-8");
			response.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			
			e.printStackTrace();
		}
		danhmucService.themDanhMuc(danhmuc);
		modelMap.addAttribute("listDM", danhmucService.getAll());
		//return "admin/danhsachdanhmuc";
		return "redirect:"+request.getHeader("Referer");
	}
	@RequestMapping("/capnhatdanhmuc")
	public String capnhatdanhmuc(HttpServletRequest request,@ModelAttribute("DanhMuc") DanhMuc danhmuc,ModelMap modelMap) {
		danhmucService.updateDanhMuc(danhmuc);
		//modelMap.addAttribute("listDM", danhmucService.getAll());
		List<DanhMuc> danhMucs =danhmucService.getAll(); 
	    //modelMap.addAttribute("listDM", danhmucService.getAll());
		PagedListHolder pagedListHolder = new PagedListHolder(danhMucs);
		int page = ServletRequestUtils.getIntParameter(request, "p", 0);
		pagedListHolder.setPage(page);
		pagedListHolder.setPageSize(4);
		modelMap.put("pagedListHolder", pagedListHolder);
		return "admin/danhsachdanhmuc";
	}
	@RequestMapping("/danhmuc-update/{id}")
	public String layttdanhmuc(@PathVariable int id,ModelMap modelMap) {
		DanhMuc danhmuc=danhmucService.getById(id);
		modelMap.addAttribute("danhmuc", danhmuc);
		return "admin/capnhatdanhmuc";
	}
	@RequestMapping("/danhmuc-delete/{id}")
	public String xoattdanhmuc(@PathVariable int id,ModelMap modelMap,HttpServletRequest request) {
		danhmucService.deleteDanhMuc(id);
		//modelMap.addAttribute("listDM", danhmucService.getAll());
		List<DanhMuc> danhMucs =danhmucService.getAll(); 
	    //modelMap.addAttribute("listDM", danhmucService.getAll());
		PagedListHolder pagedListHolder = new PagedListHolder(danhMucs);
		int page = ServletRequestUtils.getIntParameter(request, "p", 0);
		pagedListHolder.setPage(page);
		pagedListHolder.setPageSize(4);
		modelMap.put("pagedListHolder", pagedListHolder);
		return "admin/danhsachdanhmuc";

	}
	@RequestMapping("/load-danhmuccon/{id}")
	public String loaddanhmuc(@PathVariable int id,ModelMap modelMap,HttpServletRequest request) {
		/*List<DanhMuc> danhmuccon = danhmucService.listDMByCon(id);
		for (DanhMuc dMuc : danhmuccon) {
			System.out.println(dMuc.getTendanhmuc());
		}*/
		modelMap.addAttribute("danhmuccon", danhmucService.listDMByCon(id));
		modelMap.addAttribute("danhmucs",danhmucService.listDMByCha(0));
		modelMap.addAttribute("listSP", sanphamService.getAll());
		return "redirect:"+request.getHeader("Referer");
		//return "index";

	}

}
