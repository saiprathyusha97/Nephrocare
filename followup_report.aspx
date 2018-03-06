<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="followup_report.aspx.cs" Inherits="Nephro_Care.webpages.followup" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=12.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="stylesheet" href="./styling/Theme.css" type="text/css" />
    <link rel="stylesheet" href="./styling/menu.css" type="text/css" />
    <link rel="stylesheet" href="./styling/footer.css" type="text/css" />
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
  <li><a href="../Home.aspx">Home</a></li>
  <li class="dropdown">
    <a href="javascript:void(0)" class="dropbtn">Registration</a>
    <div class="dropdown-content">
      <a href="part1.aspx">Common Details</a>
      <a href="part2.aspx">Medical Details-2</a>
      <a href="part3.aspx">Medical Details-3</a>
      </div>
        
      </li>
            <li class="dropdown">
    <a href="LabInvestigations_Followup.aspx" class="dropbtn">Followup Reg</a>     
      </li>

            
  <li><a href="RecpDetails.aspx">Report</a></li>
     <li style="margin-left:680px">
                <asp:Button CausesValidation="false" runat ="server" ID ="login" BackColor ="Black" ForeColor ="White" Font-Size ="130%" OnClick ="logout" Text ="Logout" Width ="70px" Height="40px" />
      </li>
</ul>
    </div>
            <div align ="center">
                <h2 style ="font-family:'Palatino Linotype'; font-style:italic;">Hi <asp:Label ID="Label1" runat="server" ForeColor="black"  /> !!!</h2><br />
                <table align="center" style="width: 827px">
               <tr>
                   <td align="center">
               <rsweb:ReportViewer runat="server" Width="700px" ShowWaitControlCancelLink="true" ToolBarItemBorderWidth="1px"   Height="900px" ExportContentDisposition="AlwaysInline" AsyncRendering="true"  WaitMessageFont-Names="Viner Hand ITC" WaitMessageFont-Size="14pt"  >
                    <LocalReport ReportPath="reporting\Report2.rdlc">
                <DataSources>
                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="DataSet1" />
                </DataSources>
            </LocalReport>
               </rsweb:ReportViewer>
                       </td>
                   </tr>
            </table>
           </div>
    <div>
        
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="Nephro_Care.dataconfigs.followupdataTableAdapters.followup_retriveTableAdapter">
            <SelectParameters>
               <asp:QueryStringParameter DbType="Int64" QueryStringField="id" Name="id" />
            </SelectParameters>
        </asp:ObjectDataSource>
    </div>
         <asp:ScriptManager runat="server" />
            <br /><br />
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
