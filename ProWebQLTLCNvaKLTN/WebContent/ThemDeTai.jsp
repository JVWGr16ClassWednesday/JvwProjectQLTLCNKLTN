<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="myPackage.ConnectionDB"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.validate.min.js"></script> 
    <style type="text/css">
		label {
			display: inline-block;
		}
		label.error {
			display: inline-block;
			color:red;
			width: 200px;
		}
	</style>
</head>
<body>
	<div class="container">
		<div class="row">
            <nav class="navbar navbar-default">
                <div class="container-fluid">
                    <ul class="nav navbar-nav">
                        <li>
                            <a href="TrangChu.jsp"> Trang chủ</a>
                        </li>
                        <li class="active"><a href="Quanlytaikhoan.jsp">Quản lý tài khoản</a></li>
                        <li><a href="QuanLyDeTai.jsp">Quản lý đề tài</a></li>
                        <li><a href="KiemTraSaoChep.jsp">Kiểm tra sao chép</a></li>
                        <li><a href="SoSanh.jsp">So sánh</a></li>
                        <li><a href="Loc.jsp">Lọc</a></li>
                    </ul>
                    <div style="padding-top:8px;">
                        <!--<label class="col-md-offset-3" style="padding-top:8px;"></label>  -->
                        <a href="DangNhapChung.jsp" class="btn btn-primary pull-right">Đăng xuất</a>
                    </div>
                </div>
            </nav>
        </div>
		<form action="UploadFileServlet" method="post" id="FrmThemDT" novalidate="novalidate" enctype="multipart/form-data">
		
			<div class="row">
				<div class="col-sm-8 col-lg-offset-2">
					<div class="panel panel-primary">
			    		<div class="panel-heading text-center">Thêm đề tài</div>
			        		<div class="panel-body">
					            <div class="form-group">
					                <label for="id">Tên đề tài:</label>
					                <input type="text" class="form-control" name="tendt" id="tendt" required >
					            </div>

					            <div class="form-group">
					            	<label for="inputlg">Mô tả đề tài:</label>
					            	<input type="text" class="form-control" id="motadt" name="motadt" required >
					            </div>

			                    <div class="form-group">
			                        <label for="selloaidt">Loại đề tài:</label>
										<select class="form-control" id="selloaidt" name="selloaidt">
											<option>Tiểu luận chuyên ngành</option>
											<option>Khóa luận tốt nghiệp</option>
										</select>
			                    </div>

			                    <div class="form-group">
			                        <label for="name">Trưởng nhóm :</label>
			                        <input type="text" class="form-control" id="truongnhom" name="truongnhom" required >
			                        <br/>
			                        <label for="name">Mã SV :</label>
			                        <input type="text" class="form-control" id="masvnt" name="masvnt" required>
			                    </div>

			                    <div class="form-group">
			                        <label for="name">Thành viên :</label>
			                        <input type="text" class="form-control" id="thanhvien" name="thanhvien" required >
			                        <br/>
			                        <label for="name">Mã SV :</label>
			                        <input type="text" class="form-control" id="masvtv" name="masvtv" required >
			                    </div>
			                    <a href="ThemSinhVien.jsp">Thêm sinh viên</a>
			                    <div class="form-group">
			                        <label for="name">Giáo Viên hướng dẫn :</label>
			                        <input type="text" class="form-control" id="gvhd" name="gvhd" required >
			                        <br/>
			                        <label for="name">Mã GVHD :</label>
			                        <input type="text" class="form-control" id="idgvhd" name="idgvhd" required >
			                    </div>

			                    <div class="form-group">
			                        <label for="name">Giáo Viên phản biện :</label>
			                        <input type="text" class="form-control" id="gvpb" name="gvpb" required>
			                        <br/>
			                        <label for="name">Mã GVPB :</label>
			                        <input type="text" class="form-control" id="idgvpb" name="idgvpb" required >
			                    </div>

			                    <div class="form-group">
			                        <label for="name">Điểm đề tài:</label>
			                        <input type="text" class="form-control" id="score" name="score" required>
			                        <br/>
			                        <label for="name">Năm :</label>
			                        <input type="text" class="form-control" id="year" name="year" required>
			                    </div>
			                   <div class="form-group">
			                        <label for="name">Tài liệu đính kèm:</label>
			                        <a href="">Link liên kết tới nơi chứa tài liệu</a>
			                        <input type="file" name="file" >
			                    </div>
			        		</div>
			        	<input type="hidden" name="isSuccess" value="1"/>
		                <div class="panel-footer">
		                    <input  id="themDT" name="themDT" class="btn btn-primary"  type="submit" value="Lưu Thông tin">
		                    <a href="XemDanhSachDeTai.jsp" target="" class="btn btn-danger pull-right">Hủy</a>
		                </div>
	    			</div>
				</div>	
			</div>	
  		</form>
	</div>
<!-- jQuery Form Validation code -->
  <script>
  
  // When the browser is ready...
  $(function() {
  
    // Setup form validation on the #FrmThemDT element
    $("#FrmThemDT").validate({
    
        // Specify the validation rules
        rules: {
            tendt: "required",
            motadt: "required",
            selloaidt: "required",
            truongnhom: "required",
            masvnt: "required",
            thanhvien: "required",
            masvtv: "required",
            gvhd: "required",
            idgvhd: "required",
            gvpb: "required",
            idgvpb: "required",
            score: "required",
            year: "required" 
        },
        
        // Specify the validation error messages
        messages: {
            tendt: "Bạn chưa nhập tên đề tài",
            motadt: "Vui lòng nhập mô tả của đề tài",
            selloaidt: "Bạn chưa chọn loại đề tài",
            truongnhom: "Bạn chưa nhập tên trưởng nhóm",
            masvnt: "Bạn chưa nhập mã số sinh viên của trưởng nhóm",
            thanhvien: "Bạn chưa nhập tên của thành viên",
            masvtv: "Bạn chưa nhập mã số sinh viên của thành viên",
            gvhd: "Bạn chưa nhập tên giáo viên hướng dẫn",
            idgvhd: "Bạn chưa nhập mã giáo viên",
            gvpb: "Bạn chưa nhập tên giáo viên phản biện",
            idgvpb: "Bạn chưa nhập mã giáo viên",
            score: "Bạn chưa nhập điểm đề tài",
            year: "Bạn chưa nhập năm báo cáo" 
        },
        
        submitHandler: function(form) {
            form.submit();
        }
    });
 
  });
  
  </script>
    <!-- Start Modal Thông báo tạo thành công đề tài -->
    <div class="modal fade" id="modalthongbao" role="dialog">
        <div class="modal-dialog modal-md">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">Thông báo</h4>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label>Đề tài đã được thêm</label>
                    </div>
                </div>
                <div class="modal-footer">
                    <a href="XemDanhSachDeTai.jsp" class="btn btn-default">Đóng</a>
                </div>
            </div>
        </div>
    </div>
    <!-- End Modal Thông báo-->
    
    <!-- add footer -->
    <div class="container">
     <div class="row">
     </div>
        <div id="footer">
        <hr>
            <h5 class="text-center text-danger">Khoa Công nghệ Thông tin - Đại học Sư phạm Kỹ thuật TP. Hồ Chí Minh</h5>
            <h5 class="text-center text-danger">Số 1, Võ Văn Ngân, Thủ Đức, TP. Hồ Chí Minh</h5>
        </div>
    </div>
</body>
</html>