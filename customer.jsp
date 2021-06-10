<%@ page import="java.sql.*"%>
<html>
<head>
<title> Customers </title>
<meta name="viewport" content= "width=device-width, initial-scale=1.0">
<style>
table.center {
    margin-left: auto; 
    margin-right: auto;
  }
  table{
      width: 700px;
  }
  td {
      padding: 10px;
      color:crimson;
      background-color: beige;
      font-size:medium;
  }
  th{
      padding: 10px;
      color:indigo;
      background-color: deepskyblue;
  }
  .fot{
            margin-bottom: auto;
            margin-right: auto;
            display: block;
            text-align: center;
            background-color: black;
            color: aliceblue;
            padding: 25px;
        }
</style>
</head>
<body bgcolor="BurlyWood">   
<h1 style="text-align:center"> CUSTOMERS DETAILS </h1>
<%
  String user = "root"; 
  Connection con=null;
  PreparedStatement r =null;
  Statement st=null;
    Class.forName("com.mysql.cj.jdbc.Driver");
    con = (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/project",user,"root"); %>
    <%  st=con.createStatement();
    ResultSet rs=st.executeQuery("select * from cust");
 %>
 <table border="4px solid black" class="center">
    <tr>
        <th> S.No </th>
        <th> Name </th>
        <th> Email </th>
        <th> Amount </th>
        <th> Operation </th>
    </tr>
<%  while(rs.next()){ %>
       <tr>
           <td><%= rs.getInt(1) %></td>
           <td><%= rs.getString(2) %></td>
           <td><%=  rs.getString(3) %></td>
           <td><%=  rs.getInt(4) %></td>
           <td><a href="test.jsp" target="_blank"> Transact </a></td>
       </tr>
  <% }  %> 
</table>
<br><br><br>
<footer>
    <div class="fot">
        @Copyright All rights Reserved <br><br>
        Saikiran Vaddarapu <br><br>
        <a href="mailto:vaddarapusaikiran18@gmail.com" style="color: aliceblue; font-size: small;"> CONTACT ME </a>
    </div>
  </footer>
</body>
</html>