<html>
 <head>
      <link rel="stylesheet" href="https://storage.googleapis.com/code.getmdl.io/1.0.6/material.indigo-pink.min.css">
      <script src="https://storage.googleapis.com/code.getmdl.io/1.0.6/material.min.js"></script>
      <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
         <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="w3.css" type="text/css">
  
    <script>
       function validationLogin() {
    var x = document.forms["login"]["email"].value;
    var atpos = x.indexOf("@");
    var dotpos = x.lastIndexOf(".");
    if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length) {
        alert("Not a valid e-mail address");
        return false;
    }
}
function assign(){
    document.getElementById("user").value=localStorage.getItem("username");
}
    </script>
    
   </head>
   <%
   String rid=request.getParameter("rid");
   %>
   
   <body>
<!-- MDL Tab Container -->
<div class="mdl-tabs mdl-js-tabs mdl-js-ripple-effect" style="background-color:  #303030 ;margin-bottom: 5%">
  <!-- Tab Bars -->
  <div class="mdl-tabs__tab-bar" >
      <a href="#asia-panel" class="mdl-tabs__tab is-active" style="color:#ffffff">Login</a>
      <a href="#europe-panel" class="mdl-tabs__tab" style="color:#ffffff">SignUp</a>
  </div>

  <!-- MDL tab panels, is-active to denote currently active -->
  <div class="mdl-tabs__panel is-active" id="asia-panel">
    <!--<ul>
      <li>India</li>
      <li>China</li>
      <li>Japan</li>
      <li>Indonesia</li>
      <li>Pakistan</li>
      <li>Saudi Arabia</li>
      <li>Nepal</li>
    </ul>-->
<!--    --------------------------------------login--------------
    -->
    <div id="page" style="padding-bottom: 3%">
        <center>
            <div class="demo-card-wide mdl-card mdl-shadow--2dp w3-animate-top">
               <div class="mdl-card__supporting-text">
                    <center>
                        <h3 style="font-family:'Droid Sans'; color: rgb(91,37,78); ">Deliverit</h3>
                        <h6 style="font-family:'Droid Sans'; color: rgb(157,157,157);">Log in!</h6>
                        <form name="login" style="font-family:'Droid Sans';" id="login" action="Login.jsp" onsubmit="return validationLogin()">
                           
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                <input class="mdl-textfield__input" type="text" id="username" name="email" required>
                                <label class="mdl-textfield__label" for="email"><b>Your emailId</b></label>
                            </div>
                            <input type="hidden" name="username" id="user">
                            <br />
                            <input type="hidden" name="rid" value="<%=rid%>">
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                <input class="mdl-textfield__input" type="password" name="password" id="password" required>
                                <label class="mdl-textfield__label" for="password"><b>Your Password</b></label>
                            </div>
                            <br /><br />
                            <!-- Accent-colored raised button with ripple -->
                            <input value="Login" type="submit" onsubmit="assign()" class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent" style="background-color: rgb(91,37,78);padding-left:30%;padding-right:30%;text-align:center">
                                
                            
                        </form>
                        <br />
                       
                    </center>
               </div>
            </div>
        </center>
    </div>
    <div id="demo-show-snackbar" class="mdl-snackbar mdl-js-snackbar" aria-hidden="false">
        <div class="mdl-snackbar__text"></div>
        <button type="button" class="mdl-snackbar__action"></button>
    </div>
   
    <!--    --------------------------------------login--------------
    -->

    
  </div>
  
  <!-- MDL Tab panel 2 -->
  <div class="mdl-tabs__panel" id="europe-panel">
    <!--<ul>
      <li>England</li>
      <li>France</li>
      <li>Germany</li>
      <li>Spain</li>
    </ul>-->
    <!--------------SIGNUP------------------------------------------------->
      <div id="page">
        <center>
            <div class="demo-card-wide mdl-card mdl-shadow--2dp w3-animate-top">

                <div class="mdl-card__supporting-text">
                    <center>
                        <h3 style="font-family:'Droid Sans'; color: rgb(91,37,78); ">Deliverit</h3>
                        <form  style="font-family:'Droid Sans';" id="signup" action="otpSend.jsp">
                           <!-- <div class=" mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                <input class="mdl-textfield__input" type="text" id="truename" >
                                <label class="mdl-textfield__label" for="truename"><b>Your Name</b></label>
                            </div>-->
                            <br />
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                <input class="mdl-textfield__input" type="text" id="username" name="username" required>
                                <label class="mdl-textfield__label" for="username"><b>Your Username</b></label>
                            </div>
                            <br />
                            <input type="hidden" name="rid" value="<%=rid%>">
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                <input class="mdl-textfield__input" type="text" id="email" name="email" required>
                                <label class="mdl-textfield__label" for="email"><b>Your Email Id.</b></label>
                            </div>
                            <br />
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                <input class="mdl-textfield__input" type="password" id="password" name="password" required>
                                <label class="mdl-textfield__label" for="password"><b>Your Password</b></label>
                            </div>
                            <br />
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                <input class="mdl-textfield__input" type="password" id="confirmpassword" required />
                                <label class="mdl-textfield__label" for="confirmpassword"><b>Confirm Password</b></label>
                            </div><br />
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                <input class="mdl-textfield__input" type="text" id="phone" name="phone" required>
                                <label class="mdl-textfield__label" for="phone"><b>Your phone no.</b></label>
                            </div><br /><br />
                            <!-- Accent-colored raised button with ripple -->
                            <input type="submit" class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent" style="background-color: rgb(91,37,78);padding-left:30%;padding-right:30%;text-align:center" value="Signup">
                            
                        </form>
                        <br />
            
                    </center>
                </div>
            </div>
        </center>
    </div>
    <div id="demo-show-snackbar" class="mdl-snackbar mdl-js-snackbar" aria-hidden="false">
        <div class="mdl-snackbar__text"></div>
        <button type="button" class="mdl-snackbar__action"></button>
    </div>
  
    <!-------------SIGNUP--------------------------------------------------->
  </div>
  
  <!-- MDL Tab panel 3 -->
 <!--- <div class="mdl-tabs__panel" id="america-panel">
    <ul>
      <li>United States of America</li>
      <li>Canada</li>
    </ul>
  </div>-->
  
</div>
   </body></html>