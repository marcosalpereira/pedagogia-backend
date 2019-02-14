package br.org.na.pedagogia.auth;

import java.util.Date;
import java.util.List;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.authority.SimpleGrantedAuthority;

import io.jsonwebtoken.Claims;
import io.jsonwebtoken.ExpiredJwtException;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;

public class TokenAuthenticationService {

	private static final String SECRET = "plataoJal";
	private static final String TOKEN_PREFIX = "Bearer";
	private static final String HEADER_STRING = "Authorization";

	public static void addAuthentication(HttpServletResponse res, Authentication auth) {
		Set<String> roles = auth.getAuthorities().stream()
				.map(r -> r.getAuthority()).collect(Collectors.toSet());

		String JWT = Jwts.builder()
				.setSubject(auth.getName())
				.setExpiration(new Date(System.currentTimeMillis() + TimeUnit.HOURS.toMillis(1)))
				.claim("ROLES", String.join(",", roles))
				.signWith(SignatureAlgorithm.HS512, SECRET)
				.compact();

		String token = TOKEN_PREFIX + " " + JWT;
		res.addHeader(HEADER_STRING, token);
		res.addHeader("Access-Control-Expose-Headers", HEADER_STRING);
	}

	public static Authentication getByToken(String token) {
		Claims body;
		try {
			body = Jwts.parser()
					.setSigningKey(SECRET)
					.parseClaimsJws(token.replace(TOKEN_PREFIX, ""))
					.getBody();
		} catch (ExpiredJwtException e) {
			return null;
		}

		String user = body.getSubject();
		if (user == null) {
			return null;
		}

		String roles = (String) body.get("ROLES");

		List<SimpleGrantedAuthority> authorities = Stream.of(roles.split(","))
				.map (role -> new SimpleGrantedAuthority(role))
				.collect(Collectors.toList());

		return new UsernamePasswordAuthenticationToken(user, null, authorities);
	}

	public static Authentication getAuthentication(HttpServletRequest request) {
		String token = request.getHeader(HEADER_STRING);
		if (token != null) {
			return getByToken(token);
		}
		return null;
	}
}
