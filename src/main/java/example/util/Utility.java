package example.util;

import example.model.Customer;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class Utility
{
    static SessionFactory factory;
    public static SessionFactory getFactory()
    {
        if(factory==null)
        {
            Configuration cfg=new Configuration();
            cfg.addAnnotatedClass(Customer.class);
            cfg.configure("hibernate.cfg.xml");
            factory=cfg.buildSessionFactory();
        }
        return factory;
    }
}
