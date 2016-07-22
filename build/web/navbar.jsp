<html>
    <head>
        <link rel="stylesheet" href="https://storage.googleapis.com/code.getmdl.io/1.0.6/material.indigo-pink.min.css">
        <script src="https://storage.googleapis.com/code.getmdl.io/1.0.6/material.min.js"></script>
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
        
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <script>
            function spinner() {
                document.getElementById("spinner").style.visibility = 'hidden';
            }
        </script>
    </head>
    <body onload="spinner()"  data-spy="scroll" data-target=".navbar" data-offset="50">
        <!-- Always shows a header, even in smaller screens. -->
        <div class="mdl-layout mdl-js-layout mdl-layout--fixed-header navbar navbar-inverse navbar-fixed-top" >
            <header class="mdl-layout__header navbar-header" style="text-align: center; background-color: rgb(91,37,78)">
                <div class="mdl-layout__header-row" >
                    <!-- Title -->
                    <span class="mdl-layout-title" style="text-align: center">DeliverIt</span>
                    <!-- Add spacer, to align navigation to the right -->
                    <div class="mdl-layout-spacer"></div>
                    <!-- Navigation -->
                    <nav class="mdl-navigation">
                        <a class="mdl-navigation__link" href="" style="color:gray"><div><img src="images/cart4.png" height="40px" width="40px"></div></a>
                        <a class="mdl-navigation__link" href="" style="color:gray"><div style="margin-left: 20px"><img src="images/user.png" height="40px" width="40px"></div></a>      
                    </nav>
                </div>
            </header>
            <div class="mdl-layout__drawer">
                <span class="mdl-layout-title">User Name</span>
                <nav class="mdl-navigation">
                    <a class="mdl-navigation__link" href=""><img src="images/home.png" height="50px" width="50px">Home</a>
                    <a class="mdl-navigation__link" href=""><img src="images/RecentOrders.png" height="50px" width="50px">Recent Orders</a>    
                    <a class="mdl-navigation__link" href=""><img src="images/profile.png" height="50px" width="50px">Profile</a>    
                    <a class="mdl-navigation__link" href=""><img src="images/instructions.png" height="50px" width="50px">Instructions</a>    
                    <a class="mdl-navigation__link" href=""><img src="images/privacy.png" height="50px" width="50px">Privacy Policy</a>    
                    <a class="mdl-navigation__link" href=""><img src="images/contact.png" height="50px" width="50px">Contact Us</a>    
                </nav>
            </div>
            <main class="mdl-layout__content">
                <div class="page-content">
                    <!-----search icon----->

                
                    <div class="mdl-layout mdl-js-layout mdl-color--grey-100" style="float: left;margin-left: 20px" >
                        <main class="mdl-layout__content" >
                            <form action="#">
                                <div class="mdl-textfield mdl-js-textfield mdl-textfield--expandable">
                                    <p>search here</p><label class="mdl-button mdl-js-button mdl-button--icon" for="site-search">
                                        <i class="material-icons">search</i>
                                    </label>

                                    <div class="mdl-textfield__expandable-holder">

                                        <input class="mdl-textfield__input" type="search" id="site-search" />
                                        <label class="mdl-textfield__label" for="site-search">Search</label>
                                    </div>
                                </div>
                            </form>
                        </main>
                    </div><br><br><br><br>

                    <div id="spinner" class="main"> 
                        <!-- MDL Container using class mdl-spinner -->
                        <div class="mdl-spinner mdl-js-spinner is-active"></div>

                    </div> <!-- End of .main class -->

                    <!-----search icon----->
                    
                    <div id="signupLoginSection" style="float:right">
                        <%//@include file="signupLogin.jsp" %>
                        
                    </div>

                    <!----card------->
                        <!-- Mini FAB button -->
<button class="mdl-button mdl-js-button mdl-button--fab mdl-button--mini-fab">
  <i class="material-icons">delete</i>
</button>

<!-- Colored mini FAB button -->
<button class="mdl-button mdl-js-button mdl-button--fab mdl-button--mini-fab mdl-button--colored">
  <i class="material-icons">delete</i>
</button>

                    </div>
            </main>
                </div>-->


                </body>
                </html>