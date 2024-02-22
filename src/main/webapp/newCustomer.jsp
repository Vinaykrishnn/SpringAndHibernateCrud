<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <title>Index</title>
    <style>
        body
        {
            font-family: sans-serif;
          }
          .img{
                      height:50px;
                      width:100px;
                      }
                      img{
                      height:400px;
                      width:100%;
                      }
                      a{
                      color:white;
                      }
                      nav{
                      height:60px;
                      }
          .warp
          {
              width:1000px;
              margin:auto;
              margin-top:100px;
          }
          .card{
              width:1000px;
              background:#fff;
              text-align:center;
              font-size:15px;
              font-family: "Lucida Console", Courier, monospace;
          }
            .message{
            margin-left:0px;
            }
          .btn btn-danger btn-lg
          {
            width:100px;
          }
          td{
            margin: 20px 20px;
          }
          tr{
                      margin: 20px 20px;
                    }
                    .bd-placeholder-img {
                                font-size: 1.125rem;
                                text-anchor: middle;
                                -webkit-user-select: none;
                                -moz-user-select: none;
                                user-select: none;
                              }

                              @media (min-width: 768px) {
                                .bd-placeholder-img-lg {
                                  font-size: 3.5rem;
                                }
                              }

                              .b-example-divider {
                                height: 3rem;
                                background-color: rgba(0, 0, 0, .1);
                                border: solid rgba(0, 0, 0, .15);
                                border-width: 1px 0;
                                box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
                              }

                              .b-example-vr {
                                flex-shrink: 0;
                                width: 1.5rem;
                                height: 100vh;
                              }

                              .bi {
                                vertical-align: -.125em;
                                fill: currentColor;
                              }

                              .nav-scroller {
                                position: relative;
                                z-index: 2;
                                height: 2.75rem;
                                overflow-y: hidden;
                              }

                              .nav-scroller .nav {
                                display: flex;
                                flex-wrap: nowrap;
                                padding-bottom: 1rem;
                                margin-top: -1px;
                                overflow-x: auto;
                                text-align: center;
                                white-space: nowrap;
                                -webkit-overflow-scrolling: touch;
                              }
                              label{
                                font-weight:bold;
                              }
    </style>
</head>
<body>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<nav class="navbar navbar-expand-lg bg-secondary navbar-fixed-top">
            <div class="container-fluid">
                <a class="navbar-brand" href="#"><img class="img" src="https://www.equitybulls.com/equitybullsadmin/uploads/Nucleus%20Software%20Exports%20Limited%202.jpg"></a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="#">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Link</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                Dropdown
                            </a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="#">Action</a></li>
                                <li><a class="dropdown-item" href="#">Another action</a></li>
                                <li><hr class="dropdown-divider"></li>
                                <li><a class="dropdown-item" href="#">Something else here</a></li>
                            </ul>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link " href="#">About</a>
                        </li>
                    </ul>
                    <form class="d-flex justify-content-end" style="margin-left:450px" role="search">
                        <input class="form-control me-2" style="width:300px; height:35px" type="search" placeholder="Search" aria-label="Search">
                        <button class="btn btn-success " style="margin-left:30px; height:35px" type="submit">Search</button>
                    </form>
                </div>
            </div>
        </nav>


<div class="container">
        <h1 style="text-align:center;">
            Add a Customer
        </h1><hr>
        <br>

            <form:form name="newUser" action="add-newUser" method="POST" modelAttribute="newuser" onsubmit="return validateform()">
            <div class="row">
            <div class="col col-sm-12">
                <h2 id="message" for="javascript" style="background:#FF9494; text-align:center;"></h2>
            </div>
            </div>
            <div class="row">
            <div class="col col-sm-12">
                <h2 id="error" for="javascript" style="background:	#90EE90; text-align:center;"></h2>
            </div>
            </div>





                    <div class="row">
                        <div class="col col-sm-6">
                            <label>Customer Code : </label>
                            <form:input type="text" path="customerCode" style="width:100%; border:3px solid black; border-radius:10px;"/>
                        </div>
                        <div class="col col-sm-6">
                            <label>Customer Name : </label>
                            <form:input type="text" path="customerName" style="width:100%; border:3px solid black; border-radius:10px;"/>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col col-sm-6">
                            <label>Customer Address 1 : </label>
                            <form:input type="text" path="address1" style="width:100%; border:3px solid black; border-radius:10px;"/>
                        </div>
                        <div class="col col-sm-6">
                            <label>Customer Address 2 : </label>
                            <form:input type="text" path="address2" style="width:100%; border:3px solid black; border-radius:10px;"/>

                        </div>
                    </div>

                    <div class="row">
                        <div class="col col-sm-6">
                            <label>Pin Code: </label>
                            <form:input type="text" path="pinCode" style="width:100%; border:3px solid black; border-radius:10px;"/>
                        </div>
                        <div class="col col-sm-6">
                        <label>Email : </label>
                        <form:input type="text" path="email" style="width:100%; border:3px solid black; border-radius:10px;"/>

                        </div>
                    </div>

                    <div class="row">
                        <div class="col col-sm-6">
                            <label>Contact : </label>
                            <form:input type="text" path="contactNo" style="width:100%; border:3px solid black; border-radius:10px;"/>
                        </div>
                        <div class="col col-sm-6">
                        <label>Primary Contact: </label>
                        <form:input type="text" path="primaryContact" style="width:100%; border:3px solid black; border-radius:10px;"/>

                        </div>
                    </div>

                    <div class="row">
                        <div class="col col-sm-6">
                            <label>Status : </label>
                            <form:select path="status" style="width:100%; height:30px; border:3px solid black; border-radius:10px;">
                            <form:option value="Active" label="Active"  style="width:100%; border:3px solid black; border-radius:10px;"/>
                            <form:option value="InActive" label="Inactive"  style="width:100%; border:3px solid black; border-radius:10px;"/>
                            </form:select>
                        </div>
                        <div class="col col-sm-6">
                            <label>Gender : </label><br>
                            <label>
                                Male <form:radiobutton path="gender" value="Male"/>
                                Female <form:radiobutton path="gender" value="Female"/>
                            </label>
                        </div>
                    </div>

                    <div class="row">
                    <div class="col col-sm-6">
                        <label>Country : </label><br>
                        <label>
                        India<form:checkbox path="country" value="India"/>
                        Singapore<form:checkbox path="country" value="Singapore"/>
                        </label>
                    </div>
                    <div class="col col-sm-6">
                    </div>
                    </div>

                    <table>
                    <tr>
                    <td>
                     <form action="submit">
                     <button class="btn btn-primary btn-lg " style="width:100%; border-radius:10px;">Add Customer</button>
                     </form>
                     </td>
                     </tr>
                     </table>

               </form:form>

