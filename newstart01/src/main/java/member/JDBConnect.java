package member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class JDBConnect {
	
	Connection conn;
	Statement stmt;
	PreparedStatement psmt;
	ResultSet rs;
	
	public JDBConnect() {
		
	}
	
	public void close() {
		try {
			if(rs!=null)rs.close();
			if(stmt!=null)stmt.close();
			if(psmt!=null)psmt.close();
			if(conn!=null)conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
}
