<%--
  Created by IntelliJ IDEA.
  User: chinthaka
  Date: 9/13/17
  Time: 4:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <!-- Theme Made By www.w3schools.com - No Copyright -->
  <title>Bootstrap Theme The Band</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
    body {
      font: 400 15px/1.8 Lato, sans-serif;
      color: #777;
    }
    h3, h4 {
      margin: 10px 0 30px 0;
      letter-spacing: 10px;
      font-size: 20px;
      color: #111;
    }
    .container {
      padding: 80px 120px;
    }
    .person {
      border: 10px solid transparent;
      margin-bottom: 25px;
      width: 80%;
      height: 80%;
      opacity: 0.7;
    }
    .person:hover {
      border-color: #f1f1f1;
    }
    .carousel-inner img {
      -webkit-filter: grayscale(90%);
      filter: grayscale(90%); /* make all photos black and white */
      width: 100%; /* Set width to 100% */
      margin: auto;
    }
    .carousel-caption h3 {
      color: #fff !important;
    }
    @media (max-width: 600px) {
      .carousel-caption {
        display: none; /* Hide the carousel text when the screen is less than 600 pixels wide */
      }
    }
    .bg-1 {
      background: #2d2d30;
      color: #bdbdbd;
    }
    .bg-1 h3 {color: #fff;}
    .bg-1 p {font-style: italic;}
    .list-group-item:first-child {
      border-top-right-radius: 0;
      border-top-left-radius: 0;
    }
    .list-group-item:last-child {
      border-bottom-right-radius: 0;
      border-bottom-left-radius: 0;
    }
    .thumbnail {AIzaSyBu-916DdpKAjTmJNIgngS6HL_kDIKU0aU
      padding: 0 0 15px 0;
      border: none;
      border-radius: 0;
    }
    .thumbnail p {
      margin-top: 15px;
      color: #555;
    }
    .btn {
      padding: 10px 20px;
      background-color: #333;
      color: #f1f1f1;
      border-radius: 0;
      transition: .2s;
    }
    .btn:hover, .btn:focus {
      border: 1px solid #333;
      background-color: #fff;
      color: #000;
    }
    .modal-header, h4, .close {
      background-color: #333;
      color: #fff !important;
      text-align: center;
      font-size: 30px;
    }
    .modal-header, .modal-body {
      padding: 40px 50px;
    }
    .nav-tabs li a {
      color: #777;
    }
    #googleMap {
      width: 100%;
      height: 400px;
      -webkit-filter: grayscale(0%);
      filter: grayscale(0%);
    }
    .navbar {
      font-family: Montserrat, sans-serif;
      margin-bottom: 0;
      background-color: #2d2d30;
      border: 0;
      font-size: 11px !important;
      letter-spacing: 4px;
      opacity: 0.9;
    }
    .navbar li a, .navbar .navbar-brand {
      color: #d5d5d5 !important;
    }
    .navbar-nav li a:hover {
      color: #fff !important;
    }
    .navbar-nav li.active a {
      color: #fff !important;
      background-color: #29292c !important;
    }
    .navbar-default .navbar-toggle {
      border-color: transparent;
    }
    .open .dropdown-toggle {
      color: #fff;
      background-color: #555 !important;
    }
    .dropdown-menu li a {
      color: #000 !important;
    }
    .dropdown-menu li a:hover {
      background-color: red !important;
    }
    footer {
      background-color: #2d2d30;
      color: #f5f5f5;
      padding: 32px;
    }
    footer a {
      color: #f5f5f5;
    }
    footer a:hover {
      color: #777;
      text-decoration: none;
    }
    .form-control {
      border-radius: 0;
    }
    textarea {
      resize: none;
    }


    modal-header, h4, .close {
      background-color: #5cb85c;
      color:white !important;
      text-align: center;
      font-size: 30px;
    }
    .modal-footer {
      background-color: #f9f9f9;
    }


  </style>
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50">

<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#myPage">Logo</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#myPage">HOME</a></li>
        <li><a href="#band">MENU</a></li>
        <li><a href="#tour">SIGNUP</a></li>
        <li><a href="#contact">CONTACT</a></li>
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">MORE
            <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">For Hotels</a></li>
            <li><a href="#">Customer Profile</a></li>
            <li><a href="#">Social media</a></li>
          </ul>
        </li>
        <li><a href="#"><span class="glyphicon glyphicon-search"></span></a></li>
      </ul>
    </div>
  </div>
