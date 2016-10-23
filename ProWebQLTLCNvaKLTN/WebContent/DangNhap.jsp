<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/bootstrap.min.js"></script>
</head>
<body>
    <div class="container" id="FrmDangNhap">
        <div class="row">
            <img src="header.jpg" class="img-rounded" alt="Cinque Terre" width="100%">
        </div>
        <div class="modal-dialog modal-sm">
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="pannel-header">Đăng nhập</h4>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <input type="text" name="txtTenTaiKhoanDN" class="form-control"
                               placeholder="Tên tài khoản ..." >
                    </div>
                    <div class="form-group">
                        <input type="password" name="txtMatKhauDN" class="form-control" placeholder="Mật khẩu ...">
                    </div>
                </div>
                <div class="modal-footer">
                    <a  class="btn btn-primary" href="ChucNangAdmin.jsp">Đăng nhập</a>
                    <a class="btn btn-danger" href="TrangChu.jsp">Hủy</a>
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