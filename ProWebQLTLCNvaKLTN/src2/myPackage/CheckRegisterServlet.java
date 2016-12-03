package myPackage;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CheckRegisterServlet
 */
@WebServlet("/CheckRegisterServlet")
public class CheckRegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckRegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
    boolean check_email(String email){
    	
    	try {
			Statement st = ConnectionDB.getConnection().createStatement();
			ResultSet i = st.executeQuery("select * from users where username = '"+email+"'");
			while (i.next()) {
				return true;
				
			}
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	
    	return false;
    }
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    try {
			Statement st = ConnectionDB.getConnection().createStatement();
			 	String id = request.getParameter("id");
			    String name = request.getParameter("name");
			    String email = request.getParameter("email");
			    String role = request.getParameter("Check_Quyen");
			    String password =request.getParameter("password");
			    int i = 0;
			    if (check_email(email)) {
			    	response.sendRedirect("TaoTaiKhoan.jsp");
				}else {
					i = st.executeUpdate("insert into users(id, username, password, myname, accessright) values ('" + id + "','" + email + "','" + password + "','" + name + "','" + role + "')");
				}
			    if (i>0) {
			    	
			    	if(role.equals("1")){
				    	response.sendRedirect("DanhSachTaiKhoanGV.jsp");
				    }else{
				    	response.sendRedirect("DanhSachTaiKhoanSV.jsp");
				    }
			    }
				
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			System.out.println(e);
			response.sendRedirect("TaoTaiKhoan.jsp");
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
