package example.service;

import example.dao.CustomerDao;
import example.model.Customer;
import org.springframework.ui.Model;


import java.time.LocalDate;
import java.util.List;


public interface CustomerService {
    public String insert(Customer customer);
    public String view(Model model);
    public String delete(int id);

//    public List<Customer> listAll(String keyword);
}
