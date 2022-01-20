package member;

public class memberDAO extends JDBConnect{
	
	
	public int select() {
		JDBConnect jdbc = new JDBConnect();
		String sql = "select * from board";
		psmt = jdbc.conn.prepareStatement(sql);
	}
}
