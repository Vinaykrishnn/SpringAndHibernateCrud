<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@page isELIgnored="false" %>

<html>
    <head>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <meta charset="UTF-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <title>View Customer</title>
        <style>
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
            #myInput {
              background-image: url('/css/searchicon.png'); /
              background-position: 10px 12px;
              background-repeat: no-repeat;
              width: 100%;
              font-size: 26px;
              height:40px;
              padding: 20px 20px 20px 40px;
              border: 1px solid #ddd;
              margin-bottom: 30px;
              margin-bottom: 30px;
            }

            #myTable {
              border-collapse: collapse;
              width: 100%;
              border: 1px solid #ddd;
              font-size: 18px;
            }

            #myTable th, #myTable td {
              text-align: left; /

            }

            #myTable tr {
                border-bottom: 1px solid #ddd;
            }

            #myTable tr.header, #myTable tr:hover {

              background-color: #f1f1f1;
            }
        </style>
    </head>
    <body>

        <nav class="navbar navbar-expand-lg bg-secondary navbar-fixed-top" style="width:100%;">
            <div class="container-fluid">
                <a class="navbar-brand" href="#"><img class="img" src="https://www.equitybulls.com/equitybullsadmin/uploads/Nucleus%20Software%20Exports%20Limited%202.jpg"></a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <form action="index">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="index">Home</a>
                        </li>
                        </form>
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
                        <input class="form-control me-2" id="search" onkeyup="myFunctionPlus()" placeholder="Search customer code.." style="width:300px; height:35px"placeholder="Search" aria-label="Search">
                        <button class="btn btn-success " style="margin-left:30px; height:35px" type="submit">Search</button>
                    </form>
                </div>
            </div>
        </nav>
        <div class="container">
        <h2 style="text-align:center">Customer Table</h2><hr>

        <input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search customer names.." style="width:100%; height:30px; border:1px solid grey;">
        <table class="table " style="width:80%;" id="myTable">
          <thead >
             <tr class="header">
                <th scope="col">CustomerId</th>
                <th scope="col" onclick="sortTable(0)" style="width:50px;">CustomerCode<i class="fa-sharp fa-solid fa-sort"></i></th>
                <th scope="col" onclick="sortTable(1)" style="width:50px;">CustomerName<i class="fa-sharp fa-solid fa-sort"></i></th>
                <th scope="col">Address1</th>
                <th scope="col">Address2</th>
                <th scope="col">ContactNo</th>
                <th scope="col">CreatedDate</th>
                <%--<th scope="col">CreatedBy</th> --%>
                <th scope="col">Email</th>
                <th scope="col">PinCode</th>
                <th scope="col">PrimaryContact</th>
                <th scope="col">Gender</th>
                <th scope="col">Country</th>
                <th scope="col">Action</th>
                </tr>
          </thead>

          <tbody>
             <c:forEach var="c" items="${list}">
             <tr>
                <td><c:out value="${c.customerId}"></c:out></td>
                <td><c:out value="${c.customerCode}"></c:out></td>
                <td><c:out value="${c.customerName}"></c:out></td>
                <td><c:out value="${c.address1}"></c:out></td>
                <td><c:out value="${c.address2}"></c:out></td>
                <td><c:out value="${c.contactNo}"></c:out></td>
                <td><c:out value="${c.createDate}"></c:out></td>
                <%-- <td><c:out value="${c.createdBy}"></c:out></td> --%>
                <td><c:out value="${c.email}"></c:out></td>
                <td><c:out value="${c.pinCode}"></c:out></td>
                <td><c:out value="${c.primaryContact}"></c:out></td>
                <td><c:out value="${c.gender}"></c:out></td>
                <td><c:out value="${c.country}"></c:out></td>
                <td>
                <form action="delete/${c.customerId}">
                    <button style="font-size:25px" class="btn btn-danger "><i class="fa-solid fa-user-slash"></i></button>
                </form>
                </td>
                </tr>
              </c:forEach>
          </tbody>
        </table>
        </div>

        <div class="card text-center">
            <div class="card-header">
                Featured
            </div>
            <div class="card-body text-bg-warning mb-3">
                <h5 class="card-title">Customer Entry</h5>
                <p class="card-text">Click on the Button below to add a customer</p>
                <form action="newCustomer">
                <button class="btn btn-primary">Add another Customer</button>
                </form>
            </div>
            <div class="card-footer text-muted">
                2 days ago
            </div>
        </div>
        <script type="text/javascript">
            function clearSearch() {
                window.location = "[[@{/}]]";
            }

            function myFunction() {

              var input, filter, table, tr, td, i, txtValue;
              input = document.getElementById("myInput");
              filter = input.value.toUpperCase();
              table = document.getElementById("myTable");
              tr = table.getElementsByTagName("tr");


              for (i = 0; i < tr.length; i++) {
                td = tr[i].getElementsByTagName("td")[2];
                if (td) {
                  txtValue = td.textContent || td.innerText;
                  if (txtValue.toUpperCase().indexOf(filter) > -1) {
                    tr[i].style.display = "";
                  } else {
                    tr[i].style.display = "none";
                  }
                }
              }
            }


        function sortTable(n) {
          var table, rows, switching, i, x, y, shouldSwitch, dir, switchcount = 0;
          table = document.getElementById("myTable");
          switching = true;

          dir = "asc";
          while (switching) {

            switching = false;
            rows = table.rows;

            for (i = 1; i < (rows.length - 1); i++) {
              shouldSwitch = false;

              x = rows[i].getElementsByTagName("TD")[n];
              y = rows[i + 1].getElementsByTagName("TD")[n];
              if (dir == "asc") {
                if (x.innerHTML.toLowerCase() > y.innerHTML.toLowerCase()) {
                  shouldSwitch = true;
                  break;
                }
              } else if (dir == "desc") {
                if (x.innerHTML.toLowerCase() < y.innerHTML.toLowerCase()) {
                  shouldSwitch = true;
                  break;
                }
              }
            }
            if (shouldSwitch) {
              rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);
              switching = true;
              switchcount ++;
            } else {
              if (switchcount == 0 && dir == "asc") {
                dir = "desc";
                switching = true;
              }
            }
          }
        }
        </script>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    </body>
</html>