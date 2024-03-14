package app07;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserRepo {
	private static UserRepo instance = new UserRepo();
	
	public static UserRepo getInstance() {
		return instance;
	}


	private UserRepo() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

	public User findUser(User user) {
		String sql = "select * from user where id =? and password = ?";
		try(Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/dongsu", "root", "root");
				PreparedStatement stmt = conn.prepareStatement(sql);){
			stmt.setString(1, user.getId());
			stmt.setString(2, user.getPassword());
			try(ResultSet rs = stmt.executeQuery()){
				if(rs.next()) {
					String role = rs.getString("role");
					user.setRole(role);
					
					return user;
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	
	public int insertUser(User user,Connection conn) {
		String sql = "insert into user (id,password) values(?,?)";
		try(PreparedStatement stmt = conn.prepareStatement(sql);){
			stmt.setString(1, user.getId());
			stmt.setString(2, user.getPassword());
			
			return stmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}
	
	public boolean existId(String id, Connection conn) {
		String sql= "select count(*)from user where id =?";
		try(PreparedStatement stmt = conn.prepareStatement(sql)){
			stmt.setString(1, id);
			try(ResultSet rs = stmt.executeQuery()){
				if(rs.next()) {
					return rs.getBoolean(1);
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	
	}
	
}