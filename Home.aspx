<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="ProjectWebForm.Home" %>

<!DOCTYPE html>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<html xmlns="http://www.w3.org/1999/xhtml">
    
<head runat="server">
    <script>
function myFunction() {
    var x = document.getElementById("myTopnav");
    if (x.className === "topnav") {
        x.className += " responsive";
    } else {
        x.className = "topnav";
    }
}
</script>
    <style type="text/css">
        img{
            padding-left:25em;
            height:170px;
        }
    </style>
    <title></title>
  <link rel="stylesheet" href="styling/footer.css" type="text/css" />
    <link rel="stylesheet" href="Styling/navbar.css" type="text/css" />
    <link rel="stylesheet" href="styling/Theme.css" type="text/css" />
    <link rel="stylesheet" href="styling/menu.css" type="text/css" />

</head>
<body >
    
    <form runat="server">   
             
        <img src="styling/header1.png" style="height:100px;margin-left:100px; align:middle;"  />
    <div id="bcg">
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <br />
          <br />
    </div>
      
           
 <div >
        <ul>
  <li><a href="home.aspx">Home</a></li>
  <li class="dropdown">
    <a href="javascript:void(0)" class="dropbtn">Registration</a>
    <div class="dropdown-content" id="con">
      <a href="part1.aspx">Common Details</a>
      <a href="part2.aspx">Medical Details-1</a>
      <a href="part3.aspx">Medical Details-2</a>
      </div>
        
      </li>
            <li><a href="LabInvestigations_Followup.aspx">Patient Follow up</a></li>
  <li><a href="RecpDetails.aspx">Report</a></li>
            
            
      <li style="margin-left:500px">
                <asp:Button CausesValidation="false" runat ="server" ID ="login" BackColor ="Black" ForeColor ="White" Font-Size ="130%" OnClick ="logout_c" Text ="Logout" Width ="100px" Height="30px" />
      </li>
</ul>
    </div>
        <div style ="background-image:url(styling/back1.jpg); background-repeat:no-repeat; background-position:center; height:400px;"> 
      
           
       
           <br />
            
           <div   align="right" style ="padding-right:10em;">

               <h2 style ="font-family:'Palatino Linotype'; font-style:italic; padding-right:10em; ">Welcome <asp:Label CssClass="cont" ID="Label1" runat="server" ForeColor="black" Font-Italic ="true"  /> !!!</h2>
               <br /><br />
              <asp:Panel runat="server" DefaultButton="searchbtn" >
                
           <asp:TextBox runat="server"   ID="txtsearch" style ="Height:25px; Width:180px; margin-left:100px;"   />
               <span>  
                   <asp:Button runat="server"  ID="searchbtn" Text="Search"  OnClick="searchbtn_Click" Height="26px" CssClass="sbtn"  Width="65px" BackColor="#99CCFF"   Font-Italic="True" ForeColor="#FFFFCC"/>
                   <asp:RequiredFieldValidator runat="server" ControlToValidate="txtsearch" Text="Please Enter Adhar Number" ForeColor="Red"  />
               </span>
                   <br /><br />
           <asp:GridView  runat="server" DataSourceID="grd" Font-Size ="Larger" ForeColor="SeaGreen" BackColor="WhiteSmoke" ID="grd1" Font-Bold ="true" Font-Italic ="true" />
           <asp:SqlDataSource runat="server" ID="grd" ConnectionString="<%$ ConnectionStrings:NephroCare %>" SelectCommand="Select count(AdharNumber) as [Registered Recipients] from Root_IDs" />
                 
                   </asp:Panel>

     
      
                     
                   </div>
             
               </div>
              
       
            <footer>
  <div class="copyright">
    <p>&copy Designed & Developed By BVRITH Hyderabad</p>
  </div>
  <div class="social">
    <a href="#" class="support">Contact Us</a>
    <a href="www.Bvrithyderabad.com" class="face">BVRITH</a>
    <a href="#" class="tweet">t</a>
    <a href="#" class="linked">in</a>
  </div>
</footer>
    </form>
        
</body> 
</html>