</nav>

<div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src="http://www.creativechinese.com/wp-content/uploads/2017/04/default-pasta.jpg" alt="New York" width="1200" height="700">
      <div class="carousel-caption">
        <h3>Colombo</h3>
        <p>The atmosphere in New York is lorem ipsum.</p>
      </div>
    </div>

    <div class="item">
      <img src="http://img.webmd.com/dtmcms/live/webmd/consumer_assets/site_images/article_thumbnails/quizzes/food_safety_quiz/650x350_food_safety_quiz.jpg" alt="Chicago" width="1200" height="700">
      <div class="carousel-caption">
        <h3>Chicago</h3>
        <p>Thank you, Chicago - A night we won't fhow to link a css file to html divorget.</p>
      </div>
    </div>

    <div class="item">
      <img src="http://bestcoverpix.com/wp-content/uploads/2014/04/order-Custom-Facebook-Cover-Now.gif" alt="Los Angeles" width="1200" height="700">
      <div class="carousel-caption">
        <h3>LA</h3>
        <p>Even though the traffic was a mess, we had the best time playing at Venice Beach!</p>
      </div>
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

<!-- Container (The Band Section) -->
<div id="band" class="container text-center">
  <table width = "100%" height border = "0">

    <tr valign = "top">
      <td  width = "20%">
        <img src="https://www.pizzahut.lk/Images/Product/Chicken%20Bacon.png" alt="HTML5 Icon" style="height:200px;">
        <br />
        Chicken Bacon<br />
        <%--adding model--%>
        <!-- Trigger the modal with a button -->
        <button type="button" class="btn btn-default btn-lg" id="myBtn1">ORDER NOW</button>

        <!-- Modal -->
        <div class="modal fade" id="myModal1" role="dialog">
          <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
              <div class="modal-header" style="padding:35px 50px;">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4><span class="glyphicon glyphicon-lock"></span> Order NOW</h4>
              </div>
              <div class="modal-body" style="padding:40px 50px;">
                <form role="form"  method="post" >
                  <div class="form-group">

                    <%

                    %>

                    <label for="usrname"><span class="glyphicon glyphicon-user"></span> Unit Price</label>
                    <input type="text" class="form-control" id="unitprice1" name="unitprice" placeholder="unitprice">
                  </div>
                  <div class="form-group">
                    <label for="psw"><span class="glyphicon glyphicon-eye-open"></span> Availble Quantity</label>
                    <input type="text" class="form-control" id="quantity1" name="quantity" placeholder="Quantity">
                  </div>
                  <div class="form-group">
                    <label for="psw"><span class="glyphicon glyphicon-eye-open"></span> Order Amount</label>
                    <input type="text" class="form-control" id="amount1" name="orderamount" placeholder="Enter amount">
                  </div>
                  <div class="checkbox">
                    <label><input type="checkbox" value="" checked>Agree to the policies</label>
                  </div>
                  <button type="submit" class="btn btn-success btn-block"><span class="glyphicon glyphicon-off"></span> Order</button>
                </form>
              </div>
              <div class="modal-footer">
                <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
                <p>Not a member? <a href="#">Sign Up</a></p>
                <p>Forgot <a href="#">Password?</a></p>
              </div>
            </div>

          </div>
        </div>


        <script>
          $(document).ready(function(){
            $("#myBtn1").click(function(){
              $("#myModal1").modal();
            });
          });
        </script>


        <script>
          $("#myBtn1").click(function(e) {
            e.preventDefault();
            $.ajax({
              type: "POST",
              url: "http://192.168.1.105:8080/servlet/menu",
              data: {
                value: '1' // < note use of 'this' here

              },
              success: function(result) {
                console.log(result.pizza_item_unit_price);
               console.log(result);
                $("#unitprice1").val(result.pizza_item_unit_price);
                $("#quantity1").val(result.pizza_item_available_quantity);
              },
              error: function(result) {
                alert('error');
              }
            });
          });
        </script>
        <%--ending--%>
      </td>

      <td  width = "20%">
        <img src="https://www.pizzahut.lk/Images/Product/Cheese%20Lovers.png" alt="HTML5 Icon" style="height:200px;">
       <br />
        Cheese Lovers<br />
        <%--adding model--%>
        <!-- Trigger the modal with a button -->
        <button type="button" class="btn btn-default btn-lg" id="myBtn2">ORDER NOW</button>

        <!-- Modal -->
        <div class="modal fade" id="myModal2" role="dialog">
          <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
              <div class="modal-header" style="padding:35px 50px;">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4><span class="glyphicon glyphicon-lock"></span> Order NOW</h4>
              </div>
              <div class="modal-body" style="padding:40px 50px;">
                <form role="form"  method="post" >
                  <div class="form-group">
                    <label for="usrname"><span class="glyphicon glyphicon-user"></span> Unit Price</label>
                    <input type="text" class="form-control" id="unitprice2" name="username" placeholder="Enter email">
                  </div>
                  <div class="form-group">
                    <label for="psw"><span class="glyphicon glyphicon-eye-open"></span> Availble Quantity</label>
                    <input type="text" class="form-control" id="quantity2" name="password" placeholder="Enter password">
                  </div>
                  <div class="form-group">
                    <label for="psw"><span class="glyphicon glyphicon-eye-open"></span> Order Amount</label>
                    <input type="text" class="form-control" id="amount2" name="orderamount" placeholder="Enter amount">
                  </div>
                  <div class="checkbox">
                    <label><input type="checkbox" value="" checked>Agree to the policies</label>
                  </div>
                  <button type="submit" class="btn btn-success btn-block"><span class="glyphicon glyphicon-off"></span> Order</button>
                </form>
              </div>
              <div class="modal-footer">
                <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
                <p>Not a member? <a href="#">Sign Up</a></p>
                <p>Forgot <a href="#">Password?</a></p>
              </div>
            </div>

          </div>
        </div>


        <script>
          $(document).ready(function(){
            $("#myBtn2").click(function(){
              $("#myModal2").modal();
            });
          });

        </script>

          <script>
          $("#myBtn2").click(function(e) {
            e.preventDefault();
            $.ajax({
              type: "POST",
              url: "http://192.168.1.105:8080/servlet/menu",
              data: {
                value: '2' // < note use of 'this' here

              },
              success: function(result) {
                console.log(result.pizza_item_unit_price);
                console.log(result);
                $("#unitprice2").val(result.pizza_item_unit_price);
                $("#quantity2").val(result.pizza_item_available_quantity);
              },
              error: function(result) {
                alert('error');
              }
            });
          });

        </script>
        <%--ending--%>
      </td>

      <td width = "20%">
        <img src="https://www.pizzahut.lk/Images/Product/Devilled%20Chicken.png" alt="HTML5 Icon" style="height:200px;">
        <br />
        Devilled Chicken<br />
        <%--adding model--%>
        <!-- Trigger the modal with a button -->
        <button type="button" class="btn btn-default btn-lg" id="myBtn3">ORDER NOW</button>

        <!-- Modal -->
        <div class="modal fade" id="myModal3" role="dialog">
          <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
              <div class="modal-header" style="padding:35px 50px;">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4><span class="glyphicon glyphicon-lock"></span> Order NOW</h4>
              </div>
              <div class="modal-body" style="padding:40px 50px;">
                <form role="form"  method="post" >
                  <div class="form-group">
                    <label for="usrname"><span class="glyphicon glyphicon-user"></span> Unit Price</label>
                    <input type="text" class="form-control" id="unitprice3" name="username" placeholder="Enter email">
                  </div>
                  <div class="form-group">
                    <label for="psw"><span class="glyphicon glyphicon-eye-open"></span> Availble Quantity</label>
                    <input type="text" class="form-control" id="quantity3" name="password" placeholder="Enter password">
                  </div>
                  <div class="form-group">
                    <label for="psw"><span class="glyphicon glyphicon-eye-open"></span> Order Amount</label>
                    <input type="text" class="form-control" id="amount3" name="orderamount" placeholder="Enter amount">
                  </div>
                  <div class="checkbox">
                    <label><input type="checkbox" value="" checked>Agree to the policies</label>
                  </div>
                  <button type="submit" class="btn btn-success btn-block"><span class="glyphicon glyphicon-off"></span> Order</button>
                </form>
              </div>
              <div class="modal-footer">
                <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
                <p>Not a member? <a href="#">Sign Up</a></p>
                <p>Forgot <a href="#">Password?</a></p>
              </div>
            </div>

          </div>
        </div>


        <script>
          $(document).ready(function(){
            $("#myBtn3").click(function(){
              $("#myModal3").modal();
            });
          });
        </script>
        <%--ending--%>
        <script>
          $("#myBtn3").click(function(e) {
            e.preventDefault();
            $.ajax({
              type: "POST",
              url: "http://192.168.1.105:8080/servlet/menu",
              data: {
                value: '3' // < note use of 'this' here

              },
              success: function(result) {
                console.log(result.pizza_item_unit_price);
                console.log(result);
                $("#unitprice3").val(result.pizza_item_unit_price);
                $("#quantity3").val(result.pizza_item_available_quantity);
              },
              error: function(result) {
                alert('error');
              }
            });
          });

        </script>
      </td>
      <td  width = "20%">
        <img src="https://www.pizzahut.lk/Images/Product/Cheese%20And%20Tomato.png" alt="HTML5 Icon" style="height:200px;">
      <br />
        Cheese & Tomato<br />
        <%--adding model--%>
        <!-- Trigger the modal with a button -->
        <button type="button" class="btn btn-default btn-lg" id="myBtn4">ORDER NOW</button>

        <!-- Modal -->
        <div class="modal fade" id="myModal4" role="dialog">
          <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
              <div class="modal-header" style="padding:35px 50px;">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4><span class="glyphicon glyphicon-lock"></span> Order NOW</h4>
              </div>
              <div class="modal-body" style="padding:40px 50px;">
                <form role="form"  method="post" >
                  <div class="form-group">
                    <label for="usrname"><span class="glyphicon glyphicon-user"></span> Unit Price</label>
                    <input type="text" class="form-control" id="unitprice4" name="username" placeholder="Enter email">
                  </div>
                  <div class="form-group">
                    <label for="psw"><span class="glyphicon glyphicon-eye-open"></span> Availble Quantity</label>
                    <input type="text" class="form-control" id="quantity4" name="password" placeholder="Enter password">
                  </div>
                  <div class="form-group">
                    <label for="psw"><span class="glyphicon glyphicon-eye-open"></span> Order Amount</label>
                    <input type="text" class="form-control" id="amount4" name="orderamount" placeholder="Enter amount">
                  </div>
                  <div class="checkbox">
                    <label><input type="checkbox" value="" checked>Agree to the policies</label>
                  </div>
                  <button type="submit" class="btn btn-success btn-block"><span class="glyphicon glyphicon-off"></span> Order</button>
                </form>
              </div>
              <div class="modal-footer">
                <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
                <p>Not a member? <a href="#">Sign Up</a></p>
                <p>Forgot <a href="#">Password?</a></p>
              </div>
            </div>

          </div>
        </div>


        <script>
          $(document).ready(function(){
            $("#myBtn4").click(function(){
              $("#myModal4").modal();
            });
          });
        </script>



        <script>
          $("#myBtn4").click(function(e) {
            e.preventDefault();
            $.ajax({
              type: "POST",
              url: "http://192.168.1.105:8080/servlet/menu",
              data: {
                value: '4' // < note use of 'this' here

              },
              success: function(result) {
                console.log(result.pizza_item_unit_price);
                console.log(result);
                $("#unitprice4").val(result.pizza_item_unit_price);
                $("#quantity4").val(result.pizza_item_available_quantity);
              },
              error: function(result) {
                alert('error');
              }
            });
          });

        </script>
        <%--ending--%>
      </td>
      <td  width = "20%">
        <img src="https://www.pizzahut.lk/Images/Product/Cheesy%20Onion.png" alt="HTML5 Icon" style="height:200px;">
        <br />
        Cheesy Onion<br />
        <%--adding model--%>
        <!-- Trigger the modal with a button -->
        <button type="button" class="btn btn-default btn-lg" id="myBtn5">ORDER NOW</button>

        <!-- Modal -->
        <div class="modal fade" id="myModal5" role="dialog">
          <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
              <div class="modal-header" style="padding:35px 50px;">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4><span class="glyphicon glyphicon-lock"></span> Order NOW</h4>
              </div>
              <div class="modal-body" style="padding:40px 50px;">
                <form role="form"  method="post" >
                  <div class="form-group">
                    <label for="usrname"><span class="glyphicon glyphicon-user"></span> Unit Price</label>
                    <input type="text" class="form-control" id="unitprice5" name="username" placeholder="Enter email">
                  </div>
                  <div class="form-group">
                    <label for="psw"><span class="glyphicon glyphicon-eye-open"></span> Availble Quantity</label>
                    <input type="text" class="form-control" id="quantity5" name="password" placeholder="Enter password">
                  </div>
                  <div class="form-group">
                    <label for="psw"><span class="glyphicon glyphicon-eye-open"></span> Order Amount</label>
                    <input type="text" class="form-control" id="amount5" name="orderamount" placeholder="Enter amount">
                  </div>
                  <div class="checkbox">
                    <label><input type="checkbox" value="" checked>Agree to the policies</label>
                  </div>
                  <button type="submit" class="btn btn-success btn-block"><span class="glyphicon glyphicon-off"></span> Order</button>
                </form>
              </div>
              <div class="modal-footer">
                <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
                <p>Not a member? <a href="#">Sign Up</a></p>
                <p>Forgot <a href="#">Password?</a></p>
              </div>
            </div>

          </div>
        </div>


        <script>
          $(document).ready(function(){
            $("#myBtn5").click(function(){
              $("#myModal5").modal();
            });
          });
        </script>



        <script>
          $("#myBtn5").click(function(e) {
            e.preventDefault();
            $.ajax({
              type: "POST",
              url: "http://192.168.1.105:8080/servlet/menu",
              data: {
                value: '5' // < note use of 'this' here

              },
              success: function(result) {
                console.log(result.pizza_item_unit_price);
                console.log(result);
                $("#unitprice5").val(result.pizza_item_unit_price);
                $("#quantity5").val(result.pizza_item_available_quantity);
              },
              error: function(result) {
                alert('error');
              }
            });
          });

        </script>
        <%--ending--%>
      </td>
    </tr>

    </table>
