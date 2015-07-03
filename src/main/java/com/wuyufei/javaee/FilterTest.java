package com.wuyufei.javaee;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

/**
 * Servlet Filter implementation class FilterTest
 */
public class FilterTest implements Filter {
	FilterConfig config;
	
    /**
     * Default constructor. 
     */
    public FilterTest() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		// place your code here
		long before = System.currentTimeMillis();
		long duration = System.currentTimeMillis() - before;
		String msg =
			"CGIServlet duration: "
				+ duration
				+ "milliseconds ";
			System.out.println("filter msg is "+msg);
		config.getServletContext().log(msg);
		// pass the request along the filter chain
		chain.doFilter(request, response);
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
		this.config = config;
	}

}
