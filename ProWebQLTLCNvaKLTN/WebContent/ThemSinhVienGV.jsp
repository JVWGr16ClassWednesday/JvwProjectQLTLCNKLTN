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
	<form method="post" action="TaoTaiKhoan.jsp" accept-charset="utf-8" id="formTaoMoiTK">
		<div class="container">
        <div class="row">
            <img src="header.jpg" class="img-rounded" alt="Cinque Terre" width="100%">
            <hr />
        </div>
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
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="panel panel-primary">
                    <div class="panel-heading text-center">Thêm sinh viên vào đề tài</div>
                    <div class="panel-body">
                        <div class="form-group">
                            <label for="id">Mã SV</label>
                            <input type="text" class="form-control" id="id" required>
                        </div>
                        <div class="form-group">
                            <label for="name">Họ tên</label>
                            <input type="text" class="form-control" id="name" required>
                        </div>
                    </div>
                    <div class="panel-footer text-center">
                     	<a href="" target="" class="btn btn-primary" data-toggle="modal" data-target="#myModal">Thêm sinh viên</a>                   	
                     	<!-- <button id="ThemSV" class="btn btn-primary" type="submit">Thêm</button> -->
                        <a href="Quanlytaikhoan.jsp" target="" class="btn btn-danger">Hủy</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
	</form>
    <div class="modal fade" id="myModal" role="dialog" >
        <div class="modal-dialog modal-sm">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">Thông báo</h4>
                </div>
                <div class="modal-body">
                    <p>Sinh viên đã được thêm thành công</p>
                </div>
                <div class="modal-footer">
                    <a href="ThemDeTaiGV.jsp" class="btn btn-default">Đóng</a>
                </div>
            </div>
        </div>
    </div>
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