</div>

<!-- Container (TOUR Section) -->
<div id="tour" class="bg-1" style="">
  <div class="container">
    <table width = "100%" height border = "0">

      <tr valign = "top">
        <td  width = "50%">
          <!-- Button to open the modal -->
          <button onclick="document.getElementById('id01').style.display='block'" style="text-align:center">MEMBER SIGNUP</button>

          <!-- The Modal (contains the Sign Up form) -->
          <div id="id01" class="modal">
            <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
            <form class="modal-content animate" action="servlet/signup" method="post">
              <div class="container">
                <label><b>First Name</b></label>
                <input type="text" placeholder="Enter FirstName" name="fname" required>
                <label><b>Last Name</b></label>
                <input type="text" placeholder="Enter Last Name" name="lname" required>
                <label><b>Address</b></label>
                <input type="text" placeholder="Enter Address" name="address" required><br/>
                <label><b>Mobile</b></label>
                <input type="text" placeholder="Enter Mobile" name="mobile" required>
                <label><b>Email</b></label>
                <input type="text" placeholder="Enter Email" name="email" required>

                <label><b>Password</b></label>
                <input type="password" placeholder="Enter Password" name="psw" required>

                <label><b>Repeat Password</b></label>
                <input type="password" placeholder="Repeat Password" name="psw-repeat" required><br/>
                <input type="checkbox" checked="checked"> Remember me
                <p>By creating an account you agree to our <a href="#">Terms & Privacy</a>.</p>

                <div class="clearfix">
                  <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
                  <button type="submit" class="signupbtn">Sign Up</button>
                </div>
              </div>
            </form>
          </div>


        </td>

        <td  width = "50%">
          <!-- Trigger the modal with a button -->
          <button type="button" class="btn btn-default btn-lg" id="myBtn">MEMBER SIGNIN</button>

          <!-- Modal -->
          <div class="modal fade" id="myModal" role="dialog">
            <div class="modal-dialog">

              <!-- Modal content-->
              <div class="modal-content">
                <div class="modal-header" style="padding:35px 50px;">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <h4><span class="glyphicon glyphicon-lock"></span> Login</h4>
                </div>
                <div class="modal-body" style="padding:40px 50px;">
                  <form role="form" action="servlet/signin" method="post" >
                    <div class="form-group">
                      <label for="usrname"><span class="glyphicon glyphicon-user"></span> Username</label>
                      <input type="text" class="form-control" id="usrname" name="username" placeholder="Enter email">
                    </div>
                    <div class="form-group">
                      <label for="psw"><span class="glyphicon glyphicon-eye-open"></span> Password</label>
                      <input type="text" class="form-control" id="psw" name="password" placeholder="Enter password">
                    </div>
                    <div class="checkbox">
                      <label><input type="checkbox" value="" checked>Remember me</label>
                    </div>
                    <button type="submit" class="btn btn-success btn-block"><span class="glyphicon glyphicon-off"></span> Login</button>
                  </form>
                </div>
                <div class="modal-footer">
                  <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
                  <p>Not a member? <a href="#">Sign Up</a></p>
                  <p>Forgot <a href="#">Password?</a></p>
                </div>
              </div>

            </div>
          </div>


  <script>
    $(document).ready(function(){
      $("#myBtn").click(function(){
        $("#myModal").modal();
      });
    });
  </script>

        </td>



      </tr>

    </table>
  </div>
  </div>


