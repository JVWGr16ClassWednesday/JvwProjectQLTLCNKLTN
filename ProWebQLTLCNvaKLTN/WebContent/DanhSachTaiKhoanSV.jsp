<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<sql:setDataSource driver="com.mysql.jdbc.Driver"
	url="jdbc:mysql://localhost/projectweb" user="root" password="root" />
<sql:query var="items"
	sql="SELECT id, username FROM users WHERE accessright='2'" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/font-awesome.min.css">
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script>
    	function XoaTaiKhoan(row_id){
    		console.log(row_id);
    		document.getElementById('row_id').value = row_id;
    	}
</script>
</head>
<body>
	<div class="container">
		<form action="QuanLyTaiKhoanServlet" method="post">
			<div class="row">
				<img src="header.jpg" class="img-rounded" alt="Cinque Terre"
					width="100%">
				<hr />
			</div>
			<div class="row">
				<nav class="navbar navbar-default">
				<div class="container-fluid">
					<ul class="nav navbar-nav">
						<li><a href="TrangChu.jsp"> Trang chủ</a></li>
						<li class="active"><a href="Quanlytaikhoan.jsp">Quản lý
								tài khoản</a></li>
						<li><a href="QuanLyDeTai.jsp">Quản lý đề tài</a></li>
						<li><a href="KiemTraSaoChep.jsp">Kiểm tra sao chép</a></li>
						<li><a href="SoSanh.jsp">So sánh</a></li>
						<li><a href="Loc.jsp">Lọc</a></li>
					</ul>
					<div style="padding-top: 8px;">
						<!--<label class="col-md-offset-3" style="padding-top:8px;">Admin</label>  -->
						<a href="DangNhapChung.jsp" class="btn btn-primary pull-right">Đăng
							xuất</a>
					</div>
				</div>
				</nav>
			</div>
			<div class="row">
				<div class="panel panel-default">
					<div class="panel-heading">Danh sách tài khoản Sinh Viên</div>
					<div class="panel-body">
						<div class="table-responsive">
							<table class="table table-striped table-bordered table-hover">
								<thead>
									<tr>
										<th class="text-center">ID</th>
										<th class="text-center">Email</th>
										<th class="text-center">Hiệu chỉnh</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${items.rowsByIndex}" var="row">
										<tr>
											<c:forEach items="${row}" var="col">
												<td>${col}</td>
											</c:forEach>
											<td class="text-center">
												<button type="button" class="btn btn-warning btn-xs">
													<span class="fa fa-unlock" aria-hidden="true"></span> Khóa
												</button>
												<button type="button" class="btn btn-info btn-xs"
													data-toggle="modal" data-target="#myModal">
													<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
													Sửa
												</button>
												<button type="button" class="btn btn-danger btn-xs"
													data-toggle="modal" data-target="#modalXoa" onclick="XoaTaiKhoan('${row[0]}')" name="btnXoa">
													<span class="glyphicon glyphicon-minus" aria-hidden="true"></span>Xóa
												</button>
											</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="panel panel-default">
					<div class="panel-body">
						<a href="TimDanhSachTaiKhoan.jsp" class="btn btn-primary">Trở về</a>
					</div>
				</div>
			</div>
	</div>
	<!-- Start Modal sửa tài khoản -->
	<div class="modal fade" id="myModal" role="dialog">
		<div class="modal-dialog modal-md">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Sửa thông tin tài khoản</h4>
				</div>
				<div class="modal-body">
					<div class="form-group">
						<label for="id">Mã GV/ Mã SV :</label> <input type="text"
							class="form-control" id="id" required value="12110247">
					</div>
					<div class="form-group">
						<label for="name">Họ tên :</label> <input type="text"
							class="form-control" id="name" required
							value="Trịnh Thị Thanh Xuân">
					</div>
					<div class="form-group">
						<label for="email">Email :</label> <input type="email"
							class="form-control" id="email" required value="xuan@gmail.com">
					</div>
					<label>Quyền hệ thống</label> <br /> <br /> <label><input
						type="radio" value="1">Quyền Giảng Viên</label> <br /> <br /> <label><input
						type="radio" value="2">Quyền Sinh Viên</label>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary">Sửa</button>
					<button type="button" class="btn btn-danger" data-dismiss="modal">Đóng</button>
				</div>
			</div>
		</div>
	</div>
	<!-- End Modal Sửa tài khoản  -->
	<!-- Start Modal xóa tài khoản -->
	<div class="modal fade" id="modalXoa" role="dialog">
		<div class="modal-dialog modal-md">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Sửa thông tin tài khoản</h4>
				</div>
				<div class="modal-body">
					<div class="form-group">
						<input type="hidden" id="row_id" name="row_id" />
						<label>Bạn có muốn xóa tài khoản này</label>
					</div>
				</div>
				<div class="modal-footer">
					<button type="submit" class="btn btn-primary">Xóa</button>
					<button type="button" class="btn btn-danger" data-dismiss="modal">Hủy</button>
				</div>
			</div>
		</div>
	</div>
	<!-- End Modal Xóa tài khoản  -->
	<div class="container">
		<div class="row"></div>
		<div id="footer">
			<hr>
			<h5 class="text-center text-danger">Khoa Công nghệ Thông tin -
				Đại học Sư phạm Kỹ thuật TP. Hồ Chí Minh</h5>
			<h5 class="text-center text-danger">Số 1, Võ Văn Ngân, Thủ Đức,
				TP. Hồ Chí Minh</h5>
		</div>
		</form>
	</div>
</body>
</html>