</div>
        <div class="container">
            <div class="card text-center">
                            <div class="card-header">
                                Featured
                            </div>
                            <div class="card-body text-bg-dark mb-3">
                                <h5 class="card-title" >View Customer Details</h5>
                                <p class="card-text" >Click on the Button below to view the details of the customers</p>
                                <form action="customerDetails">
                                <button class="btn btn-success">View Customers</button>
                                </form>
                            </div>
                            <div class="card-footer text-muted">
                                14 hours ago
                            </div>
    </div>
    </div>



 <div class="container">
      <footer class="py-5">
        <div class="row">
          <div class="col-6 col-md-2 mb-3">
            <h5>Section</h5>
            <ul class="nav flex-column">
              <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">Home</a></li>
              <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">Features</a></li>
              <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">Pricing</a></li>
              <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">FAQs</a></li>
              <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">About</a></li>
            </ul>
          </div>

          <div class="col-6 col-md-2 mb-3">
            <h5>Section</h5>
            <ul class="nav flex-column">
              <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">Home</a></li>
              <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">Features</a></li>
              <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">Pricing</a></li>
              <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">FAQs</a></li>
              <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">About</a></li>
            </ul>
          </div>

          <div class="col-6 col-md-2 mb-3">
            <h5>Section</h5>
            <ul class="nav flex-column">
              <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">Home</a></li>
              <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">Features</a></li>
              <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">Pricing</a></li>
              <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">FAQs</a></li>
              <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">About</a></li>
            </ul>
          </div>

          <div class="col-md-5 offset-md-1 mb-3">
            <form>
              <h5>Subscribe to our newsletter</h5>
              <p>Monthly digest of what's new and exciting from us.</p>
              <div class="d-flex flex-column flex-sm-row w-100 gap-2">
                <label for="newsletter1" class="visually-hidden">Email address</label>
                <input id="newsletter1" type="text" class="form-control" placeholder="Email address">
                <button class="btn btn-primary" type="button">Subscribe</button>
              </div>
            </form>
          </div>
        </div>

        <div class="d-flex flex-column flex-sm-row justify-content-between py-4 my-4 border-top">
          <p>&copy; 2022 Company, Inc. All rights reserved.</p>
          <ul class="list-unstyled d-flex">
            <li class="ms-3"><a class="link-dark" href="#"><svg class="bi" width="24" height="24"><use xlink:href="#twitter"/></svg></a></li>
            <li class="ms-3"><a class="link-dark" href="#"><svg class="bi" width="24" height="24"><use xlink:href="#instagram"/></svg></a></li>
            <li class="ms-3"><a class="link-dark" href="#"><svg class="bi" width="24" height="24"><use xlink:href="#facebook"/></svg></a></li>
          </ul>
        </div>
      </footer>
    </div>
    <script>
        function validateform(){
            var name=document.newUser.customerName.value;
            var pinCode=document.newUser.pinCode.value;
            var contactNo=document.newUser.contactNo.value;
            var email=document.newUser.email.value;

            if (name==null || name==""){
               document.getElementById('message').innerHTML = 'Please enter your name';
              return false;
            }
            else if(name.length<4){
              document.getElementById('message').innerHTML = 'Name too short or too long';
              return false;
            }
            else if(pinCode.length<6 || pinCode.length>6){
              document.getElementById('message').innerHTML = 'Invalid Pin code, Enter 6 Digit Pin Code';
              return false;
            }
            else if(contactNo.length<10 || contactNo.length>10){
              document.getElementById('message').innerHTML = 'Contact number should be of 10 Digit';
              return false;
            }
            else if(! /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(newUser.email.value)){
              document.getElementById('message').innerHTML = 'Invalid email, enter correct one';
              return false;
            }
            else if(name.length>2 || pinCode.length == 6 || contactNo.length == 10){
                document.getElementById('error').innerHTML = 'Customer registered successfully!!!';
                return true;
            }
        }


    </script>


</body>
</html>
