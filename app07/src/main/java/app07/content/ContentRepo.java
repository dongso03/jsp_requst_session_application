package app07.content;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import app07.UserRepo;

public class ContentRepo {
	private static ContentRepo crepoinstance = new ContentRepo();
	
	public static ContentRepo getInstance() {
		return crepoinstance;
	}
	
	
	
	private ContentRepo() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	public List<Content> getAll(List<Content> list) {
		String sql = "SELECT * FROM content";
		list = new ArrayList<Content>();
		try (Connection conn
				= DriverManager.getConnection("jdbc:mysql://localhost:3306/dongsu", "root", "root");
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(sql)) {
			
			while (rs.next()) {
				int no = rs.getInt("no");
				String heading = rs.getString("heading");
				String text = rs.getString("text");
				
				list.add(new Content(no,heading,text));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
}
