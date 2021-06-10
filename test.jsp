<html>
<!--    THIS IS FILE WHICH APPEARS FROM CUST TABLE -->
<head>
  <meta name="viewport" content= "width=device-width, initial-scale=1.0">
  <title> Transact </title>
  <style>
    table.center {
    margin-left: auto; 
    margin-right: auto;
    margin-top: auto;
    margin-bottom: auto;
  }
  table{
      width: 700px;
      height: 400px;
  }
  td {
      padding: 10px;
      color:crimson;
      background-color: beige;
  }
  th{
      padding: 10px;
      color:indigo;
      background-color: deepskyblue;
  }
  </style>
</head>
<body style="background-color: darkgrey;">
<!--h1>The select element</h1>

<p>The select element is used to create a drop-down list.</p-->
  <br>
  <h1 style="text-align: center; color:indigo;">TRANSACT AMOUNT </h1><br>
<div class="center">
<form action="get.jsp">
    <table border="4px solid black" class="center">
    <tr><td>
  <label for="cars">Choose an account :</label></td>
  <td>
  <select name="sender" id="cars">
    <option value="Sai">Sai</option>
    <option value="Pooja">Pooja</option>
    <option value="tomi">tomi</option>
    <option value="divi">divi</option>
    <option value="mohan">mohan</option>
    <option value="leela">leela</option>
    <option value="vijay">vijay</option>
    <option value="meher">meher</option>
    <option value="vikas">vikas</option>
    <option value="nupur">nupur</option>
  </select></td>
  </tr>
  <tr><td>
  <label for="re">Choose Receiver: </label> </td>
  <td>
  <select name="rec" id="re">
    <option value="Sai">Sai</option>
    <option value="Pooja">Pooja</option>
    <option value="tomi">tomi</option>
    <option value="divi">divi</option>
    <option value="mohan">mohan</option>
    <option value="leela">leela</option>
    <option value="vijay">vijay</option>
    <option value="meher">meher</option>
    <option value="vikas">vikas</option>
    <option value="nupur">nupur</option>
  </select></td></tr>
  <tr><td>
  Enter money to send : </td><td><input type="text" name="amt"></td></tr>
  <tr><td> ---- </td><td>
  <input type="submit" value="Submit"></td>
</tr>
  </table>
</form></div>
</body>
</html>
