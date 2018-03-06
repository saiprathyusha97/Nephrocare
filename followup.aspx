<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="followup.aspx.cs" Inherits="Nephro_Care.followup" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table align="Center" style=" border:1px solid; border-collapse:collapse">
        <tr>
           
            <td style=" border:1px solid">
                Date
                <br />
                <asp:TextBox runat="server" ID="txtdate" />
                <cc1:CalendarExtender PopupButtonID="txtdate" Format="dd/MM/yyyy" TargetControlID="txtdate" runat="server" PopupPosition="BottomRight" />
            </td>
        
            <td style="border:1px solid">
                <table style=" border:1px solid; border-collapse:collapse">
                    <tr >
                        <td  style="border:1px solid"><asp:Label Text="BP" runat="server" /></td>
                        <td  style="border:1px solid"> <asp:TextBox runat="server" ID="txtbp" /></td>
                        <td  style="border:1px solid">Weight </td>
                        <td  style="border:1px solid"><asp:TextBox   runat="server" ID="txtweight" /></td>
                        <td style="border:1px solid">Pallor</td>
                        <td style="border:1px solid"><asp:TextBox runat="server" ID="txtpallor"/></td>
                    </tr>
                    <tr>
                        <td style=" border:1px solid; border-collapse:collapse">Edema</td>
                        <td style=" border:1px solid; border-collapse:collapse"> <asp:TextBox runat="server" ID="txtedema" /></td>
                        <td style=" border:1px solid; border-collapse:collapse">CVS</td>
                        <td style=" border:1px solid; border-collapse:collapse"><asp:TextBox runat="server" ID="txtcvs" /></td>
                        <td style=" border:1px solid; border-collapse:collapse"> Resp.</td>
                        <td style=" border:1px solid; border-collapse:collapse"><asp:TextBox runat="server" ID="resptxt" /></td>
                        
                    </tr>
                    <tr>
                        <td style=" border:1px solid; border-collapse:collapse">P/A</td>
                        <td style=" border:1px solid; border-collapse:collapse"><asp:TextBox runat="server" ID="PAtxt" /></td>
                        <td style=" border:1px solid; border-collapse:collapse"> CNS</td>
                        <td style=" border:1px solid; border-collapse:collapse"> <asp:TextBox runat="server" ID="CNStxt" /></td>
                    </tr>
                    
                </table>
            </td>
            <td>
                <table>
                    <tr align="center">
                        <td>
                 Analysis & Plan</td></tr><tr>
                <td><asp:TextBox runat="server" placeholder="Analysis & Plan" ID="analysisplan" TextMode="MultiLine" Height="70px" /></td>
                    </tr></table>
            </td>
        </tr>
    </table>
        <asp:ScriptManager runat="server" />
    </div>
    </form>
</body>
</html>
