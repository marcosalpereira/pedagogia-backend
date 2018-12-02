//package br.org.na.pedagogia.security;
//
//import org.apache.catalina.connector.Connector;
//import org.springframework.boot.web.embedded.tomcat.TomcatServletWebServerFactory;
//import org.springframework.boot.web.servlet.server.ServletWebServerFactory;
//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.Configuration;
//
//@Configuration
//public class ConnectorConfig {
//
//	@Bean
//	public ServletWebServerFactory servletContainer() {
//		TomcatServletWebServerFactory tomcat = new TomcatServletWebServerFactory();
//		tomcat.addAdditionalTomcatConnectors(createStandardConnector());
//		return tomcat;
//	}
//
//	private Connector createStandardConnector() {
//		Connector connector = new Connector("org.apache.coyote.http11.Http11NioProtocol");
//		connector.setScheme("http");
//		connector.setPort(8080);
//		connector.setSecure(false);
//		connector.setRedirectPort(8443);
//		return connector;
//	}
//
//	//	@Bean
//	//	public EmbeddedServletContainerFactory servletContainer() {
//	//		TomcatEmbeddedServletContainerFactory tomcat = new TomcatEmbeddedServletContainerFactory() {
//	//			@Override
//	//			protected void postProcessContext(Context context) {
//	//				SecurityConstraint securityConstraint = new SecurityConstraint();
//	//				securityConstraint.setUserConstraint("CONFIDENTIAL");
//	//				SecurityCollection collection = new SecurityCollection();
//	//				collection.addPattern("/*");
//	//				securityConstraint.addCollection(collection);
//	//				context.addConstraint(securityConstraint);
//	//			}
//	//		};
//	//		tomcat.addAdditionalTomcatConnectors(getHttpConnector());
//	//		return tomcat;
//	//	}
//}