<!-- Container (Contact Section) -->
<div id="contact" class="container">
  <h3 class="text-center">Contact</h3>
  <p class="text-center"><em>We love our fans!</em></p>

  <div class="row">
    <div class="col-md-4">
      <p>Fan? Drop a note.</p>
      <p><span class="glyphicon glyphicon-map-marker"></span>Chicago, US</p>
      <p><span class="glyphicon glyphicon-phone"></span>Phone: +00 1515151515</p>
      <p><span class="glyphicon glyphicon-envelope"></span>Email: mail@mail.com</p>
    </div>


    <form action="servlet/contact" method="post">
    <div class="col-md-8">
      <div class="row">
        <div class="col-sm-6 form-group">
          <input class="form-control" id="name" name="username" placeholder="Name" type="text" required>
        </div>
        <div class="col-sm-6 form-group">
          <input class="form-control" id="email" name="useremail" placeholder="Email" type="email" required>
        </div>
      </div>
      <textarea class="form-control" id="comments" name="usercomment" placeholder="Comment" rows="5"></textarea>
      <br>
      <div class="row">
        <div class="col-md-12 form-group">
          <button class="btn pull-right" type="submit">Send</button>
        </div>
      </div>
    </div>
    </form>



  </div>
  <br>
  <h3 class="text-center">From The Blog</h3>
  <ul class="nav nav-tabs">
    <li class="active"><a data-toggle="tab" href="#home">Mike</a></li>
    <li><a data-toggle="tab" href="#menu1">Chandler</a></li>
    <li><a data-toggle="tab" href="#menu2">Peter</a></li>
  </ul>

  <div class="tab-content">
    <div id="home" class="tab-pane fade in active">
      <h2>Mike Ross, Manager</h2>
      <p>Wow this place is amazing!. I feel like to come every day to eat Pizza</p>
    </div>
    <div id="menu1" class="tab-pane fade">
      <h2>Chandler Bing, Guitarist</h2>
      <p>Not Bad. </p>
    </div>
    <div id="menu2" class="tab-pane fade">
      <h2>Peter Griffin, Bass player</h2>
      <p>I would like to say this ordering system is perfect</p>
    </div>
  </div>
