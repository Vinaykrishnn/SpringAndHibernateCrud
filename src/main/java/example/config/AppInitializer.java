package example.config;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

public class AppInitializer extends AbstractAnnotationConfigDispatcherServletInitializer
{
    @Override
    protected Class<?>[] getRootConfigClasses() {return new Class[]{WebSecurityConfig.class};}
    @Override
    protected Class<?>[] getServletConfigClasses() {return null;}
    @Override
    protected String[] getServletMappings() {return new String[]{"/"};}
}
