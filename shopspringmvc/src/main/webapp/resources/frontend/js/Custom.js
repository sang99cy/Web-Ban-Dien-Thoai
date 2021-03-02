$(document).ready(function(){
	var masanpham = 0;	

$("#btnThemSanPham").click(function(event){
		event.preventDefault();
		var formdata = $("#form-sanpham").serializeArray();
		json = {};
		arraychitiet = [];
		
		 $.each(formdata, function(i, field){
			 json[field.name]   = field.value;
			 if(field.name === "danhMuc"){
				 objectDanhmuc = {};
				 objectDanhmuc["madanhmuc"] = field.value;
				 json[field.name] = objectDanhmuc;
			 }
		   });
		   //console.log(JSON.stringify(json));
		    json["hinhanh"] = tenhinh; 
		   $.ajax({
				url:"/springmvc/api/themsanpham",
			    type:"POST",
			    data:{
			    	dataJson:JSON.stringify(json)
			    },
			
				success: function(value){
					
				}
			})
			
		 });
		
	        
    var files = [];
    var tenhinh = "";
    $("#hinhanh").change(function(event){
    	files=event.target.files;
    	tenhinh=files[0].name;
    	forms = new FormData();
		forms.append("file",files[0]);
		alert("upload file");
		$.ajax({
			url:"/springmvc/api/UploadFile",
		    type:"POST",
		    data:forms,
		    contentType:false,
		    processData:false,
		    enctype: "multipart/form-data",
			success: function(value){
				
			}
		})
    })
    
    $("#btnCapNhatSanPham").click(function(event){
		event.preventDefault();
		var formdata = $("#form-sanpham").serializeArray();
		json = {};

		 $.each(formdata, function(i, field){
			 json[field.name]   = field.value;
			 /*if(field.name === "danhMuc"){
				 objectDanhmuc = {};
				 objectDanhmuc["madanhmuc"] = field.value;
				 json[field.name] = objectDanhmuc;
			 }*/
		 });
		 console.log(JSON.stringify(json));
		 json["masanpham"] = masanpham;
		 json["hinhanh"] = tenhinh; 
		 
		 
		$.ajax({
				url:"/springmvc/api/capnhatsanpham",
			    type:"POST",
			    data:{
			    	dataJson: JSON.stringify(json)
			    },
				success: function(value){
					
				}
			})
	})
    
    
    
    
    $("body").on("click",".capnhatsanpham",function(){
    	masanpham=$(this).attr("data-id");
    	$.ajax({
			url:"/springmvc/api/LayDanhSachSanPhamTheoMa",
		    type:"POST",
		    data:{
		    	masanpham: masanpham
		    },
		    success: function(value){
		    	console.log(value);
		    	$("#danhMuc").val(value.danhMuc.madanhmuc);
		    	$("#tensanpham").val(value.tensanpham);
		    	$("#soluong").val(value.soluong);
		    	$("#mota").val(value.mota);
		    	$("#dongia").val(value.dongia);
		    	$("#giamgia").val(value.giamgia);
			}
		})
    	
    })
    $( "#edit-cart" ).click(function() {
  	  alert( "Handler" );
  	});
    
	$("body").on("click",".paging-item",function(){
		//alert( "phân trang" );
		alert( $(this).text());
		$(".paging-item").removeClass("active");
		$(this).addClass("active");
		var sotrang = $(this).text();
		var spbatdau = (sotrang - 1) * 5;
		
		$.ajax({
			url:"/springmvc/api/LaySanPhamLimit",
		    type:"GET",
		    data:{
		    	spbatdau:spbatdau,
		    	
		    },
			success: function(value){
				var tbodysanpham = $("#table-sanpham").find("tbody");
				tbodysanpham.empty();
				tbodysanpham.append(value);
			}
		})
	})
})
    
    
    
    
    