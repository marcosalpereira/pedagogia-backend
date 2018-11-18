package br.org.na.pedagogia.security;

import java.io.IOException;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.filter.GenericFilterBean;

public class JWTAuthenticationFilter extends GenericFilterBean {

	public void doFilter(ServletRequest request,
			ServletResponse response,
			FilterChain filterChain
			) throws IOException, ServletException {

		Authentication authentication = TokenAuthenticationService.getAuthentication((HttpServletRequest) request);

		SecurityContextHolder.getContext().setAuthentication(authentication);

		if (authentication != null && authentication.isAuthenticated()) {
			//renew
			TokenAuthenticationService.addAuthentication( (HttpServletResponse) response, authentication);
		}

		filterChain.doFilter(request, response);

	}


}
