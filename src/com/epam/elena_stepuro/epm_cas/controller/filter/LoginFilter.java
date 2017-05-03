package com.epam.elena_stepuro.epm_cas.controller.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.epam.elena_stepuro.epm_cas.controller.manager.ConfigurationManager;

/**
 * Servlet Filter implementation class LoginFilter
 */
public class LoginFilter implements Filter {
	
	private ServletContext context;

	/**
	 * Default constructor.
	 */
	public LoginFilter() {

	}

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		this.context.log("RequestLoggingFilter destroyed");
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		this.context.log("RequestLoggingFilter started");

		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse res = (HttpServletResponse) response;
		if (req.getSession().getAttribute("login") == null && !"login".equals(req.getParameter("command"))) {
			this.context.log("User logged out from system!");
			String page = ConfigurationManager.getProperty("path.page.index");
			res.sendRedirect(req.getContextPath() + page);
		} else {
			chain.doFilter(request, response);
			System.out.println(req.getParameter("command"));
		}
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		this.context = fConfig.getServletContext();
		this.context.log("RequestLoggingFilter initialized");
	}

}
