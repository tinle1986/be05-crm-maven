package com.ttlecom.filter;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

// filter de phan quyen user
@WebFilter(filterName = "authoFilter", urlPatterns = "/*")
public class authoFilter extends HttpFilter {
	@Override
	protected void doFilter(HttpServletRequest request, HttpServletResponse response, FilterChain chain) throws IOException, ServletException {
		// phan quyen nguoi dung
		// admin co the vao dc all trang
		// loai nguoi dung khac khong the vao quan ly user & phan quyen
		System.out.println("Authorization doFilter");

		HttpSession session = request.getSession();

		String roleName = "";
		if (session.getAttribute("USER_ROLE") != null)
			roleName = session.getAttribute("USER_ROLE").toString();

		String servletPath = request.getServletPath();

		if (servletPath.startsWith("/role") || servletPath.startsWith("/user")) {
			if (roleName.equalsIgnoreCase("ROLE_ADMIN")) {
				chain.doFilter(request, response);
			} else {
				request.setCharacterEncoding("UTF-8");
				response.sendRedirect(request.getContextPath() + "/dashboard");
			}
		} else
			chain.doFilter(request, response);
	}
}
