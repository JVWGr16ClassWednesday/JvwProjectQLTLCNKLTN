package myPackage;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.omg.CORBA.PUBLIC_MEMBER;

import com.sun.beans.util.Cache;
import com.sun.org.apache.xalan.internal.xsltc.compiler.sym;
import com.sun.org.apache.xerces.internal.util.SynchronizedSymbolTable;
import com.sun.xml.internal.bind.CycleRecoverable.Context;

@WebServlet("/UploadFileServlet")
@MultipartConfig(maxFileSize = 16177215)
public class ThemDeTaiServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private final String UPLOAD_DIRECTORY = System.getProperty("user.dir")+File.separator +"JvwProjectQLTLCNKLTN"+File.separator
			+"ProWebQLTLCNvaKLTN"+File.separator+"WebContent"+File.separator+"SourceFile";
	
//	private final String test_directory = System.getProperty("user.dir");


	public ThemDeTaiServlet() {
		super();
		// TODO Auto-generated constructor stub
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		ServletContext servletContext = getServletContext();
//		String contextPath = servletContext.getRealPath(File.separator);
//		PrintWriter out = response.getWriter();
////		out.println("<br/>File system context path (in TestServlet): " + contextPath);
//		String UPLOAD_DIRECTORY = contextPath + File.separator +"SourceFile";
//		out.println("<br/>File system context path (Upload directory): " + UPLOAD_DIRECTORY);
//		ServletContext servletContext = getServletContext();
//		String contextPath = servletContext.getRealPath(File.separator);
		
//		System.out.println("context path"+ contextPath);
		
		String name_file = " ";
		
		if(ServletFileUpload.isMultipartContent(request)){
			try {
				
				Map<String, String> map =new HashMap();
				
				List<FileItem> multiparts = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);

				for(FileItem item : multiparts){
//					System.out.println(item.isFormField());
					if(!item.isFormField()){
						String name = new File(item.getName()).getName();
						name_file = name;
						System.out.println(name_file);
						item.write( new File(UPLOAD_DIRECTORY + File.separator + name));
						
					}
					else {
						map.put(item.getFieldName(), item.getString());
					}
				}
				System.out.println(name_file);
				
				Statement st = ConnectionDB.getConnection().createStatement();
				int i = 0;
				i = st.executeUpdate("insert into detai(tendt, motadt, loaidt, truongnhom, masvnt, thanhvien, masvtv, gvhd, magvhd, gvpb, magvpb, diem, nam, tailieu) "
						+ "values ('" + map.get("tendt") + "','" + map.get("motadt") + "','" + map.get("selloaidt") + "','" +  map.get("truongnhom")
						+ "','" +  map.get("masvnt") + "','" +  map.get("thanhvien") + "','" +  map.get("masvtv") + "','" +  map.get("gvhd") + "','" 
						+  map.get("idgvhd") + "','" +  map.get("gvpb") + "','" +  map.get("idgvpb") + "','" +  map.get("score") + "','" +  map.get("year") 
						+ "','" + "SourceFile"+ "/" + name_file + "')");
				
				
				if(i>0){
					response.sendRedirect("XemDanhSachDeTai.jsp");
				}
				else
					response.sendRedirect("ThemDeTai.jsp");

				System.out.println(map.get("tendt"));

				//File uploaded successfully
				request.setAttribute("message", "File Uploaded Successfully");
			} catch (Exception ex) {
				request.setAttribute("message", "File Upload Failed due to " + ex);
			}          

		}else{
			request.setAttribute("message",
					"Sorry this Servlet only handles file upload request");
		}


	}

}
