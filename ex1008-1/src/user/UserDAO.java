package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {
	
	private PreparedStatement pstmt;
	private ResultSet rs;
	private Connection conn;
	
	public UserDAO() {
		
		try {
			String dbUrl = "jdbc:mysql://localhost/testdb?serverTimezone=UTC&characterEncoding=UTF-8";
			String dbDriver = "com.mysql.cj.jdbc.Driver";
			
			Class.forName(dbDriver);
			conn = DriverManager.getConnection(dbUrl, "testuser", "testuser");
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
	}
	
	public int join(UserDTO dto) {
		
		String sql = "insert into exam1008 values(?, ?, ?, ?, ?, ?, ?)";
		try {
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getId());
			pstmt.setString(2, dto.getName());
			pstmt.setString(3, dto.getPassword());
			pstmt.setString(4, dto.getNick());
			pstmt.setString(5, dto.getAddress());
			pstmt.setString(6, dto.getTel());
			pstmt.setString(7, dto.getEmail());
			pstmt.executeUpdate();
			return 1;
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		return 0;
		
	}
	



}
