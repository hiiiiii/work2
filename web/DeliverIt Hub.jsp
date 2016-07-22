<%@page import="jdbc.DAOLayerDemo"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.ResultSet"%>
<head><meta name="viewport" content="width=device-width, initial-scale=1">
      <link rel="stylesheet" href="https://storage.googleapis.com/code.getmdl.io/1.0.6/material.indigo-pink.min.css">
      <script src="https://storage.googleapis.com/code.getmdl.io/1.0.6/material.min.js"></script>
      <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
</head>
<%
String select="select * from subcategory where Cid=1";
ResultSet rs=DAOLayerDemo.selectData(select);
int i=0,j=0;
String subcat[]=new String[20];
String subcatimg[]=new String[20];
while(rs.next()){
    subcat[i]=rs.getString(3);
    subcatimg[i]=rs.getString(4);
    i++;
}

%>
<body style="background-color: #ed9214">
<div class="mdl-card mdl-card--border mdl-shadow--2dp through mdl-shadow--16dp" style="width:96%;margin:2%;padding: 1%">
    <center><h2>DeliverIt Hub</h2><hr></center>
    <div>
    <%
    while(j!=i){
    %>
    <a href="<%=subcat[j]%>.jsp"><div style="float:left;padding:1%;margin: 1%;"><img src="<%=subcatimg[j]%>" width="190" height="170"><br><br><center><span style="font-family:veranda;font-size:120%"><%=subcat[j]%></span></center></div></a>
     
     <%j++;}%>
</div>
</div>
</body>