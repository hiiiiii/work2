
<%@page import="java.sql.ResultSet"%>
<%@page import="jdbc.DAOLayerDemo"%>
<%
    int i = 0;
    String tables[] = {"consumer", "deliveritItems", "logg"};
    //ye teen random tables h meri MYSQL me to vo lia pehle
    /*String searchTables="show tables;";
     ResultSet rs=DAOLayer.selectData(searchTables);
     while(rs.next()){
     tables[i]=rs.getString(1);
     i++;
     }*/
    int j = 0, k = 0;
    String items[] = new String[100];
    while (j != 2) {
        String item = "select * from " + tables[j];
        //fr hr tables se uska item name nikala yaha pr
        j++;
        ResultSet as = DAOLayerDemo.selectData(item);
        while (as.next()) {
            items[k] = as.getString(1);
            //fr usko items[] me store krta gya//
            k++;
        }
    }//sun ..suggestions wala part chor de..
    //user jab enter dabaye tabhi search karwa abhi k liye..ok?//haan wai hoga bs...us time neech suggestions aare the vo nhi kru yai bol ra? 
    //yes
    //ok thk h////to ab items wale saare pages bna deta hu...aur search dabaega tb naya page khulega jo searched items se related sb chiz btaega..vo krta hu...fr cart ok?
    //ok//thk h ab/ /chblyeta hu///
    //path / tio ????? yea kya hai ?//rishabh bhaiya link diye the taki suggestions aaye to us link me yai bola tha ki isko daal lo bs
//ok    //jquery.flexdybehukb yebybbebybeybeye bye //ok bye//atalist.min.css //yea file kha hai?///wait
%>
<head>
    <link href="jquery.flexdatalist.min.css" rel="stylesheet" type="text/css">
    <script src="jquery.flexdatalist.min.js"></script>
    <script>
        $('.flexdatalist').flexdatalist({
     minLength: 1
});
    </script>
</head>
<form action="recieveText.jsp">

    <input placeholder='Programming language name'
           class='flexdatalist'
           data-min-length='1'
           list='languages'
           name='language'
           type='text'>
    <datalist id="languages">
        <%
            int m = 0;
            while (m != k) {
        %>
        <option value="<%=items[m]%>"><%=items[m]%></option>
        <%}%>
    </datalist>

</form>
<!--<datalist id="languages"> yea hai code?//haan ok wait//run kru?
    <option value="PHP">PHP</option> //tu kar kya raha hai samjha jara
    <option value="JavaScript">JavaScript</option>
    <option value="Cobol">Cobol</option>
    <option value="C#">C#</option>
//
    <option value="C++">C++</option>
    <option value="Java">Java</option>
    <option value="Pascal">Pascal</option>
    <option value="FORTRAN">FORTRAN</option>
    <option value="Lisp">Lisp</option>
    <option value="Swift">Swift</option>
</datalist>-->