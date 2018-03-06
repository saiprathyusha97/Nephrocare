

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reporting.aspx.cs" Inherits="NephroCare.reporting" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=12.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
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
  <li><a href="Home.aspx">Home</a></li>
  <li class="dropdown">
    <a href="javascript:void(0)" class="dropbtn">Registration</a>
    <div class="dropdown-content" id="con">
      <a href="part1.aspx">Page 1</a>
      <a href="part2.aspx">Page 2</a>
      <a href="part3.aspx">Page 3</a>
      </div>
        
      </li>
  <li><a href="RecpDetails.aspx">Report</a></li>
      <li style="margin-left:680px">
                <asp:Button CausesValidation="false" runat ="server" ID ="login" BackColor ="Black" ForeColor ="White" Font-Size ="130%" OnClick ="Unnamed_Click" Text ="Logout" Width ="70px" Height="40px" />
      </li>
</ul>
    </div>
              <div>
                  
    <div align="center" class="report">
        <h2 style ="font-family:'Palatino Linotype'; font-style:italic;">Hi <asp:Label ID="Label1" runat="server"   /> !!!</h2>
        <br />
     <rsweb:ReportViewer runat="server" ID="rpt1" BackColor="White" CssClass="report" runat="server" Font-Names="Verdana" Font-Size="8pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Height="586px" Width="700px" style="text-align: center">
         <LocalReport ReportPath="reporting\Main_Report.rdlc">
              <DataSources>
                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="test" />
                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource2" Name="DataSet1" />
                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource3" Name="DataSet2" />
                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource4" Name="DataSet3" />
                </DataSources>
         </LocalReport>

     </rsweb:ReportViewer>
        </div>
        
       <asp:ObjectDataSource ID="ObjectDataSource4" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="Nephro_Care.latesteditTableAdapters.part3medTableAdapter">
            <%--<SelectParameters>
                <asp:Parameter DefaultValue="1" Name="id" Type="Int64" />
            </SelectParameters>--%>
        </asp:ObjectDataSource>
        <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="Nephro_Care.latesteditTableAdapters.part1_2detTableAdapter">
            <%--<SelectParameters>
                <asp:Parameter DefaultValue="1" Name="id" Type="Int64" />
            </SelectParameters>--%>
        </asp:ObjectDataSource>
        <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="Nephro_Care.latesteditTableAdapters.part1_detailsTableAdapter">
           <%-- <SelectParameters>
                <asp:Parameter DefaultValue="1" Name="id" Type="Int64" />
            </SelectParameters>--%>
        </asp:ObjectDataSource>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="Nephro_Care.latesteditTableAdapters.csdetailsTableAdapter">
           <%-- <SelectParameters>
                <asp:Parameter DefaultValue="1" Name="id" Type="Int64" />
            </SelectParameters>--%>
        </asp:ObjectDataSource>
        <asp:ScriptManager runat="server" />    
    </div>
                <br /><br />  
              </div>
        
           
                       <footer>
  <div class="copyright">
    <p>&copy Designed & Developed By BVRIT Hyderabad</p>
  </div>
  <div class="social">
    <a  class="support" >Contact Jeevandan</a>
    <a href="http://www.bvrithyderabad.edu.in/" onclick="" class="face">BVRITH</a>
    <a href="#" class="tweet">t</a>
    <a href="#" class="linked">in</a>
  </div>
</footer>
          
    </form>
</body>
</html>
