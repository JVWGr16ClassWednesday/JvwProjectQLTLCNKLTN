<%@ taglib
    prefix="c"
    uri="http://java.sun.com/jsp/jstl/core" 
%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
	<from method="post" action="ThemDeTai.jsp" accept-charset="utf-8" id="formThemDTK"> 
		<div class="container">
		        <div class="row">
		            <img src="header.jpg" class="img-rounded" alt="Cinque Terre" width="100%">
		        </div>
		        <div class="row">
		            <nav class="navbar navbar-default">
		                <div class="container-fluid">
		                    <ul class="nav navbar-nav">
		                        <li>
		                            <a href="TrangChu.jsp"> Trang chủ</a>
		                        </li>
		                        <li><a href="Quanlytaikhoan.jsp">Quản lý tài khoản</a></li>
		                        <li class="active"><a href="QuanLyDeTai.jsp">Quản lý đề tài</a></li>
		                        <li><a href="KiemTraSaoChep.jsp">Kiểm tra sao chép</a></li>
		                        <li><a href="SoSanh.jsp">So sánh</a></li>
		                        <li><a href="Loc.jsp">Lọc</a></li>
		                    </ul>
		                    <div style="padding-top:8px;">
		                        <!--<label class="col-md-offset-3" style="padding-top:8px;">Admin</label>  -->
		                        <a href="DangNhapChung.jsp" class="btn btn-primary pull-right">Đăng xuất</a>
		                    </div>
		                </div>
		            </nav>
		        </div>
		        <div class="row">
		            <div class="col-sm-8 col-lg-offset-2">
		                <div class="panel panel-primary">
		                    <div class="panel-heading text-center">Thêm đề tài</div>
		                    <div class="panel-body">
		                        <div class="form-group">
		                            <label for="id">Tên đề tài:</label>
		                            <input type="text" class="form-control" id="tendetai" required >
		                        </div>
		                        <div class="form-group">
		                            <label for="name">Loại đề tài :</label>
		                            <input type="text" class="form-control" id="loaidetai" required >
		                        </div>
		                        <div class="form-group">
		                            <label for="name">Trưởng nhóm :</label>
		                            <input type="text" class="form-control" id="truongnhom" required >
		                            <label for="name">Mã SV :</label>
		                            <input type="text" class="form-control" id="idnt" required>
		                        </div>                                                 
		                        <div class="form-group">
		                            <label for="name">Thành viên :</label>
		                            <input type="text" class="form-control" id="thanhvien" required >
		                            <label for="name">Mã SV :</label>
		                            <input type="text" class="form-control" id="idtv" required >
		
		                            <input type="file" />
		                            <button class="btn btn-primary">Upload</button>
		                        </div>
		                        <div class="form-group">
		                            <label for="name">Giáo Viên hướng dẫn :</label>
		                            <input type="text" class="form-control" id="gvhd" required >
		                            <label for="name">Mã GVHD :</label>
		                            <input type="text" class="form-control" id="idgvhd" required >
		                        </div>
		                        <div class="form-group">
		                            <label for="name">Giáo Viên phản biện :</label>
		                            <input type="text" class="form-control" id="gvpb" required>
		                            <label for="name">Mã GVPB :</label>
		                            <input type="text" class="form-control" id="idgvpb" required >
		                        </div>
		                        <div class="form-group">
		                            <label for="name">Điểm đề tài:</label>
		                            <input type="text" class="form-control" id="score" required>
		                            <label for="name">Năm :</label>
		                            <input type="text" class="form-control" id="year" required>
		                        </div>
		                        <div class="form-group">
		                            <label for="name">Tài liệu đính kèm:</label>
		                            <a href="">Link liên kết tới nơi chứa tài liệu</a>
		
		                            <input type="file" />
		                            <button class="btn btn-primary">Upload</button>
		                        </div>
		                    </div>
		                     <input type="hidden" name="isSuccess" value="1"/>
		                    <div class="panel-footer">
		                        <button class="btn btn-primary"  type="submit" data-toggle="modal" data-target="#modalthongbao">Lưu Thông tin</button>
		                        <a href="" target="" class="btn btn-danger">Hủy</a>
		                    </div>
		                </div>
		            </div>
		        </div>
		    </div>
	</from>
	
	<c:if test='${param.isSuccess=="1"}'>
	<script type="text/javascript">
		$(document).ready(function() {
			$('#modalthongbao').modal({backdrop: 'static', keyboard: false});
		})
	</script>
	</c:if>
	
	<script type="text/javascript">
	$(document).ready(function() {
		//Khi bàn phím được nhấn và thả ra thì sẽ chạy phương thức này

		$("#formThemDTK").validate({
			rules: {
				tendetai: "required",
				loaidetai: "required",
				truongnhom: "required",
				idnt: "required",
				thanhvien: "required",
				idtv: "required",
				gvhd: "required",
				idgvhd: "required",
				gvpb: "required",
				idgvpb: "required",
				score: "required",
				year: "required",
				
			},
			messages: {
				tendetai: "vui lòng nhập tên đề tài",
				loaidetai: "vui lòng nhập loại đề tài",
				truongnhom: "vui lòng nhập tên trưởng nhóm",
				idnt: "vui lòng nhập mã số sinh viên",
				thanhvien: "vui lòng nhập tên thành viên",
				idtv: "vui lòng nhập mã số sinh viên",
				gvhd: "vui lòng nhập tên giáo viên hướng dẫn",
				idgvhd: "vui lòng nhập mã giáo viên",
				gvpb: "vui lòng nhập tên giáo viên phản biện",
				idgvpb: "vui lòng nhập mã giáo viên",
				score: "vui lòng nhập điểm đề tài",
				year: "vui lòng nhập năm báo cáo",
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