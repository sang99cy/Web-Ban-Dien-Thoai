package com.niit.java.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.java.Entity.ChiTietHoaDon;
import com.niit.java.Service.HoaDonService;

@Controller
@RequestMapping("/donhang")
public class HoaDonController {
	@Autowired
	HoaDonService hoaDonService;
    @GetMapping
	public String getAllHD(ModelMap modelMap) {
		modelMap.addAttribute("listHD",	hoaDonService.getAlllistHD());
		return "admin/danhsachhoadon";
	}
    @GetMapping(value="/huydonhang/{id}")
   	public String huyDH(ModelMap modelMap,@PathVariable("id") int id) {
    	hoaDonService.HuyDH(id);
    	/*int kt=hoaDonService.HuyCTDH(id);
    	if (kt>0) {
    		
       		
		}*/
    	modelMap.addAttribute("listHD",	hoaDonService.getAlllistHD());
   		return "admin/danhsachhoadon";
   	}
    @GetMapping(value="/chitietdonhang/{id}")
    public String laychitiethoadontheoma(ModelMap modelMap,@PathVariable("id") int id) {
    	List<ChiTietHoaDon> chiTietHoaDons=hoaDonService.laychitiethoadontheoma(id);
    	modelMap.addAttribute("chiTietHoaDons", chiTietHoaDons);
    	return "admin/danhsachchitiethoadon";
    }
 
}
