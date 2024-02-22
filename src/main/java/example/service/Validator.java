package example.service;

import example.model.Customer;
import org.springframework.validation.Errors;

public interface Validator {

    public void validateCustomerCode(String customerCode, Errors errors);

    public boolean validateCustomerName(String customerName);

    public boolean validateAddress(String customerAddress);

    public boolean validatePinCode(String pinCode);

    public boolean validateEmail(String email);

    public boolean validateContactNo(String contactNo);

    public boolean validatePrimaryContact(String primaryContact);

}
