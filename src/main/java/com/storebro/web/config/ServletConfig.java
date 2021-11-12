package com.storebro.web.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.tiles3.TilesConfigurer;
import org.springframework.web.servlet.view.tiles3.TilesView;
import org.springframework.web.servlet.view.tiles3.TilesViewResolver;

@Configuration
@EnableWebMvc
@ComponentScan(basePackages = {"com.storebro.web"})
public class ServletConfig implements WebMvcConfigurer
{
	
	@Override
	public void addCorsMappings(CorsRegistry registry) {
		registry.addMapping("/**").allowedOrigins("localhost:8080/")
		.allowedMethods(
			HttpMethod.GET.name(),
			HttpMethod.HEAD.name(),
			HttpMethod.POST.name(),
			HttpMethod.PUT.name(),
			HttpMethod.DELETE.name()
		);
	}
	
	@Bean
	public TilesConfigurer tilesConfigurer()
	{
		final TilesConfigurer configurer = new TilesConfigurer();
		configurer.setDefinitions(new String[] {"/WEB-INF/tiles.xml"});
		return configurer;
	}
	
	@Bean
	public TilesViewResolver tilesViewResolver()
	{
		final TilesViewResolver resolver = new TilesViewResolver();
		resolver.setViewClass(TilesView.class);
		resolver.setOrder(1);
		return resolver;
	}
	
	@Override
	public void configureViewResolvers(ViewResolverRegistry registry)
	{
		registry.jsp("/WEB-INF/views/", ".jsp");
		registry.order(2);
	}

	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry)
	{
		registry.addResourceHandler("/resources/**") // 매핑 URI 설정
		.addResourceLocations("/resources/"); // 정적 리소스 위치 설정
	}
	
}
