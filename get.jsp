<%@ page import="java.sql.*"%>
<%@ page import = "java.util.Date" %>
<%@ page import = "java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<head><!--   THIS IS TRANSACTION LOGIC PAGE -->
    <meta name="viewport" content= "width=device-width, initial-scale=1.0">
    <title>
        Transaction Status
    </title>
    <style>
        i , h1{
            text-align: center;
        }
        .fot{
            margin-bottom: 0px;
            margin-top: auto;
            display: block;
            text-align: center;
            background-color: black;
            color: aliceblue;
            padding: 25px;
        }
        nav {
            border: 1px;
            background-color: coral;
            color: black;
            padding: 26px;
            width: 870px;
        }
         
        a {
            text-decoration: none;
            color: black;
            font-size: 20px;
            padding: 20px;
        }
        a:hover{
            background-color: gold;
        }
    </style>
</head>
<body bgcolor=" azure ">
  <nav>
    <a href="front.jsp"> HOME </a>
    <a href="customer.jsp"> CUSTOMERS </a>
    <a href="transhist.jsp"> TRANSACTION HISTORY </a>
    <a href="test.jsp"> TRANSACT </a>
    <a href="mailto:vaddarapusaikiran18@gmail.com" target="_blank"> CONTACT ME </a>
</nav>
    <%
  String user = "root"; 
  Connection con=null;
  PreparedStatement r =null;
  Statement st=null; 
  %>
  <%! int cv,rt; %>
  <%
    Class.forName("com.mysql.cj.jdbc.Driver");
    con = (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/project",user,"root");
    String x=request.getParameter("sender");
    String y=request.getParameter("amt");
    int amt=Integer.parseInt(y);
    String rcvr=request.getParameter("rec");
    st=con.createStatement();
    r=con.prepareStatement("select balance from cust where name = ?");
    r.setString(1,x);
    ResultSet g=r.executeQuery();
    if(g.next())
         cv=g.getInt(1);
    if(amt<=cv){
    cv=cv-amt;
    %>
    <%    
    r=con.prepareStatement("update cust set balance = ? where name = ? ");
    
    r.setInt(1,cv);
    r.setString(2,x);
    r.executeUpdate();
    %>
    <br>
    <%
       r=con.prepareStatement("select balance from cust where name = ?");
       r.setString(1,rcvr);
       ResultSet k=r.executeQuery();
       if(k.next())
         rt=k.getInt(1);
    %>
    <br>
    <%
    r=con.prepareStatement("update cust set balance = ? where name = ? ");
    rt=rt+amt;
    r.setInt(1,rt);
    r.setString(2,rcvr);
    r.executeUpdate(); %>
    <%
  SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
  String date = sdf.format(new Date());
  r=con.prepareStatement("insert into transact values(?,?,?,?)");
  r.setString(1,x);
  r.setString(2,rcvr);
  r.setInt(3,amt);
  r.setString(4,date);
  r.executeUpdate();
     %>
       <script>
    alert("... Transaction in progress ....");
</script>
      <h1 style="text-align:center; color:green" > Transaction Successful </h1><br>
    <% } 
    else{
    %> 
    <script>
    alert("Insufficient Balance ");
</script>
     <h1 style="text-align: center; color: red;" color:red> Transaction Failed </h1><br>
    <% 
       } %>
       <footer>
        <div class="fot">
            @Copyright All rights Reserved <br><br>
            Saikiran Vaddarapu <br><br>
            <a href="mailto:vaddarapusaikiran18@gmail.com" style="color: aliceblue; font-size: small;"> CONTACT ME </a>
        </div>
    </footer>
</body>
</html>