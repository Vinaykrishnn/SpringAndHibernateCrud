package example.dao;

import example.model.Customer;

import java.util.List;

public interface CustomerDao{

    public void insertCustomer(Customer customer);
    public List<Customer> getAllCustomer();
    public void deleteCustomer(int id);

    public List<Customer> accessRow(int id);

    public void updateCustomer(String customerCode, int id, String name, String address, String address2, String contactNo, String pinCode, String email, String primaryContact);

    void updateCustomer(String customerCode, int id);
}
