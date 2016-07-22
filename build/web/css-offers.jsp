

    <head>
        <link rel="stylesheet" href="https://storage.googleapis.com/code.getmdl.io/1.0.6/material.indigo-pink.min.css">
        <script src="https://storage.googleapis.com/code.getmdl.io/1.0.6/material.min.js"></script>
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
        <style>
            
             
        </style>
        <script>
            function display(){
               
              document.getElementById("header").innerHTML=document.getElementById("block").innerHTML;
            }
            function hideit(){
                 document.getElementById("header").innerHTML="Offers"
            }
            $('showhim').hover(function(){
                $('block').animate({
                    bottom:'10px'},100);});
                
            
        </script>
            
    </head>
    <body>
         
        
        <div class="mdl-shadow--2dp w3-card-16" style="width:60%; margin-left:100px; margin-bottom: 10px;margin-top: 10px;margin-right: 100px">
            <table>
                <tr>
                    <td>
                        <div id="heading-price">
                            <div>
                                <img src="deliverit.png" width="40" height="40"><h5 class="mdl-card__title-text" style="margin: 0px;padding: 0px;float:right;">Veg Chowmein</h5>


                            </div>
                            <hr>

                            <div class="mdl-card__supporting-text" style="margin: 0px;padding: 0px">
                                Price - rs.70
                            </div></div></td>
                    
                    <td>
                        <table align="center">
                            <tr>
                                <td class="mdl-card__supporting-text">Restraunt/source:</td><td class="mdl-card__supporting-text"><a href="#">Deliverit Hub</a></td>
                            </tr>
                            <tr>
                                <td class="mdl-card__supporting-text">Category:</td><td class="mdl-card__supporting-text"><a href="#">Veg Kadhai Items</a></td>
                            </tr>
                        </table>
                    </td>
                    <td style="background-color:gainsboro">

                <center>
                        <div style="padding-top:10px;font-family: verdana" class="showhim" id="offerD" onmouseover="display()"  onmousemove="display()" onmouseout="hideit()">
                           
                            <div id="header" >  <h4>Offers</h4></div>
                             <div id="block"  class="block  w3-animate-top dropdown-content" style="visibility: hidden;">
                                 <p>          Get 10% discount above Rs.120 purchase..HURRYY!!!!!</p><p>!!!!!!!!!!!!!!!!!!!!!!!!</p><p>!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!</p><p>!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!111!</p>
        </div>
                        </div></center>


                    </td>


                </tr>
            </table>


            <center> <div class="mdl-card__actions mdl-card--border" >
                    Add To Cart<a class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
                        +
                    </a>
                    <a class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
                        -
                    </a>
                </div></center>

        </div>
   
      
    

    </body>
