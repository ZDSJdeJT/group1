package servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDao;
import modle.User;
import utils.DataBaseUtil;

/**
 * Servlet implementation class changepasswordservlet
 */
@WebServlet("/changepasswordservlet")
public class changepasswordservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	  @Override
	    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	        doPost(req, resp);
	    }

		/**
		 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
		 */
	    @Override
	    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	    	resp.setContentType("text/html;charset=utf-8");
	        req.setCharacterEncoding("utf-8");

	        String phonenumber = req.getParameter("phonenumber");
	        String username = req.getParameter("username");
	        String password = req.getParameter("password");

	        Connection conn = DataBaseUtil.getConn();
	        UserDao userDao = new UserDao();
	        //根据密码查询用户
	        User user  = userDao.changpsw(username, phonenumber);
	        //判断user是否为空
	        if (user != null) {


	    	        try {
		    	        String sql = "UPDATE USERS SET password=? where username=?";
	                PreparedStatement ps = conn.prepareStatement(sql);
	                ps.setString(1, password);
	                ps.setString(2, username);

	                //执行更新操作
	                ps.executeUpdate();

	                //释放资源
	                ps.close();
	
		            }catch (SQLException e) 
	    	        {
	                    e.printStackTrace();
	    	        }
	            //转发到重置密码页面

		            req.getRequestDispatcher("changepswsuccessful.jsp").forward(req, resp);
	            }else{
		            //登录失败
		            req.getRequestDispatcher("changepswunsuccessful.jsp").forward(req, resp);}
	    }
}
	            /**
	             response.sendRedirect(url)跳转到指定的URL地址，产生一个新的request，所以要传递参数只有在url后加参
	             数，如：
	             url?id=1.
	             request.getRequestDispatcher(url).forward(request,response)是直接将请求转发到指定URL，所以该请求
	             能够直接获得上一个请求的数据，也就是说采用请求转发，request对象始终存在，不会重新创建。而
	             sendRedirect()会新建request对象，所以上一个request中的数据会丢失。
	             */

	    

