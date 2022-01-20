package servlettest;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Test") //사용자가 주소창에 Test 라고 호출하면
public class Test extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Test() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter pw = response.getWriter(); //이 서블릿에 요청이 들어온다면 동작시킬 것
		pw.println("<h1>Test Servlet</h1>");
		//pw.println("<input type='text'>"); //쌍따옴표 안에는 똑같은 쌍따옴표가 들어갈 수 없음
		pw.println("<form action='./Test' method='post'>"); //자기 자신에게 돌아오지만 get타입이 아닌 post타입
														// post 타입은 주소창에 기록이 남지 않음
		pw.println("<input type='text' name='page'>"); // ./Test?page=11 (페이지는 x 로 들어감)
		pw.println("<button type=\"submit\">submit</button>"); //쌍따옴표 안에 쌍따옴표를 쓰고 싶으면
															// 역슬래쉬를 쳐줘야함
		pw.println("</form>");
		
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("포스트형식");
		String page = request.getParameter("page"); //파라미터 형식이 page 라고 되어 있는 것들을 변수page로보냄
		System.out.println("page :" + page);
		//response.sendRedirect("./main.jsp?page="+page); //페이지이동 ( get방식 )
		
		RequestDispatcher rd = request.getRequestDispatcher("index.jsp"); //값을 가지고 그 곳으로 이동합니다
		request.setAttribute("page", page);
		rd.forward(request, response); // 페이지이동 ( post 방식 )
	}

}
