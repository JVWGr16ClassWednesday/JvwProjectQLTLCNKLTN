package myPackage;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/QuanLyTaiKhoanServlet")
public class QuanLyTaiKhoanServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public QuanLyTaiKhoanServlet() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("row_id");
		try {
			
//			
			int res = QuanLyDB.KiemTraRole(Integer.parseInt(id));
			System.out.println(res);
			if (res == 1)
			{
				QuanLyDB.XoaTaiKhoan(Integer.parseInt(id));
				response.sendRedirect("DanhSachTaiKhoanGV.jsp");
				
			}
			if(res == 2)
			{
				QuanLyDB.XoaTaiKhoan(Integer.parseInt(id));
				response.sendRedirect("DanhSachTaiKhoanSV.jsp");
				
			}
//			System.out.println();
			
		} catch (NumberFormatException e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
