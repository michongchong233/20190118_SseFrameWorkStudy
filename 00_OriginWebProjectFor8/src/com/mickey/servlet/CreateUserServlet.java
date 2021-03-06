package com.mickey.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mickey.service.impl.UserServiceImpl;

@WebServlet(
		urlPatterns = { "/createUser" }, 
		initParams = { 
				@WebInitParam(name = "createUser", value = "createUser")
		})
public class CreateUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//設定編碼格式
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		//默取請求信息
		String uname = request.getParameter("uname");
		String password = request.getParameter("password");
		Byte gender = Byte.parseByte(request.getParameter("gender"));
		int age = Integer.parseInt(request.getParameter("age"));
		//處理請求信息
		int updateNum = new UserServiceImpl().createUser(uname, password, gender, age);
		System.out.println("updateNum:" + updateNum);
		//響應處理結果
		if(updateNum > 0) response.sendRedirect("/00_OriginWebProjectFor8/UserSelectAll");
		
	}
}
