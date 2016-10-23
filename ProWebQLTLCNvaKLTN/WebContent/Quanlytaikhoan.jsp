<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/bootstrap.min.css">

    <!-- css copy -->
    <link rel="stylesheet" href="css_web_nong_nghiep/animate.css">
    <link rel="stylesheet" href="css_web_nong_nghiep/bxslider.css">
    <link rel="stylesheet" href="css_web_nong_nghiep/divbox.css">
    <link rel="stylesheet" href="css_web_nong_nghiep/jquery.mCustomScrollbar.css">
    <link rel="stylesheet" href="css_web_nong_nghiep/style.css">
    <link rel="stylesheet" href="css_web_nong_nghiep/swipebox.css"> 
    <link rel="stylesheet" href="css_web_nong_nghiep/global.css">
    <!-- End css copy -->
    <!-- Js copy -->
    <script src="jscopy/easing.js"></script>
    <script src="jscopy/jquery.bxslider.min.js"></script>
    <script src="jscopy/jquery.easing.1.3.js"></script>
    <script src="jscopy/jquery.mCustomScrollbar.concat.min.js"></script>
    <script src="jscopy/jquery.swipebox.min.js"></script>
    <script src="jscopy/jquery.bxslider.min.js"></script>
    <script src="jscopy/swfobject.js"></script>
    <script src="jscopy/wow.min.js"></script>
    <script src="jscopy/jquery-1.11.1.min.js"></script>
    <script src="jscopy/jquery-1.8.2.min.js"></script>
    <!-- End JS copy -->

    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</head>
<body>
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
                        <li class="active"><a href="Quanlytaikhoan.jsp">Quản lý tài khoản</a></li>
                        <li><a href="QuanLyDeTai.jsp">Quản lý đề tài</a></li>
                        <li><a href="KiemTraSaoChep.jsp">Kiểm tra sao chép</a></li>
                        <li><a href="SoSanh.jsp">So sánh</a></li>
                        <li><a href="Loc.jsp">Lọc</a></li>
                    </ul>
                    <div style="padding-top:8px;">
                        <!-- <label class="col-md-offset-3" style="padding-top:8px;">Admin</label> -->
                        <a href="DangNhapChung.jsp" class="btn btn-primary pull-right">Đăng xuất</a>
                    </div>
                </div>
            </nav>
        </div>
        <div class="row">
            <div class="panel panel-default">
                <div class="panel-body">
                    <a href="TimDanhSachTaiKhoan.jsp" class="button2 hvr-shutter-in-vertical">Danh sách tài khoản</a>
                    <a href="TaoTaiKhoan.jsp"  class="button2 hvr-shutter-in-vertical">Tạo tài khoản</a>
                    <a href="ImportTaiKhoan.jsp" class="button2 hvr-shutter-in-vertical" >Import tài khoản</a>
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