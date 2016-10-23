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
                        <li class="active"><a href="QuanLyDeTaiGV.jsp">Quản lý đề tài</a></li>
                        <li><a href="KiemTraSaoChepGV.jsp">Kiểm tra sao chép</a></li>
                    </ul>
                    <div style="padding-top:8px;">
                        <!--<label class="col-md-offset-6" style="padding-top:8px;">Tên Giảng Viên</label>  -->
                        <a href="DangNhapChung.jsp" class="btn btn-primary pull-right">Đăng xuất</a>
                    </div>
                </div>
            </nav>
        </div>
        <div class="row">
            <div class="panel panel-default">
                <div class="panel-heading">Danh sách tài khoản đề tài</div>
                <div class="panel-body">
                    <div class="table-responsive">
                        <table class="table table-striped table-bordered table-hover">
                            <thead>
                                <tr>
                                    <th>STT</th>
                                    <th>Tên Đề Tài</th>
                                    <th>Loại Đề Tài</th>
                                    <th>GVHD</th>
                                    <th>Tuỳ Chỉnh</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>Tìm hiểu NodeJS - Viết ứng dụng minh họa</td>
                                    <td>TLCN</td>
                                    <td>Nguyễn Minh Đạo</td>
                                    <td class="text-center">
                                        <button type="button" class="btn btn-info btn-xs" data-toggle="modal" data-target="#ChinhSuaDeTai">
                                            <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span> Sửa
                                        </button>
                                        <button type="button" class="btn btn-danger btn-xs" data-toggle="modal" data-target="#modalXoaDeTai">
                                            <span class="glyphicon glyphicon-minus" aria-hidden="true"></span> Xóa
                                        </button>
                                    </td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>Xây dựng website giải trí phong thủy</td>
                                    <td>TLCN</td>
                                    <td>Mai Tuấn Khôi</td>
                                    <td class="text-center">
                                        <button type="button" class="btn btn-info btn-xs" data-toggle="modal" data-target="#ChinhSuaDeTai">
                                            <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span> Sửa
                                        </button>
                                        <button type="button" class="btn btn-danger btn-xs" data-toggle="modal" data-target="#modalXoaDeTai">
                                            <span class="glyphicon glyphicon-minus" aria-hidden="true"></span> Xóa
                                        </button>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>

    </div>
    <!-- Start Modal sửa đề tài -->
    <div class="modal fade" id="ChinhSuaDeTai" role="dialog">
        <div class="modal-dialog modal-md">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Sửa thông tin Đề Tài</h4>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label for="id">Tên đề tài:</label>
                        <input type="text" class="form-control" id="tendetai" required value="Phát triển website quản lý hội nghị khoa học">
                    </div>
                    <div class="form-group">
                        <label for="name">Loại đề tài :</label>
                        <input type="text" class="form-control" id="loaidetai" required value="TLNC">
                    </div>
                    <div class="form-group">
                        <label for="name">Trưởng nhóm :</label>
                        <input type="text" class="form-control" id="truongnhom" required value="Trịnh Thị Thanh Xuân">
                        <label for="name">Mã SV :</label>
                        <input type="text" class="form-control" id="idnt" required value="12110247">
                    </div>
                    <div class="form-group">
                        <label for="name">Thành viên :</label>
                        <input type="text" class="form-control" id="thanhvien" required value="nguyễn văn A">
                        <label for="name">Mã SV :</label>
                        <input type="text" class="form-control" id="idtv" required value="12110123">

                        <input type="file" />
                        <button class="btn btn-primary">Upload</button>
                    </div>
                    <div class="form-group">
                        <label for="name">Giáo Viên hướng dẫn :</label>
                        <input type="text" class="form-control" id="gvhd" required value="Lê Văn Vinh">
                        <label for="name">Mã GVHD :</label>
                        <input type="text" class="form-control" id="idgvhd" required value="101124">
                    </div>
                    <div class="form-group">
                        <label for="name">Giáo Viên phản biện :</label>
                        <input type="text" class="form-control" id="gvpb" required value="Nguyễn Thành Sơn">
                        <label for="name">Mã GVPB :</label>
                        <input type="text" class="form-control" id="idgvpb" required value="101225">
                    </div>
                    <div class="form-group">
                        <label for="name">Điểm đề tài:</label>
                        <input type="text" class="form-control" id="score" required value="9">
                        <label for="name">Năm :</label>
                        <input type="text" class="form-control" id="year" required value="2016">
                    </div>
                    <div class="form-group">
                        <label for="name">Tài liệu đính kèm:</label>
                        <a href="">Link liên kết tới nơi chứa tài liệu</a>
                        <input type="file" />
                        <button class="btn btn-primary">Upload</button>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary">Sửa</button>
                    <button type="button" class="btn btn-danger" data-dismiss="modal">Đóng</button>
                </div>
            </div>
        </div>
    </div>
    <!-- Start Modal xóa đề tài -->
    <div class="modal fade" id="modalXoaDeTai" role="dialog">
        <div class="modal-dialog modal-md">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Xóa đề tài</h4>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label>Bạn có muốn xóa đề tài này</label>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary">Xóa</button>
                    <button type="button" class="btn btn-danger" data-dismiss="modal">Hủy</button>
                </div>
            </div>
        </div>
    </div>
    <!-- End Modal Xóa Đề Tài  -->
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