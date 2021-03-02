package com.niit.java.Controller;

import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;


import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.niit.java.Entity.DanhMuc;
import com.niit.java.Entity.SanPham;
import com.niit.java.Model.JSON_SanPham;
import com.niit.java.Service.danhmucService;
import com.niit.java.Service.sanphamService;

@Controller
@RequestMapping("api/")
public class ApiController {
	@Autowired
	ServletContext context;
	@Autowired
	sanphamService sanphamService;
	@Autowired
	danhmucService danhmucService;
	
	@PostMapping("UploadFile")
	@ResponseBody
	public String UploadFile(MultipartHttpServletRequest request) {
		String path_save_file = context.getRealPath("/resources/images/sanpham/");
		Iterator<String> listNames = request.getFileNames();
		MultipartFile mpf = request.getFile(listNames.next());
		
		File file_save = new File(path_save_file + mpf.getOriginalFilename());
		try {
			mpf.transferTo(file_save);
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println(path_save_file);
		return "true";
	}
	@PostMapping("themsanpham")
	@ResponseBody
	public void Themsanpham(@RequestParam String dataJson) {
		System.out.println(dataJson);
		ObjectMapper objectMapper=new ObjectMapper();
		JsonNode jsonbject;
		try {
			SanPham sanPham = new SanPham();
			jsonbject=objectMapper.readTree(dataJson);
			DanhMuc danhmucsanpham=danhmucService.getById(jsonbject.get("danhMuc").get("madanhmuc").asInt());
			System.out.println(danhmucsanpham);
			String tensanpham=jsonbject.get("tensanpham").asText();
			int soluong=jsonbject.get("soluong").asInt();
			String mota=jsonbject.get("mota").asText();
			String hinhanh=jsonbject.get("hinhanh").asText();
			int dongia=jsonbject.get("dongia").asInt();
			int giamgia=jsonbject.get("giamgia").asInt();
			sanPham.setDanhMuc(danhmucsanpham);
			sanPham.setTensanpham(tensanpham);
			sanPham.setSoluong(soluong);
			sanPham.setHinhanh(hinhanh);
			sanPham.setMota(mota);
			sanPham.setDongia(dongia);
			sanPham.setGiamgia(giamgia);
			//System.out.println(sanPham.getDanhMuc().getMadanhmuc()+"/"+sanPham.getTensanpham());
			sanphamService.themSanPham(sanPham);
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		/*JsonNode jsonNode;
		try {
			jsonNode = objectMapper.readTree(dataJson);
			System.out.println(jsonNode.get("tensanpham"));
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}*/
		
		
	}
	
	@PostMapping("capnhatsanpham")
	@ResponseBody
	public void Capnhatsanpham(@RequestParam String dataJson) {
		//System.out.println(dataJson);
		ObjectMapper objectMapper=new ObjectMapper();
		JsonNode jsonbject;
		try {
			SanPham sanPham = new SanPham();
			jsonbject=objectMapper.readTree(dataJson);
			DanhMuc danhmucsanpham=new DanhMuc();
			danhmucsanpham.setMadanhmuc(jsonbject.get("danhMuc").asInt());
			String tensanpham=jsonbject.get("tensanpham").asText();
			int soluong=jsonbject.get("soluong").asInt();
			String mota=jsonbject.get("mota").asText();
			String hinhanh=jsonbject.get("hinhanh").asText();
			int dongia=jsonbject.get("dongia").asInt();
			int giamgia=jsonbject.get("giamgia").asInt();
			int masanpham=jsonbject.get("masanpham").asInt();
			sanPham.setDanhMuc(danhmucsanpham);
			sanPham.setTensanpham(tensanpham);
			sanPham.setSoluong(soluong);
			sanPham.setHinhanh(hinhanh);
			sanPham.setMota(mota);
			sanPham.setDongia(dongia);
			sanPham.setGiamgia(giamgia);
			sanPham.setMasanpham(masanpham);
			//System.out.println(sanPham.getDanhMuc().getMadanhmuc()+"/"+sanPham.getTensanpham());
			sanphamService.capnhatSanPham(sanPham);
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		/*JsonNode jsonNode;
		try {
			jsonNode = objectMapper.readTree(dataJson);
			System.out.println(jsonNode.get("tensanpham"));
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}*/
		
		
	}
	
	@PostMapping(path="LayDanhSachSanPhamTheoMa", produces="application/json; charset=utf-8")
	@ResponseBody
	public JSON_SanPham LayDanhSachSanPhamTheoMa(@RequestParam int masanpham){
		JSON_SanPham json_SanPham=new JSON_SanPham();
		SanPham sanPham=sanphamService.getById(masanpham);
		json_SanPham.setMasanpham(sanPham.getMasanpham());
		json_SanPham.setTensanpham(sanPham.getTensanpham());
		json_SanPham.setSoluong(sanPham.getSoluong());
		json_SanPham.setHinhanh(sanPham.getHinhanh());
		json_SanPham.setMota(sanPham.getMota());
		json_SanPham.setDongia(sanPham.getDongia());
		json_SanPham.setGiamgia(sanPham.getGiamgia());
		
		DanhMuc danhmucsanpham=new DanhMuc();
		danhmucsanpham.setMadanhmuc(sanPham.getDanhMuc().getMadanhmuc());
		danhmucsanpham.setTendanhmuc(sanPham.getDanhMuc().getTendanhmuc());
		//danhmucsanpham.setDanhmuccha(sanPham.getDanhMuc().getDanhmuccha());
		json_SanPham.setDanhMuc(danhmucsanpham);
		//System.out.println(sanPham.getDanhMuc().getMadanhmuc());
		return json_SanPham;
		
	}

}