</div>

<!-- Add Google Maps -->
<div id="googleMap"></div>
<script>
  function myMap() {
    var myCenter = new google.maps.LatLng(41.878114, -87.629798);
    var mapProp = {center:myCenter, zoom:12, scrollwheel:false, draggable:false, mapTypeId:google.maps.MapTypeId.ROADMAP};
    var map = new google.maps.Map(document.getElementById("googleMap"),mapProp);
    var marker = new google.maps.Marker({position:myCenter});
    marker.setMap(map);
  }
</script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD4nNQIeSsAd8ZtSXSmkbiBgB4kaprnNTg&callback=myMap"></script>
<!--
To use this code on your website, get a free API key from Google.
Read more at: https://www.w3schools.com/graphics/google_maps_basic.asp
-->

<!-- Footer -->
<footer class="text-center">
  <a class="up-arrow" href="#myPage" data-toggle="tooltip" title="TO TOP">
    <span class="glyphicon glyphicon-chevron-up"></span>
  </a><br><br>
  <p>Created by Chinthaka Hsenid Mobile(BeyondM Kandy) </p>
</footer>

<script>
  $(document).ready(function(){
    // Initialize Tooltip
    $('[data-toggle="tooltip"]').tooltip();

    // Add smooth scrolling to all links in navbar + footer link
    $(".navbar a, footer a[href='#myPage']").on('click', function(event) {

      // Make sure this.hash has a value before overriding default behavior
      if (this.hash !== "") {

        // Prevent default anchor click behavior
        event.preventDefault();

        // Store hash
        var hash = this.hash;

        // Using jQuery's animate() method to add smooth page scroll
        // The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
        $('html, body').animate({
          scrollTop: $(hash).offset().top
        }, 900, function(){

          // Add hash (#) to URL when done scrolling (default click behavior)
          window.location.hash = hash;
        });
      } // End if
    });
  })
</script>

</body>
</html>
