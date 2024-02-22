package example.validator;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotBlank;
import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

public class CustomerValidator {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int customerId;
    @NotEmpty(message = "Please enter Customer code")
    private String customerCode;
    @NotEmpty(message = "Please enter Customer Name")
    @Size(min = 2, max = 14)
    private String customerName;

    @NotEmpty(message = "Please enter Customer Address")
    @Size(min = 2, max = 100)
    private String address1;

    @Size(min = 2, max = 100)
    private String address2;
    @NotBlank(message = "Please enter Customer PinCode")
    private String pinCode;
    @Email
    private String email;
    @NotEmpty(message = "Please enter Customer Contact Number")
    @Pattern(regexp = "(^$|[0-9]{10})")
    @Size(min = 0, max = 10)
    private String contactNo;

    @NotEmpty(message = "Please Enter primary Contact")
    private String primaryContact;
    private String status;
    private String createDate;
    private String createdBy;


    public CustomerValidator() {

    }


    public CustomerValidator(int customerId, String customerCode, String customerName, String address1, String address2, String pinCode, String email, String contactNo, String primaryContact, String status, String flag, String createDate, String createdBy, String modifiedBy, String modifiedDate, String authorizedBy, String authorizedDate) {
        this.customerId = customerId;
        this.customerCode = customerCode;
        this.customerName = customerName;
        this.address1 = address1;
        this.address2 = address2;
        this.pinCode = pinCode;
        this.email = email;
        this.contactNo = contactNo;
        this.primaryContact = primaryContact;
        this.status = status;
        this.createDate = createDate;
        this.createdBy = createdBy;

    }

    public int getCustomerId() {
        return customerId;
    }

    public void setCustomerId(int customerId) {
        this.customerId = customerId;
    }

    public String getCustomerCode() {
        return customerCode;
    }

    public void setCustomerCode(String customerCode) {
        this.customerCode = customerCode;
    }

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public String getAddress1() {
        return address1;
    }

    public void setAddress1(String address1) {
        this.address1 = address1;
    }

    public String getAddress2() {
        return address2;
    }

    public void setAddress2(String address2) {
        this.address2 = address2;
    }

    public String getPinCode() {
        return pinCode;
    }

    public void setPinCode(String pinCode) {
        this.pinCode = pinCode;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getContactNo() {
        return contactNo;
    }

    public void setContactNo(String contactNo) {
        this.contactNo = contactNo;
    }

    public String getPrimaryContact() {
        return primaryContact;
    }

    public void setPrimaryContact(String primaryContact) {
        this.primaryContact = primaryContact;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getCreateDate() {
        return createDate;
    }

    public void setCreateDate(String createDate) {
        this.createDate = createDate;
    }

    public String getCreatedBy() {
        return createdBy;
    }

    public void setCreatedBy(String createdBy) {
        this.createdBy = createdBy;
    }

    @Override
    public String toString() {
        return "Customer{" +
                "customerId=" + customerId +
                ", customerCode='" + customerCode + '\'' +
                ", customerName='" + customerName + '\'' +
                ", address1='" + address1 + '\'' +
                ", address2='" + address2 + '\'' +
                ", pinCode='" + pinCode + '\'' +
                ", email='" + email + '\'' +
                ", contactNo='" + contactNo + '\'' +
                ", primaryContact='" + primaryContact + '\'' +
                ", status='" + status + '\'' +
                '}';
    }


}
