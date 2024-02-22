package example.service;

import example.model.Customer;
import org.springframework.stereotype.Repository;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
@Repository
public class ValidatorImp implements Validator{

    @Override
    public void validateCustomerCode(String customerCode, Errors errors) {
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "id", "id.required");


        Customer c = new Customer();
        if(c.getCustomerId() <=0){
            errors.rejectValue("id", "negativeValue", new Object[]{"'id'"}, "id can't be negative");
        }

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "name", "name.required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "role", "role.required");
    }

    @Override
    public boolean validateCustomerName(String customerName) {
        String regex = "^[A-Za-z]\\w{5,29}$";
        java.util.regex.Pattern p = Pattern.compile(regex);
//        if (customerName == null) {
//            errors.rejectValue("customerName", "empty", new Object[]{"'customerName'"}, "Name cannot be empty");
//        }
        if (customerName == null || customerName.length() == 0) {
//            errors.rejectValue("customerName", "empty", new Object[]{"'customerName'"}, "Name cannot be empty");
            return false;
        }
        if (customerName.length() > 20) {
//            errors.rejectValue("customerName", "empty", new Object[]{"'customerName'"}, "Maximum length is 20 and minimum is 3");
            return false;
        }

        Matcher m = p.matcher(customerName);
        return m.matches();
    }

    @Override
    public boolean validateAddress(String customerAddress) {
        if (customerAddress == null) {
            return false;
        }
        if (customerAddress == null || customerAddress.length() == 0) {
            return false;
        }
        if (customerAddress.length() < 2 || customerAddress.length() > 100) {
            return false;
        }
        else {
            return true;
        }
    }

    @Override
    public boolean validatePinCode(String pinCode) {
        String regex ="^[1-9]{1}[0-9]{2}\\s{0,1}[0-9]{3}$";

        java.util.regex.Pattern p = Pattern.compile(regex);
        if (pinCode == null) {
            return false;
        }
        if (pinCode == null || pinCode.length() == 0) {
            return false;
        }
        if (pinCode.length() < 6 || pinCode.length() > 7) {
            return false;
        }
        else {
            return true;
        }

    }

    @Override
    public boolean validateEmail(String email) {
        String regex ="^[\\w-\\.]+@([\\w-]+\\.)+[\\w-]{2,4}$";
        java.util.regex.Pattern p = Pattern.compile(regex);

        if(email.matches("^[\\w-\\.]+@([\\w-]+\\.)+[\\w-]{2,4}$")){
            return true;
        }else {
            return false;
        }
    }

    @Override
    public boolean validateContactNo(String contactNo) {
        if(contactNo == null){
            return false;
        }

        if (contactNo.matches("\\d{10}")) {
            return true;
        }

        else if(contactNo.matches("\\d{3}[-\\.\\s]\\d{3}[-\\.\\s]\\d{4}")){
            return true;
        }

        else if(contactNo.matches("\\d{3}-\\d{3}-\\d{4}\\s(x|(ext))\\d{3,5}")){
            return true;
        }

        else if(contactNo.matches("\\(\\d{3}\\)-\\d{3}-\\d{4}")){
            return true;
        }

        else {
            return false;
        }

    }

    @Override
    public boolean validatePrimaryContact(String primaryContact) {
        return true;
    }


}
