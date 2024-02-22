package example.service;

import example.dao.CustomerDao;
import example.dao.CustomerDaoImp;
import example.model.Customer;
import example.util.Utility;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import java.time.LocalDate;
import java.util.List;

@Service
@Repository
public class CustomerServiceImp implements CustomerService {

    @Autowired
    private CustomerDao customerDao;


    ValidatorImp validatorImp = new ValidatorImp();
//    CustomerDao customerDao = new CustomerDaoImp();
    @Override
    public String insert(Customer customer) {
        if(validatorImp.validateEmail(customer.getEmail())){
            if(validatorImp.validateCustomerName(customer.getCustomerName())){
                if(validatorImp.validateAddress(customer.getAddress1())){
                    if(validatorImp.validateContactNo(customer.getContactNo())){
                        if(validatorImp.validatePinCode(customer.getPinCode())){
                            if(validatorImp.validatePrimaryContact(customer.getPrimaryContact())){
                                customerDao.insertCustomer(customer);
                            }else {
                                System.out.println("Invalid Primary Name");
                            }
                        }else {
                            System.out.println("Invalid PinCode, must be off 6 digits");
                        }
                    }else {
                        System.out.println("Invalid Number, must be of 10 digits");
                    }
                }else {
                    System.out.println("Invalid address, either too short or too long");
                }
            }else{
                System.out.println("Invalid Customer Name");
            }
        }else{
            System.out.println("Invalid Email, enter correct one");
        }

        return "newCustomer";

    }

    @Override
    public String view(Model model) {
        List<Customer> customerList = customerDao.getAllCustomer();
        model.addAttribute("list",customerList);
        return "customerDetails";
    }


    @Override
    public String delete(int id) {
        customerDao.deleteCustomer(id);
        return "redirect:/customerDetails";
    }

//    @Autowired
//    private CustomerRepository repository;
//
//    public List<Customer> listAll(String keyword) {
//        if (keyword != null) {
//            return repository.search(keyword);
//        }
//        return repository.findAll();
//    }
}
