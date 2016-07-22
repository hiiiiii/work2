<link rel="stylesheet" href="https://storage.googleapis.com/code.getmdl.io/1.0.6/material.indigo-pink.min.css">
    <script src="https://storage.googleapis.com/code.getmdl.io/1.0.6/material.min.js"></script>
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css"> 
<%

%>
<div id="page">
        <center>
            <div class="demo-card-wide mdl-card mdl-shadow--2dp w3-animate-top">

                <div class="mdl-card__supporting-text">
                    <center>
                        <h3 style="font-family:'Droid Sans'; color: rgb(91,37,78); ">Deliverit</h3>
                        <form  style="font-family:'Droid Sans';" id="signup" action="signup.jsp">
                            <!--<div class=" mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                <input class="mdl-textfield__input" type="text" id="truename" >
                                <label class="mdl-textfield__label" for="truename"><b>Your Name</b></label>
                            </div>-->
                            <br />
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                <input class="mdl-textfield__input" type="text" id="username" required>
                                <label class="mdl-textfield__label" for="username"><b>Your Username</b></label>
                            </div>
                            <br />
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                <input class="mdl-textfield__input" type="email" id="email" required>
                                <label class="mdl-textfield__label" for="email"><b>Your Email Id.</b></label>
                            </div>
                            <br />
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                <input class="mdl-textfield__input" type="password" id="password" required>
                                <label class="mdl-textfield__label" for="password"><b>Your Password</b></label>
                            </div>
                            <br />
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                <input class="mdl-textfield__input" type="password" id="confirmpassword" required />
                                <label class="mdl-textfield__label" for="confirmpassword"><b>Confirm Password</b></label>
                            </div><br />
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                <input class="mdl-textfield__input" type="number" id="phone" min="1000000000" max="10000000000" required>
                                <label class="mdl-textfield__label" for="phone"><b>Your phone no.</b></label>
                            </div><br /><br />
                            <!-- Accent-colored raised button with ripple -->
                            <button type="submit" class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent" style="background-color: rgb(91,37,78);padding-left:30%;padding-right:30%;text-align:center">
                                Sign Up
                            </button>
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
  