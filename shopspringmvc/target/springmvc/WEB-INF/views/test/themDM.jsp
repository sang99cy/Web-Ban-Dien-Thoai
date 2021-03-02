<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>form thêm danh mục</title>
</head>
<body>
   <form action="/themdanhmuc" method="post">
        <label>tên danh muc:</label>
       <input type="text" name="tendanhmuc"/>
       <label>danh mục cha:</label>
       <input type="text" name="danhmuccha"/>
       <input type="submit" value="thêm danh mục">
   </form>
</body>
</html>