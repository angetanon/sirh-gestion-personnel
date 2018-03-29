package dev.sgp.filter;

import java.io.IOException;
import java.nio.file.DirectoryStream.Filter;

import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class CharsetFilter implements Filter {



	   public void init(FilterConfig config) throws ServletException {

	     

	   }



	   public void doFilter(ServletRequest request, ServletResponse response, FilterChain next)

	           throws IOException, ServletException {



	       // Respect the client-specified character encoding

	       // (see HTTP specification section 3.4.1)

	       request.setCharacterEncoding("UTF-8");

	       

	       // Set the default response content type and encoding

	       response.setContentType("text/html; charset=UTF-8");

	       response.setCharacterEncoding("UTF-8");



	       next.doFilter(request, response);

	   }



	   public void destroy() {

	   }



	@Override
	public boolean accept(Object entry) throws IOException {
		// TODO Auto-generated method stub
		return false;
	}

	}