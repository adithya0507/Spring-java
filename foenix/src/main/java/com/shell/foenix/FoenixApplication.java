package com.shell.foenix;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;




@SpringBootApplication
public class FoenixApplication extends SpringBootServletInitializer {

	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
		return application.sources(FoenixApplication.class);
	}
	public static void main(String[] args) {
		SpringApplication.run(FoenixApplication.class, args);
	}
}


/*public class FoenixApplication implements WebApplicationInitializer {

	@Override
	public void onStartup(ServletContext servletContext) throws ServletException {
		AnnotationConfigWebApplicationContext rootContext = new AnnotationConfigWebApplicationContext(); 
		servletContext.addListener(new ContextLoaderListener(rootContext)); 
		DispatcherServlet ds = new DispatcherServlet();
		ds.setApplicationContext(rootContext);

		ServletRegistration.Dynamic dispatcher = servletContext.addServlet("dispatcher", ds);
		dispatcher.setLoadOnStartup(1);
		dispatcher.addMapping("/"); 
}*/

