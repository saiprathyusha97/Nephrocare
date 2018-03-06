<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RecpDetails.aspx.cs" Inherits="Nephro_Care.RecpDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="stylesheet" href="Styling/navbar.css" type="text/css" />
    <link rel="stylesheet" href="styling/Theme.css" type="text/css" />
    <link rel="stylesheet" href="styling/menu.css" type="text/css" />
    <link rel="stylesheet" href="styling/footer.css" type="text/css" />
</head>
<body>

      <div>
          <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:Label runat ="server" Font-Size ="50"  Font-Italic ="true" Font-Bold ="true" Align ="Center">NephroCare</asp:Label>
          <br />
          <br />
     </div>
    <form id="form1" runat="server">
    <div>
        <div>
        <ul>
  <li><a href="home.aspx">Home</a></li>
  <li class="dropdown">
    <a href="javascript:void(0)" class="dropbtn">Registration</a>
    <div class="dropdown-content" id="con">
      <a href="part1.aspx">Common Details</a>
      <a href="part2.aspx">Medical Details-2</a>
      <a href="part3.aspx">Medical Details-3</a>
      </div>
        
      </li>
  <li><a href="RecpDetails.aspx">Report</a></li>
      <li style="margin-left:680px">
                <asp:Button CausesValidation="false" runat ="server" ID ="login" BackColor ="Black" ForeColor ="White" Font-Size ="130%" OnClick ="Unnamed_Click" Text ="Logout" Width ="70px" Height="40px" />
      </li>
</ul>
    </div>
        <div style="height:400px; width:auto;" />
        <div align="center">
            <br /><br />
        <span>
            <asp:TextBox  id="txtser" runat="server" Width="180px" Height="20px" />
            <asp:Button Text="Search" runat="server" OnClick="Unnamed_Click" ID="btn1" CssClass="btnk" height="30px" Font-Italic="true" UseSubmitBehavior="true"     />
      
              </span>
        <%-- comment
    <asp:GridView runat="server"  DataSourceID="datasource" AutoGenerateColumns="false">
        <Columns>
            <asp:BoundField HeaderText="ID/Adhar" DataField="Aadhar_Number" />
            <asp:BoundField HeaderText="Name" DataField="NAME" />
            <asp:BoundField HeaderText="Address" DataField="Address" />
            <asp:BoundField HeaderText="Contact" DataField="Mobile_No" />
            <asp:HyperLinkField Text="More Deatils" DataNavigateUrlFields="Aadhar_Number" DataNavigateUrlFormatString="Reporting.aspx?Id={0}" />
        </Columns>
    </asp:GridView> --%>
      
            <br /><br />
        
        <asp:GridView ID="GridView1" BackColor="Black" Font-Italic="true" ForeColor="White" AllowPaging="true" runat="server" AutoGenerateColumns="False" DataKeyNames="Aadhar_Number"  >
            <Columns>
                <asp:BoundField DataField="Aadhar_Number" HeaderText="Aadhar_Number" ReadOnly="True" SortExpression="Aadhar_Number" />
                <asp:BoundField DataField="NAME" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="Mobile_No" HeaderText="Mobile_No" SortExpression="Mobile_No" />
                <asp:BoundField DataField="Email_Id" HeaderText="Email_Id" SortExpression="Email_Id" />
                  <asp:HyperLinkField Text="Basic Registration report" ControlStyle-ForeColor="Aqua" DataNavigateUrlFields="Aadhar_Number" DataNavigateUrlFormatString="Reporting.aspx?Id={0}" />
                <asp:HyperLinkField Text="Follow Up report" ControlStyle-ForeColor="Aqua" DataNavigateUrlFields="Aadhar_Number" DataNavigateUrlFormatString="Followup_report.aspx?Id={0}" />
            </Columns>
        </asp:GridView>
           
            </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NephroCare %>" ProviderName="<%$ ConnectionStrings:NephroCare.ProviderName %>" SelectCommandType="StoredProcedure" SelectCommand="searching">
            <SelectParameters>
                <asp:SessionParameter Name="searchtxt" SessionField="Search" Type="string" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource runat="server" ConnectionString="<%$ Connectionstrings:NephroCare %>" ID="datasource" SelectCommand="Select Aadhar_Number,First_Name+Name as NAME,Address,Mobile_No,[Email_Id] from Page1Table" />
        <br />
           
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:NephroCare %>" ProviderName="<%$ ConnectionStrings:NephroCare.ProviderName %>" SelectCommandType="StoredProcedure" SelectCommand="searching">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtser"  Name="searchtxt" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
         <footer>
  <div class="copyright">
    <p>&copy Designed & Developed By BVRITH Hyderabad</p>
  </div>
  <div class="social">
    <a href="#" class="support">Contact Us</a>
    <a href="www.Bvrithyderabad.com" class="face">B</a>
    <a href="#" class="tweet">t</a>
    <a href="#" class="linked">in</a>
  </div>
</footer>
    </form>
</body>
</html>
