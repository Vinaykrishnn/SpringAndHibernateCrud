package example.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import javax.sql.DataSource;
import java.util.Properties;

@EnableWebMvc
@Configuration
@ComponentScan("example")
public class AppConfig
{
    @Bean
    public InternalResourceViewResolver viewResolver(){
        InternalResourceViewResolver viewResolver=new InternalResourceViewResolver();
        viewResolver.setPrefix("/");
        viewResolver.setSuffix(".jsp");
        return viewResolver;
    }

    @Bean
    public DataSource dataSource(){
        DriverManagerDataSource driverManagerDataSource=new DriverManagerDataSource();
        driverManagerDataSource.setDriverClassName("oracle.jdbc.driver.OracleDriver");
        driverManagerDataSource.setUrl("jdbc:oracle:thin:@//10.1.50.198:1535/nsbt19c");
        driverManagerDataSource.setUsername("sh");
        driverManagerDataSource.setPassword("sh");
        return driverManagerDataSource;
    }
    private Properties hibernateProperties(){
        Properties properties = new Properties();
        properties.put("hibernate.dialect","org.hibernate.dialect.Oracle12cDialect");
        properties.put("hibernate.show_sql","true");
        properties.put("hibernate.hbm2ddl.auto","create");
        properties.put("current_session_context_class","thread");
        return properties;
    }
    @Bean
    public LocalSessionFactoryBean getSessionFactoryBean(){
        LocalSessionFactoryBean bean = new LocalSessionFactoryBean();
        bean.setDataSource(dataSource());
        bean.setHibernateProperties(hibernateProperties());
        bean.setAnnotatedClasses(example.model.Customer.class);
        return bean;
    }

    @Bean
    public JdbcTemplate jdbcTemplate(){
        JdbcTemplate jdbcTemplate=new JdbcTemplate(dataSource());
        return jdbcTemplate;
    }

    @Bean
    public PasswordEncoder passwordEncoder()
    {
        return new BCryptPasswordEncoder();
    }
}
