package myPackage;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.sun.org.apache.xml.internal.security.Init;

import sun.print.resources.serviceui;
import sun.util.resources.cldr.ja.CalendarData_ja_JP;

public class QuanLyDB {

	public static boolean XoaTaiKhoan(int maGV) {
		Statement statement = null;
		try (Connection connection = ConnectionDB.getConnection()) {
			statement = connection.createStatement();
			
			String sql = "DELETE FROM users WHERE id='" + maGV + "'";
			System.out.println(sql);
			statement.execute(sql);
			statement.close();
			
			return true;
		}
		catch (Exception e) {
			// TODO: handle exception
		}
		
		return false;
	}
	public static int KiemTraRole(int maGV){
		Statement statement = null;
		int res = -1;
		try (Connection connection = ConnectionDB.getConnection()) {
			statement = connection.createStatement();
			
			String sql = "SELECT accessright FROM users WHERE id='" + maGV + "'";
			System.out.println(sql);
			ResultSet resultSet = statement.executeQuery(sql);
			while (resultSet.next()){
//				
				System.out.println("===============");
				System.out.println(resultSet.getInt("accessright"));

				res = resultSet.getInt("accessright");
				statement.close();
			}
			System.out.println(sql);
		}
		catch (Exception e) {
			// TODO: handle exception
		}
		return res;
	}
	
	public static String GetPathFile(int row_id) {
		Statement statement = null;
		String kq = " ";
		try (Connection connection = ConnectionDB.getConnection()) {
			statement = connection.createStatement();
			
			String sql = "SELECT * FROM users WHERE id='" + row_id + "'";
			System.out.println(sql);
			ResultSet resultSet = statement.executeQuery(sql);
			while (resultSet.next()){
//				
				System.out.println("===============");
				System.out.println(resultSet.getInt("accessright"));

				kq = resultSet.getString("file");
				statement.close();
			}
			System.out.println(sql);
		}
		catch (Exception e) {
			// TODO: handle exception
		}
		return kq;
		
		
	}
	
	
	/*Cap nhat du lieu khi nguoi dung chinh sua de tai*/
	
	public static String UpdateData(DeTai detai) {
		Statement statement = null;
		String kq = " ";
		try (Connection connection = ConnectionDB.getConnection()) {
			statement = connection.createStatement();
			
			String sql = "UPDATE detai SET"
							+ "tendt=" + detai.getTendt()
							+"motadt=" + detai.getMotadt()
							+"loaidt" + detai.getLoaidt()
							+"truongnhom" + detai.getTruongnhom()
							+"masvnt" + detai.getMasvtn()
							+"thanhvien" + detai.getThanhvien()
							+"masvtv" + detai.getMasvtv()
							+"gvhd" + detai.getGvhd()
							+"magvhd" + detai.getMagvhd()
							+"gvpb" + detai.getGvpb()
							+"magvpb" + detai.getMagvpb()
							+"diem" + detai.getDiem()
							+"nam" + detai.getDiem()
						+ " WHERE id="+detai.getId()+"'";
			System.out.println(sql);
			ResultSet resultSet = statement.executeQuery(sql);
			while (resultSet.next()){
//				
				System.out.println("===============");
				System.out.println(resultSet.getInt("accessright"));

				kq = resultSet.getString("file");
				statement.close();
			}
			System.out.println(sql);
		}
		catch (Exception e) {
			// TODO: handle exception
		}
		return kq;
		
	}
}
