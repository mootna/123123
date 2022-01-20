package board;
//접근제어자
public class BoardDTO {
	//내 클래스에서만 접근 할 수 있음
	private String bno, btitle, bcount, lno, lname, bdate;

		public BoardDTO(String bno, String btitle, String bcount
				, String lno, String lname,String bdate) { //객체 만들어 주는 거
			//생긴건 메소드와 똑같으나 리턴 타입이 없고, 클래스명임
			this.bno = bno;
			this.btitle = btitle;
			this.bdate = bdate;
			this.bcount = bcount;
			this.lno = lno;
			this.lname = lname;
		}	
		
	public String getBno() {
		return bno;
	}

	public void setBno(String bno) {
		this.bno = bno;
	}

	public String getBtitle() {
		return btitle;
	}

	public void setBtitle(String btitle) {
		this.btitle = btitle;
	}

	public String getBcount() {
		return bcount;
	}

	public void setBcount(String bcount) {
		this.bcount = bcount;
	}

	public String getLno() {
		return lno;
	}

	public void setLno(String lno) {
		this.lno = lno;
	}

	public String getLname() {
		return lname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public String getBdate() {
		return bdate;
	}

	public void setBdate(String bdate) {
		this.bdate = bdate;
	}
	
}
