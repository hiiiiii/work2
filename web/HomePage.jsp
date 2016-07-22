<!DOCTYPE html>
<html>
    <title>W3.CSS</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://code.getmdl.io/1.1.3/material.indigo-pink.min.css">
    <script defer src="https://code.getmdl.io/1.1.3/material.min.js"></script>
    <script>
        function w3_open() {
            document.getElementById("mySidenav").style.width = "20%";
            document.getElementById("mySidenav").style.display = "block";
        }
        function w3_close() {
            document.getElementById("mySidenav").style.display = "none";
        }
    </script>
    <style>
        input[type=search]{box-sizing:content-box;-webkit-appearance:textfield;-moz-box-sizing:content-box;-webkit-box-sizing:content-box}
        input[type=search]::-webkit-search-cancel-button,input[type=search]::-webkit-search-decoration{-webkit-appearance:none}
        .c1{
            background-color:#f9f9f9; 
        }
    </style>
    <body style="background-color:#FAF0E6">

        <!--<nav class="w3-sidenav w3-white w3-card-2" style="display:none;font-size: 20px" id="mySidenav">
            <a href="javascript:void(0)" onclick="w3_close()" 
               class="w3-closenav w3-large">Close &times;</a>
            <img src="images/profile.png"><br>
            <h3>UserName</h3>
            <a href="#"><img src="images/RecentOrders.png">Recent Orders</a>
            <a href="#">Link 2</a>
            <a href="#">Link 3</a>
            <a href="#">Link 4</a>
            <a href="#">Link 5</a>
        </nav>



        <header class="w3-container " style="height:80px;background-color:rgb(91,37,78)">
            <br>
            <span class="w3-opennav w3-xlarge w3-gray" onclick="w3_open()"><img src="images/settings.png" width="30" height="30"></span>
            <span class="w3-xlarge" style="padding-left: 20px;color: #ffffff">DeliverIt </span>
            <span style="padding-left: 1000px" onclick="document.getElementById('id01').style.display = 'block'"><img src="images/cart4.png" width="30" height="30"></span>
            <span style="padding-left: 70px"><img src="images/user.png" width="30" height="30"></span>
        </header>


        <div id="id01" class="w3-modal w3-animate-zoom" style="height:100%">
            <div class="w3-modal-content" style="height:100%">
                <div class="w3-container" style="height:100%">
                    <span onclick="document.getElementById('id01').style.display = 'none'" class="w3-closebtn">&times;</span>
                    <%//@include file="cards.html" %>
                </div>
            </div>
        </div>-->
        <div id="threeThings" class="c1">
            <button class="mdl-button mdl-js-button mdl-button--fab mdl-button--mini-fab">
  <i class="material-icons">delete</i>
</button>

<!-- Colored mini FAB button -->
<button class="mdl-button mdl-js-button mdl-button--fab mdl-button--mini-fab mdl-button--colored">
  <i class="material-icons">delete</i>
</button>
            
            <div>
                <%@include file="navbar.jsp" %>
            </div>
            <div style="float: right;margin-right: 6%;background-color: #708090;margin-top: 3%">
                <%@include file="signupLogin.jsp" %>
            </div>

            <div id="searchbar" style="border-bottom:1px">
                <%@include file="searchBar.jsp" %>
            </div>

            <div id="carousol"  >
                <%@include file="carousol.jsp" %>
            </div>
        </div>
        <div id="homepagecard" >
            <div style="float: left;padding: 10px;" > <%@include file="homePageCard.jsp" %></div>
            <div style="float: left;padding: 10px;" > <%@include file="homePageCard.jsp" %></div>
            <div style="float: left;padding: 10px;"> <%@include file="homePageCard.jsp" %></div>
            <div style="float: left;padding: 10px;"> <%@include file="homePageCard.jsp" %></div>
        </div>

    </body>
</html>