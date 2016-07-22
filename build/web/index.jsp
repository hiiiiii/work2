<!---<head>
  <script type="text/javascript" src="jquery-2.2.2.min.js">
</script>
<!--  <script>
    $(document).ready(function(){
        $("text").keyup(function(){
            search();
        });
    });
<script>
    var input=document.getElementById("input");
    function search(){
        document.getElementById("myForm").submit();
    }
    input.addEventListener('keyup',search);
</script>
<script>
    $('#input').bind('keyup',function(){
        $('#myForm').delay(200).submit();
    });
    
    $("#myForm").submit(function(keyup){
        keyup.preventDefault();
        $.ajax({
            type: "post",
            datatype: "html",
            url: 'localhost:8084/searchText/doSearch.jsp',data: $("#myForm").serialize()}
        
        });
    });
</script>--->
<!--
<h4>Search here </h4>
 <%//
 //String search1=request.getParameter("search");
 //if(search1==null)
   //  search1="";
 %>
 <script>
    
      function submit1(){
   
   document.forms[1].submit();
      }
       var l=_.debounce(submit1,2000);
       
       
      
  </script>
  <script src="//code.jquery.com/jquery-1.1.1.2.min.js"></script>
<!--  <script>
  $(document).ready(function(){
  $("#input").keyup(function(){
      var str=$(this).val();
      setTimeout(function(){
          if(str==$("#input").val()){}},000);
      });
  });    
  
      

  </script>-->
  
 <!--<script>
   $('input').keyup(debounce(function(){
       var $this=$(this);
       var n1=$('#input').val();,5000);
   });   
  </script>-->
 <!--<script>
     var typingTimer=0;
     var doneTypingInterval=5000;
     $('#input').keyup(function(){
         clearTimeout(typingTimer);
         if($('#input').val()){
             typingTimer=setTimeout(doneTyping,doneTypingInterval);}});
     function doneTyping(){
         form.submit();
         }
     })
 </script>-->
 <!--<script>
     document.return.submit();
 </script>-->
 <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
        <script src="http://code.jquery.com/ui/1.9.2/jquery-ui.js"></script>
 <!--<script>
  var globalTimeout=null;
  $("#input").keyup(function(){
      if(globalTimeout)
          clearTimeout(globalTimeout);
      globalTimeout=setTimeout(function(){
        
    form.submit();
        console.log("now search");
      },2000);
});
  
     
    function submitForm(){
  globalTimeout=null;
    document.getElementById("input").value=document.getElementById("dispatcher").value;
     document.forms[1].submit();
   }
   </script>-->
<!-- </head>

 
  
 <body>
     <form id="indicator">
         <input type="hidden" id="dispatcher" name="searcher" >
     </form>
    
<form action="index.jsp" id="myForm">
    <input type="text" id="input" name="search" value="<%//=search1%>" onkeyup="l();">
    
   
</form><br>
<script>
    function search(){
        document.getElementById('myForm').submit();
    }
</script>

<%//@include file="doSearch.jsp" %>
</body>--->



<!----------------------------------------------new index----------->
<script>
    function assign(){
        document.getElementById("user").value=localStorage.getItem("username");
    }
</script>
<form action="navbar3.jsp">
    <input type="text" name="rid">
    <input id="user" type="hidden" name="username">
    <input type="submit" onsubmit="assign()" value="submit">
</form>


