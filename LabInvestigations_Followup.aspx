<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LabInvestigations_Followup.aspx.cs" Inherits="Nephro_Care.LabInvestigations_Followup" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="styling/Backgroound.css" type="text/css" />
    <link rel="stylesheet" href="styling/Theme.css" type="text/css" />
    <link rel="stylesheet" href="styling/popup_ajax.css" type="text/css" />
    <link rel="stylesheet" href="styling/footer.css" type="text/css" />
     <link rel="stylesheet" href="styling/menu.css" type="text/css" />
   <style type="text/css">

       /* All tables */
       table{  border-collapse: collapse;}
table td{ border:1px solid #000000; border-collapse:collapse;}
/* All tables with Rightborders class */
table.Rightborders td{ border:1px solid #000000; border-collapse:collapse;}

/* Just named tables */
   

   </style>

    <title></title>
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
        <asp:ScriptManager runat="server" />
                         <div style="height:auto">
        <ul>
  <li><a href="Home.aspx">Home</a></li>
  <li class="dropdown">
    <a href="javascript:void(0)" class="dropbtn">Registration</a>
    <div class="dropdown-content" id="con">
      <a href="part1.aspx">Common Details</a>
      <a href="part2.aspx">Medicals Details-2</a>
      <a href="part3.aspx">Medical Details-3</a>
      </div> 
      </li>
  <li><a href="RecpDetails.aspx">Report</a></li>
            <li><a href="LabInvestigations_Followup.aspx">Recipient Follow up</a> </li>
           <li style="margin-left:680px">
                <asp:Button CausesValidation="false" runat ="server" ID ="login" BackColor ="Black" ForeColor ="White" Font-Size ="130%" OnClick ="logout" Text ="Logout" Width ="70px" Height="30px" />
      </li>
     
</ul>
                         
                      
                           
                                
                                
    </div>
    <div>
        <div id="centerpage" align="center">
            <div>
                <asp:Label ID="Label1" runat="server" ForeColor="White"  />
                <table border="1"style=" border-collapse: collapse;">
                    <tr>
                <td>Patients Aadhar Number</td><td><asp:TextBox runat="server" ID="txtid" Width="120px"  Height="10px" />

                                               </td>
                        <td><asp:Button Text="Submit" runat="server" OnClick="gettab" ID="btn" /></td></tr>
                    </table>
            </div>
           


        <asp:table  runat="server"  Width="900px" ID="table1" Visible="false"  style="font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif; margin-top: 70px;">
            <asp:TableRow >
                <asp:TableCell BorderColor="Black" >Name </asp:TableCell><asp:TableCell>
                    <asp:Label runat="server" ID="lblname" /></asp:TableCell>
                  <asp:TableCell BorderStyle="Outset">
                   <asp:Image runat="server" ID="img" Width="100px" Height="100px" />
                </asp:TableCell>
                <asp:TableCell ColumnSpan="8"></asp:TableCell>
                
                </asp:TableRow>
              
            <asp:TableRow>
                <asp:TableCell ColumnSpan="10">LAB INVESTIGATIONS</asp:TableCell></asp:TableRow><asp:tablerow>
             
                
                <asp:TableCell>FollowUp Date</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txtdate" /><cc1:CalendarExtender Format="dd/MM/yyyy" TargetControlID="txtdate" PopupButtonID="txtdate" runat="server" />
                    <asp:RequiredFieldValidator ForeColor="Red" ErrorMessage="Date is required" ControlToValidate="txtdate"  runat="server"/>
                </asp:TableCell></asp:tablerow>
            <asp:tablerow>
                 <asp:TableCell>Hb</asp:TableCell><asp:TableCell ><asp:TextBox runat="server" ID="txthb" /></asp:TableCell><asp:TableCell>Pcv</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txtpcv" /></asp:TableCell><asp:TableCell>Total WBC</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txttotalwbc" /></asp:TableCell></asp:tablerow><asp:tablerow>
                <asp:TableCell>DLC P</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txtdlcp" /></asp:TableCell><asp:TableCell>DLC L</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txtdlcL" /></asp:TableCell><asp:TableCell>DLC M</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txtdlcm" /></asp:TableCell><asp:TableCell>DLC E</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txtdlce" /></asp:TableCell></asp:tablerow><asp:tablerow>
                
                <asp:TableCell CssClass="Rightborders">Retic Count</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txtrectic" /></asp:TableCell><asp:TableCell>Platelet count</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txtplatelet" /></asp:TableCell><asp:TableCell>ESR</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="TxtESR" /></asp:TableCell><asp:TableCell>Peripheral Smear</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txtperipsmear" /></asp:TableCell></asp:tablerow><asp:tablerow>
                <asp:TableCell>CUE:</asp:TableCell></asp:tablerow><asp:tablerow>
                <asp:TableCell>PH</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txtph" /></asp:TableCell><asp:TableCell>SP Gr</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txtspgr" /></asp:TableCell><asp:TableCell> Albumin</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txtalbumin" /></asp:TableCell><asp:TableCell>Sugar</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txtSugar" /></asp:TableCell><asp:TableCell>Ketones</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txtkeytones" /></asp:TableCell></asp:tablerow><asp:tablerow>
                <asp:TableCell>RBC</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txtrbc" /></asp:TableCell><asp:TableCell>WBC</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txtwbc" /></asp:TableCell><asp:TableCell> EP cells</asp:TableCell><asp:TableCell ><asp:TextBox runat="server" ID="txtEP" /></asp:TableCell><asp:TableCell ColumnSpan="4"></asp:TableCell></asp:tablerow><asp:tablerow>
                <asp:TableCell>Granular/Hyaline</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txtgranularhyline" /></asp:TableCell><asp:TableCell>Others</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txtothers" /></asp:TableCell><asp:TableCell>24 hrs Urine Output</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txt24hruop" /></asp:TableCell><asp:TableCell>Total Protiens</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="Txttotalprotiens" /></asp:TableCell><asp:TableCell>CCR</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txtccr" /></asp:TableCell></asp:tablerow><asp:tablerow>
                <asp:TableCell>Sodium</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txtsodium" /></asp:TableCell><asp:TableCell>Pottasium</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txtpottasium" /></asp:TableCell><asp:TableCell>Calcium</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txtcalcium" /></asp:TableCell><asp:TableCell>Phospate</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txtphospate" /></asp:TableCell><asp:TableCell>Uric Acid</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txturicacid" /></asp:TableCell></asp:tablerow><asp:tablerow>
                <asp:TableCell>VMA</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txtvma" /></asp:TableCell><asp:TableCell>Microalburminuria</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txtmicroalbuminuria" /></asp:TableCell><asp:TableCell>Spot U.Protien</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txtspotuprotien" /></asp:TableCell><asp:TableCell>U.Creatinine</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txtucreatinine" /></asp:TableCell><asp:TableCell>Prot/Creat ratio</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txtprotcreat" /></asp:TableCell></asp:tablerow><asp:tablerow>
                <asp:TableCell>BT</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txtbt" /></asp:TableCell><asp:TableCell>CT</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txtct" /></asp:TableCell><asp:TableCell>PT</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txtpt" /></asp:TableCell><asp:TableCell>APTT</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txtaptt" /></asp:TableCell><asp:TableCell>Blood Group</asp:TableCell><asp:TableCell>
                    <asp:DropDownList runat="server" ID="blodgrp" DataSourceID="sqld" DataTextField="bloodgroup" DataValueField="id" SelectionMode="Single">
                       
                    </asp:DropDownList>
                    <asp:SqlDataSource runat="server" ID="sqld" ConnectionString="<%$ connectionstrings:NephroCare %>" SelectCommand="select * from bgroup" />
                 </asp:TableCell></asp:tablerow><asp:tablerow>
                <asp:TableCell>RBS</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txtRBS" /></asp:TableCell><asp:TableCell>FBS</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txtfbs" /></asp:TableCell><asp:TableCell>PPBS</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txtppbs" /></asp:TableCell><asp:TableCell>Gl.Hb Alc</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txtglhbalc" /></asp:TableCell><asp:TableCell>Urea</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txturea" /></asp:TableCell></asp:tablerow><asp:tablerow>
                <asp:TableCell>Creatinine</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txtcreatinine" /></asp:TableCell><asp:TableCell>Chloride</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txtchloride" /></asp:TableCell><asp:TableCell>Bicarbonate</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txtbicarbonate" /></asp:TableCell><asp:TableCell>Magnesium</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txtmagnesium" /></asp:TableCell><asp:TableCell>Cholestrol</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txtcholestrol" /></asp:TableCell></asp:tablerow><asp:tablerow>
                 <asp:TableCell>HDl</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txthdl" /></asp:TableCell><asp:TableCell>LDL</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txtldl" /></asp:TableCell><asp:TableCell>VLDL</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txtVLDL" /></asp:TableCell><asp:TableCell>Triglycerides</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txttriglycerides" /></asp:TableCell><asp:TableCell>TS Protien</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txttsprotien" /></asp:TableCell></asp:tablerow><asp:tablerow>
                <asp:TableCell>Bil.Total</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txtbiltotal" /></asp:TableCell><asp:TableCell>Bil.Direct</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txtbildirect" /></asp:TableCell><asp:TableCell>SGOT</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txtsgot" /></asp:TableCell><asp:TableCell>SGPT</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txtsgpt" /></asp:TableCell><asp:TableCell>ALP</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="ALP" /></asp:TableCell></asp:tablerow><asp:tablerow>
                <asp:TableCell>Iron</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txtiron" /></asp:TableCell><asp:TableCell>Ferritin</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txtferratin" /></asp:TableCell><asp:TableCell>T3</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txtt3" /></asp:TableCell><asp:TableCell>T4</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txtt4" /></asp:TableCell><asp:TableCell>TSH</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txttsh" /></asp:TableCell></asp:tablerow><asp:tablerow>
                <asp:TableCell>PSH</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txtpsh" /></asp:TableCell><asp:TableCell>Vit. D3</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txtvitd3" /></asp:TableCell><asp:TableCell>PSA</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txtpsa" /></asp:TableCell><asp:TableCell>CRP</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txtcrp" /></asp:TableCell><asp:TableCell>ANA</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txtANA" /></asp:TableCell></asp:tablerow><asp:tablerow>
                <asp:TableCell>Anti-ds-DNA</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txtantidsdna" /></asp:TableCell><asp:TableCell>HBs-Ag</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txthbsag" /></asp:TableCell><asp:TableCell>Anti HCV</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txtantihcv" /></asp:TableCell><asp:TableCell>HIV</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txthiv" /></asp:TableCell><asp:TableCell>Anti HBs Ag</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txtantihbsag" /></asp:TableCell></asp:tablerow><asp:tablerow>
                <asp:TableCell>CMV - Ig G</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txtcmvigg" /></asp:TableCell><asp:TableCell>CMV - Ig M</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txtcmvigm" /></asp:TableCell><asp:TableCell>ANCA -C</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txtanca" /></asp:TableCell><asp:TableCell>ANCA -P </asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txtancap" /></asp:TableCell><asp:TableCell>SPE</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txtspe" /></asp:TableCell></asp:tablerow><asp:tablerow>
                <asp:TableCell>Vit.B12</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txtvitb12" /></asp:TableCell><asp:TableCell>Serum Folate</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="serumfolate" /></asp:TableCell><asp:TableCell>Cystatin-C</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txtcystatin" /></asp:TableCell><asp:TableCell>Homocysteine</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txthomocystatin" /></asp:TableCell><asp:TableCell>CSA Level</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txtcsalevel" /></asp:TableCell></asp:tablerow><asp:tablerow>
                <asp:TableCell>Tacrolimus Levels</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txttacrolimuslevel" /></asp:TableCell><asp:TableCell>Everolimus Levels</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txteverolimus" /></asp:TableCell><asp:TableCell>ABG pH</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txtabhph" /></asp:TableCell><asp:TableCell>PCO2</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txtpco2" /></asp:TableCell><asp:TableCell>

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  </asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txtpo2" /></asp:TableCell></asp:tablerow><asp:tablerow>
                <asp:TableCell>HCO3</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txthco" /></asp:TableCell><asp:TableCell>AG</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txtag" /></asp:TableCell><asp:TableCell>Po2/Fo2</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txtpo2fo2" /></asp:TableCell><asp:TableCell ColumnSpan="4"></asp:TableCell></asp:tablerow><asp:tablerow>
                <asp:TableCell>Ascitic/pleural Fluid Analysis</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txtasciticplunearl" /></asp:TableCell><asp:TableCell>Total Cell Count</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txttotalcellcount" /></asp:TableCell><asp:TableCell>Diff. Cell Count</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txtdiffcellcount" /></asp:TableCell><asp:TableCell>Glucose</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txtglucose" /></asp:TableCell><asp:TableCell>ADA</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txtada" /></asp:TableCell></asp:tablerow><asp:TableRow>
                    <asp:TableCell>Mantoux</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txtmantoux" /></asp:TableCell>
                   </asp:TableRow>
            </asp:table>
          
                    <div align="center">
                    <asp:Button runat="server" OnClick="insertdata" Visible="false" ID="submitshow"  CssClass="btnbgm" BorderColor="Silver" Font-Size="Large"   ForeColor="black" Width="107px" Height="35px"  Text="Register" BackColor="SeaShell" BorderStyle="Solid" Font-Italic="true" style="margin-left: 44px" /></div>
                </div>
        <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
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

</body></html>