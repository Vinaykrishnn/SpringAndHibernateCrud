//package example.service;
//
//import example.model.Customer;
//import org.springframework.data.jpa.repository.JpaRepository;
//import org.springframework.data.jpa.repository.Query;
//
//import java.util.List;
//
//public interface CustomerRepository extends JpaRepository<Customer,Long > {
//    @Query("SELECT p FROM customer p WHERE CONCAT(p.customerName, p.contactNo, p.address1, p.gender) LIKE %?1%")
//    public List<Customer> search(String keyword);
//}
