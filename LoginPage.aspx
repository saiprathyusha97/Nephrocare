<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="Nephro_Care.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="styling/Theme.css" />
    <title>Login Page</title>
 
</head>
    
<body style="background-image: url(styling/Login_Background.jpg); background-repeat: no-repeat; height: 100%; background-position: center; ">
    <form id="form1" runat="server">
        <h1>Nephro Care</h1>
    <div>
    <div class="imgcontainer">
    <img src="styling/oooo.png" alt="Jeevandhan" class="avatar" />
  </div>

  <div class="container">
      <asp:Label runat ="server" Text ="Username" Font-Size="150%" Font-Bold ="true"></asp:Label><br />
      <asp:TextBox runat ="server"  ID ="username" Width ="50%" ></asp:TextBox><br />
       <asp:Label runat ="server" Text ="Password" Font-Bold ="true" Font-Size="150%"></asp:Label><br />
      <asp:TextBox runat ="server" ID ="password" Width ="50%" TextMode="Password"></asp:TextBox><br />
      <br />
      <asp:Button runat ="server" ID ="login" BackColor ="Black" ForeColor ="White" BorderWidth ="1px" Font-Size ="130%" OnClick ="Login" Text ="Login" Width ="20%" Height="40px" />
      <br />
      <br />
      <br />
      

  </div>
        </div>
    </form>
</body>
</html>
