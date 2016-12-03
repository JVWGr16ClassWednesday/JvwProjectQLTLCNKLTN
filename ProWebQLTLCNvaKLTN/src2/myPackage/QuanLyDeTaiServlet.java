package myPackage;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.URL;
import java.nio.file.Files;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

@WebServlet("/QuanLyDeTaiServlet")
public class QuanLyDeTaiServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private final String UPLOAD_DIRECTORY = System.getProperty("user.dir")+File.separator +"JvwProjectQLTLCNKLTN"+File.separator
			+"ProWebQLTLCNvaKLTN"+File.separator+"WebContent"+File.separator+"SourceFile";
	public QuanLyDeTaiServlet() {
		super();
	}
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

//		ServletContext servletContext = getServletContext();
//		String contextPath = servletContext.getRealPath(File.separator);
//		PrintWriter out = response.getWriter();
//		out.println("<br/>File system context path (in TestServlet): " + contextPath);
//		String UPLOAD_DIRECTORY = contextPath +File.separator +"WebContent"+File.separator+"SourceFile";
//		out.println("<br/>File system context path (Upload directory): " + UPLOAD_DIRECTORY);
		
		String name_file = " ";

		if(ServletFileUpload.isMultipartContent(request)){
			try {

				Map<String, String> map =new HashMap();

				List<FileItem> multiparts = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);

				for(FileItem item : multiparts){
					if(!item.isFormField()){
						String name = new File(item.getName()).getName();
						name_file = "SourceFile" + "/" + name;
						System.out.println("----->"+name_file);
						item.write( new File(UPLOAD_DIRECTORY + File.separator + name));

					}
					else {
						map.put(item.getFieldName(), item.getString());
					}
				}
				
				Statement statement = null;
				Connection connection = ConnectionDB.getConnection();
				statement = connection.createStatement();
				String tendt = map.get("tendetai_them"); 
				System.out.println(tendt);
				
				String updateTableSQL = "UPDATE detai" + " SET "
						+ "tendt = '"+ map.get("tendetai_them")+"'" + ","
						+ "motadt = '" + map.get("motadt_them")+"'" + ","
						+ "loaidt ='" + map.get("selloaidt_them")+"'" + ","
						+ "truongnhom ='" + map.get("truongnhom_them")+"'" + ","
						+ "masvnt ='" + map.get("idnt_them")+"'" + ","
						+ "thanhvien ='" + map.get("thanhvien_them")+"'" + ","
						+ "masvtv='" + map.get("idtv_them")+"'" + ","
						+ "gvhd ='" + map.get("gvhd_them")+"'" + ","
						+ "magvhd ='" + map.get("idgvhd_them")+"'" +","
						+ "gvpb ='" + map.get("gvpb_them")+"'" + ","
						+ "magvpb ='" + map.get("idgvpb_them")+"'" + ","
						+ "diem ='" + map.get("score_them")+"'" +","
						+ "nam ='" + map.get("year_them")+"'" + ","
						+ "tailieu='" + name_file+"'"
						+ " WHERE id='"+ map.get("row_id")+"'"; 
				System.err.println(updateTableSQL);
				statement.execute(updateTableSQL);
				if(updateTableSQL!=null && !updateTableSQL.isEmpty()){
				    //processing here
					System.out.println("Record is updated to detai table!");
					response.sendRedirect("XemDanhSachDeTai.jsp");
				}
				else {
					System.out.println("Record don't update to detai table!");
				}
				request.setAttribute("message", "File Uploaded Successfully");
			} catch (Exception ex) {
				request.setAttribute("message", "File Upload Failed due to " + ex);
			}          

		}else{
			request.setAttribute("message",
					"Sorry this Servlet only handles file upload request");
		}
}

/**
 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
 */
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	// TODO Auto-generated method stub
	doGet(request, response);
}
}
