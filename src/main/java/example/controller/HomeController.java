package example.controller;

import example.dao.CustomerDao;
import example.model.Customer;
import example.service.CustomerService;
import example.service.Validator;
import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.data.repository.query.Param;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.*;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.util.List;

@Controller
public class HomeController{
    @Autowired
    private PasswordEncoder passwordEncoder;

    @Autowired
    private CustomerService customerService;

    @Autowired
    private Validator validator;

    @GetMapping("/")
    public String validation(Customer customer){
        return "newCustomer";
    }

    @PostMapping("/")
    public String register(@Valid Customer customer, Errors errors, Model model){
        if(errors.hasErrors()){
            return "newCustomer";
        }else {
            model.addAttribute("message","Customer Added Successfully");
            return "newCustomer";
        }
    }


    @RequestMapping(value = "/newCustomer", method = RequestMethod.GET)
    public String newUser(@ModelAttribute("newuser")Customer customer, Model model){
        Customer c = new Customer();
        model.addAttribute("newCustomer", c);
        return "newCustomer";
    }



    @Autowired
    private CustomerDao customerDao;


    @RequestMapping(value = "/add-newUser", method = RequestMethod.POST)
    public String newUserAdd(@ModelAttribute("newuser") @Valid Customer customer, BindingResult result, Model model){
//        if(result.hasErrors()){
//            return "newCustomer";
//        }
//        else{
//            System.out.println(customer);
//            customerService.insert(customer);
////            return "redirect:/newCustomer";
            return  customerService.insert(customer);
        }



    @RequestMapping(value = "/customerDetails",  method = RequestMethod.GET)
    public String getCustomer(Model model){
        return customerService.view(model);

    }



    @RequestMapping(value = "/delete/{customerId}", method = RequestMethod.GET)
    public String  deleteCustomer(@PathVariable("customerId") int id, HttpServletRequest request){
        System.out.println(id);
//        this.customerService.delete(id);
//        return "redirect:/customerDetails";
        return customerService.delete(id);
    }

//
//    @RequestMapping("/")
//    public String viewHomePage(Model model, @Param("keyword") String keyword) {
//        List<Customer> listProducts = customerService.listAll(keyword);
//        model.addAttribute("listProducts", listProducts);
//        model.addAttribute("keyword", keyword);
//
//        return "index";
//    }




}