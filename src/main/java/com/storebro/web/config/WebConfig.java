package com.storebro.web.config;



import javax.servlet.Filter;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.filter.CharacterEncodingFilter;
import org.springframework.web.filter.HiddenHttpMethodFilter;
import org.springframework.web.servlet.DispatcherServlet;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

@Configuration
@EnableWebMvc
@ComponentScan(basePackages = {"com.storebro.web"})
public class WebConfig extends AbstractAnnotationConfigDispatcherServletInitializer
{

	@Override
	protected Class<?>[] getRootConfigClasses()
	{
		return new Class[] {RootConfig.class};
	}

	@Override
	protected Class<?>[] getServletConfigClasses()
	{
		return new Class[] {ServletConfig.class};
	}

	@Override
	protected String[] getServletMappings()
	{
		return new String[] {"/"};
	}
	
	@Override // 이거 안되는 듯
	protected Filter[] getServletFilters() {
		HiddenHttpMethodFilter httpMethodFilter = new HiddenHttpMethodFilter();
	    CharacterEncodingFilter encodingFilter = new CharacterEncodingFilter();
	    encodingFilter.setEncoding("UTF-8");
	    encodingFilter.setForceEncoding(true);
	    return new Filter[] { httpMethodFilter, encodingFilter };
	}
	
	@Override // 에러처리에 필수적임
    protected DispatcherServlet createDispatcherServlet(WebApplicationContext servletAppContext) {
        final DispatcherServlet dispatcherServlet = (DispatcherServlet) super.createDispatcherServlet(servletAppContext);
        dispatcherServlet.setThrowExceptionIfNoHandlerFound(true);
        return dispatcherServlet;
    }
	
}
