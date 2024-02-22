package example.dao;

import example.model.Customer;
import example.util.Utility;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import java.time.LocalDate;
import java.util.List;

@Repository
public class CustomerDaoImp implements CustomerDao{
    @Autowired
    private JdbcTemplate jdbcTemplate;


    private JdbcTemplate getJdbcTemplate(){
        return jdbcTemplate;
    }


    public void setJdbcTemplate(JdbcTemplate jdbcTemplate){
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override
    public void insertCustomer(Customer customer){
        SessionFactory factory = Utility.getFactory();
        Session session = factory.openSession();
        session.beginTransaction();
        customer.setStatus("N");
        customer.setCreatedBy("Vinay");
        customer.setCreateDate(String.valueOf(LocalDate.now()));
        session.save(customer);
        session.getTransaction().commit();
        session.close();
    }


    @Override
    public List<Customer> getAllCustomer(){
        SessionFactory factory= Utility.getFactory();
        Session session=factory.openSession();
        String queryString="from Customer";
        Query query=session.createQuery(queryString);
        List<Customer> customers = query.getResultList();
        session.close();
        return customers;
    }


    @Override
    public void deleteCustomer(int id){
        SessionFactory factory= Utility.getFactory();
        Session session=factory.openSession();
        session.beginTransaction();
        String queryString="delete from Customer where customerId=:cId";
        Query query=session.createQuery(queryString);
        query.setInteger("cId",id);
        query.executeUpdate();
        session.getTransaction().commit();
        session.close();
    }




    @Override
    public List<Customer> accessRow(int id){
        SessionFactory factory = Utility.getFactory();
        Session session = factory.openSession();
        session.beginTransaction();
        String query = "FROM Customer WHERE customerId=:id";
        Query que = session.createQuery(query);
        que.setInteger("id",id);
        List<Customer> customers = que.getResultList();
        return customers;
    }


    @Override
    public void updateCustomer(String customerCode, int id, String name, String address, String address2, String contactNo, String pinCode, String email, String primaryContact){
        Customer customer = new Customer();
        SessionFactory factory= Utility.getFactory();
        Session session=factory.openSession();
        session.beginTransaction();
//        customer.setModifiedBy("Maker");
//        customer.setModifiedDate(String.valueOf(LocalDate.now()));
        String queryString="update Customer set address1=:newAddress1,address2=:newAddress2,contactNo=:newContact, customerCode=:newCustomerCode,customerName=:newCustomerName, Email=:newEmail,Pincode=:newPincode,primaryContact=:newPrimaryContact where CustomerId=:Cid";
        Query query=session.createQuery(queryString);
        query.setInteger("Cid",id);
        query.setString("newAddress1",address);
        query.setString("newAddress2", address2);
        query.setString("newContact",contactNo);
        query.setString("newCustomerCode",customerCode);
        query.setString("newCustomerName",name);
        query.setString("newEmail",contactNo);
        query.setString("newPincode",pinCode);
        query.setString("newPrimaryContact",primaryContact);
        query.executeUpdate();
        session.getTransaction().commit();
        session.close();
    }


    //Update Status in Customer Table
    @Override
    public void updateCustomer(String status,int id){
        SessionFactory factory= Utility.getFactory();
        Session session=factory.openSession();
        session.beginTransaction();
        String queryString="update Customer set status=:Reject where customerId=:cId";
        Query query=session.createQuery(queryString);
        query.setString("Reject",status);
        query.setInteger("cId",id);
        query.executeUpdate();
        session.getTransaction().commit();
        session.close();
    }
}
