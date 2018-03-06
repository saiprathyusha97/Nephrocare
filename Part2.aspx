<%@ Page Language="C#" MaintainScrollPositionOnPostback="true" AutoEventWireup="true" CodeBehind="Part2.aspx.cs" Inherits="ProjectWebForm.WebForm1" %>
<%@ Register Assembly ="AjaxControlToolkit" namespace ="AjaxControlToolkit" TagPrefix ="ajaxToolkit"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="styling/Backgroound.css" type="text/css" />
    <link rel="stylesheet" href="styling/footer.css"type="text/css" />
    <link rel="stylesheet" href="styling/Theme.css" type="text/css" />
    <link rel="stylesheet" href="styling/popup_ajax.css" type="text/css" />
     <link rel="stylesheet" href="styling/menu.css" type="text/css" />
    <script type="text/javascript" src="Script/check_box.js"></script>
  
    <script>
        function myFunction() {
            var popup = document.getElementById("myPopup");
            popup.classList.toggle("show");
        }
    </script>
</head>
<body>
    <div style="margin-left:100px">
        <span><asp:Image runat ="server" ImageUrl ="~/Styling/sym.jpg" Height="80" Width="80" ImageAlign="AbsBottom"></asp:Image>
        <asp:Label runat ="server" Font-Size ="50"  Font-Italic ="true"  Font-Bold ="true" Align ="Center" >NephroCare</asp:Label></span>
        
    </div>

    <form id="form1" runat="server">
        <br /><br />
         <%-- popup start --%>
          
<asp:LinkButton ID="lnkDummy" runat="server"/>
            <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender1" BehaviorID="mpe" runat="server"
    PopupControlID="pnlPopup" TargetControlID="lnkDummy" BackgroundCssClass="modalBackground" CancelControlID = "btnHide">
</ajaxToolkit:ModalPopupExtender>
<asp:Panel ID="pnlPopup" runat="server" CssClass="modalPopup" Style="display: none">
    <div class="header">
        <asp:Label runat="server" ID="lblpop" ForeColor="Peru" />
    </div>
    <div class="body"  >
       
        <br />
        <br />
        <span><asp:Button ID="btnHide" runat="server" Text="exit" /></span>
        <span><asp:LinkButton runat="server" Text="check data"  PostBackUrl="~/Webform1.aspx" /> </span>
    </div>

</asp:Panel>
            <%-- popup complete --%>
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
            
            
       <li style="margin-left:680px">
                <asp:Button CausesValidation="false" runat ="server" ID ="login" BackColor ="Black" ForeColor ="White" Font-Size ="110%" OnClick ="logout_c" Text ="Logout" Width ="60px" Height="40px" />
      </li>
</ul>
    </div>
        <div>
            <div id ="centerpage">
            <asp:scriptmanager runat="server"></asp:scriptmanager>
           
            <div>
                <asp:Table ID="Table10" runat="server" Font-Size="Large" Width="523px" Font-Names="Palatino" ForeColor="Snow" CellPadding="5" CellSpacing="3" Align ="left" Height="10px">
             <asp:TableRow ID="TableRow41" runat="server" BackColor="#dfe3ee" ForeColor ="Black" >
                 <asp:TableCell><asp:Label runat ="server" Text ="Adhar Number:"></asp:Label><asp:TextBox id ="txtid" runat ="server" Align ="Center"></asp:TextBox><asp:RequiredFieldValidator runat="server" ForeColor="Red" ControlToValidate="txtid"  Text="Must and Should enter Aadhar"/></asp:TableCell></asp:TableRow></asp:Table><br />
                <br /> 
            </div>
            <h3 style="color:MidnightBlue; font-style:italic;">COMORBIDITY</h3> 
            <div>
                <asp:Table ID="Table5" runat="server" Font-Size="Large" Width="400" Font-Names="Palatino" ForeColor="Snow" CellPadding="5" CellSpacing="3" Align ="left">
                    <asp:TableRow ID="TableRow64" runat="server" BackColor="#dfe3ee" ForeColor ="Black" >
                        <asp:TableCell><asp:CheckBox id ="cadchk" runat ="server" Align ="Center" Text ="CAD"/></asp:TableCell>
                        <asp:TableCell><asp:TextBox runat ="server"  ID ="cadtxt"></asp:TextBox><ajaxToolkit:CalendarExtender ID="CalendarExtender1" PopupButtonID="imgPopup" runat="server" TargetControlID="cadtxt" Format="dd/MM/yyyy"> </ajaxToolkit:CalendarExtender></asp:TableCell>
                    </asp:TableRow>

                    <asp:TableRow ID="TableRow65" runat="server" BackColor="#dfe3ee" ForeColor ="Black" >
                        <asp:TableCell><asp:CheckBox id ="CAGChk" runat ="server" Align ="Center" Text ="CAG"/></asp:TableCell>
                        <asp:TableCell><asp:TextBox runat ="server" ID ="cagtxt"></asp:TextBox><ajaxToolkit:CalendarExtender ID="CalendarExtender2" PopupButtonID="imgPopup" runat="server" TargetControlID="cagtxt" Format="dd/MM/yyyy"> </ajaxToolkit:CalendarExtender></asp:TableCell>
                    </asp:TableRow>

                    <asp:TableRow ID="TableRow66" runat="server" BackColor="#dfe3ee" ForeColor ="Black" >
                        <asp:TableCell><asp:CheckBox id ="CABGCH" runat ="server" Align ="Center" Text ="CABG"/></asp:TableCell>
                        <asp:TableCell><asp:TextBox runat ="server" ID ="cabgtxt" ></asp:TextBox><ajaxToolkit:CalendarExtender ID="CalendarExtender3" PopupButtonID="imgPopup" runat="server" TargetControlID="cabgtxt" Format="dd/MM/yyyy"> </ajaxToolkit:CalendarExtender></asp:TableCell>
                    </asp:TableRow>

                    <asp:TableRow ID="TableRow67" runat="server" BackColor="#dfe3ee" ForeColor ="Black" >
                        <asp:TableCell><asp:CheckBox id ="PTCAchk" runat ="server" Align ="Center" Text ="PTCA+Stent"/></asp:TableCell>
                        <asp:TableCell><asp:TextBox runat ="server" ID ="ptcatxt" ></asp:TextBox><ajaxToolkit:CalendarExtender ID="CalendarExtender4" PopupButtonID="imgPopup" runat="server" TargetControlID="ptcatxt" Format="dd/MM/yyyy"> </ajaxToolkit:CalendarExtender></asp:TableCell>
                    </asp:TableRow>

                    <asp:TableRow ID="TableRow68" runat="server" BackColor="#dfe3ee" ForeColor ="Black" >
                        <asp:TableCell><asp:CheckBox id ="cvachk" runat ="server" Align ="Center" Text ="CVA"/></asp:TableCell>
                        <asp:TableCell><asp:TextBox ID ="cvatxt" runat ="server" ></asp:TextBox><ajaxToolkit:CalendarExtender ID="CalendarExtender5" PopupButtonID="imgPopup" runat="server" TargetControlID="cvatxt" Format="dd/MM/yyyy"> </ajaxToolkit:CalendarExtender></asp:TableCell>
                    </asp:TableRow>

                    <asp:TableRow ID="TableRow69" runat="server" BackColor="#dfe3ee" ForeColor ="Black" >
                        <asp:TableCell><asp:CheckBox id ="Obesitychk" runat ="server" Align ="Center" Text ="Obesity"/></asp:TableCell>
                        <asp:TableCell><asp:TextBox ID ="Obesitytxt" runat ="server" ></asp:TextBox><ajaxToolkit:CalendarExtender ID="CalendarExtender6" PopupButtonID="imgPopup" runat="server" TargetControlID="Obesitytxt" Format="dd/MM/yyyy"> </ajaxToolkit:CalendarExtender></asp:TableCell>
                    </asp:TableRow>
                </asp:Table>

                <asp:Table ID="Table6" runat="server" Font-Size="Large" Width="400" Font-Names="Palatino" ForeColor="Snow" CellPadding="5" CellSpacing="3" Align ="center">
                    <asp:TableRow ID="TableRow70" runat="server" BackColor="#dfe3ee" ForeColor ="Black" >
                        <asp:TableCell><asp:CheckBox id ="BPHchk" runat ="server" OnChange="javascript:enableTextBox();"  Align ="Center" Text ="BPH"/></asp:TableCell>
                        <asp:TableCell><asp:TextBox ID ="bphtxt"   runat ="server" ></asp:TextBox><ajaxToolkit:CalendarExtender ID="CalendarExtender7" PopupButtonID="imgPopup" runat="server" TargetControlID="bphtxt" Format="dd/MM/yyyy"> </ajaxToolkit:CalendarExtender></asp:TableCell>
                    </asp:TableRow>

                    <asp:TableRow ID="TableRow71" runat="server" BackColor="#dfe3ee" ForeColor ="Black" >
                        <asp:TableCell><asp:CheckBox id ="Tbchk" runat ="server" Align ="Center" Text ="TB"/></asp:TableCell>
                        <asp:TableCell><asp:TextBox ID ="tbtxt" runat ="server" ></asp:TextBox><ajaxToolkit:CalendarExtender ID="CalendarExtender8" PopupButtonID="imgPopup" runat="server" TargetControlID="tbtxt" Format="dd/MM/yyyy"> </ajaxToolkit:CalendarExtender></asp:TableCell>
                    </asp:TableRow>

                    <asp:TableRow ID="TableRow72" runat="server" BackColor="#dfe3ee" ForeColor ="Black" >
                        <asp:TableCell><asp:CheckBox id ="hbschk" runat ="server" Align ="Center" Text ="HBs Ag"/></asp:TableCell>
                        <asp:TableCell><asp:TextBox ID ="hbstxt" runat ="server" ></asp:TextBox><ajaxToolkit:CalendarExtender ID="CalendarExtender9" PopupButtonID="imgPopup" runat="server" TargetControlID="hbstxt" Format="dd/MM/yyyy"> </ajaxToolkit:CalendarExtender></asp:TableCell>
                    </asp:TableRow>

                    <asp:TableRow ID="TableRow73" runat="server" BackColor="#dfe3ee" ForeColor ="Black" >
                        <asp:TableCell><asp:CheckBox id ="hcvchk" runat ="server" Align ="Center" Text ="HCV"/></asp:TableCell>
                        <asp:TableCell><asp:TextBox ID ="hcvtxt" runat ="server" ></asp:TextBox><ajaxToolkit:CalendarExtender ID="CalendarExtender10" PopupButtonID="imgPopup" runat="server" TargetControlID="hcvtxt" Format="dd/MM/yyyy"> </ajaxToolkit:CalendarExtender></asp:TableCell>
                    </asp:TableRow>

                    <asp:TableRow ID="TableRow74" runat="server" BackColor="#dfe3ee" ForeColor ="Black" >
                        <asp:TableCell><asp:CheckBox id ="HIvchk" runat ="server" Align ="Center" Text ="HIV"/></asp:TableCell>
                        <asp:TableCell><asp:TextBox ID ="hivtxt" runat ="server" ></asp:TextBox><ajaxToolkit:CalendarExtender ID="CalendarExtender11" PopupButtonID="imgPopup" runat="server" TargetControlID="hivtxt" Format="dd/MM/yyyy"> </ajaxToolkit:CalendarExtender></asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </div>

            <br /><br /><br />
            <h3 style="color:MidnightBlue; font-style:italic;">HISTORY:(Please write detailed history including all previous investigations and treatment)</h3>
                  
            <div>
            <table align="center"   style ="background-color:#dfe3ee ; margin-left:200px;border: 1px solid black; font-style : Palatino ; font-size : large ; box-sizing:padding-box ">
            <tr  background-color="#dfe3ee" Font-Bold="true" >
                <th style="border: 1px solid black;" class="auto-style5">Symptom</th>
                <th style="border: 1px solid black;" class="auto-style2">Symptom</th>
                <th style="border: 1px solid black;" class="auto-style3">Symptom</th>
                <th style="border: 1px solid black;" class="auto-style2">Symptom</th>
                <th style="border: 1px solid black;" class="auto-style4">Symptom</th>

            </tr>

            <tr style="border: 1px solid black;" >
                
                <td class="auto-style5" style="border: 1px solid black;"><asp:CheckBox id ="oiguriachk" AutoPostBack="true" runat ="server" Align ="Center" Text="Oiguria"/>
                    <br /><asp:TextBox runat="server"  ID="oiguriatxt" />
                </td>
           
                
                <td class="auto-style2" style="border: 1px solid black;"  ><asp:CheckBox id ="anuriachk" AutoPostBack="true" OnCheckedChanged="Page_Load" runat ="server" Align ="Center" Text="Anuria"/>  <br /><asp:TextBox runat="server" Visible="false"  ID="Anuriatxt" /></td>
           
                
                <td class="auto-style3" style="border: 1px solid black;"><asp:CheckBox id ="Polyuriachk" runat ="server" Align ="Center" AutoPostBack="true" Text="Polyuria"/><br /><asp:TextBox runat="server" Visible="false"  ID="polyuriatxt" /></td>
          
                
                <td class="auto-style2" style="border: 1px solid black;"><asp:CheckBox AutoPostBack="true" id ="Dysuriachk" runat ="server" Align ="Center" Text="Dysuria"/><br /><asp:TextBox runat="server" Visible="false"  ID="dysuriatxt" /></td>
           
                
                <td class="auto-style4" style="border: 1px solid black;"><asp:CheckBox AutoPostBack="true" id ="Hematuriachk" runat ="server" Align ="Center" Text="Hematuria"/><br /><asp:TextBox runat="server" Visible="false"  ID="hematuriatxt" /></td>
            </tr>

            <tr style="border: 1px solid black;" >
                
                <td class="auto-style5" style="border: 1px solid black;"><asp:CheckBox AutoPostBack="true" id ="Graveluriachk" runat ="server" Align ="Center" Text="Graveluria"/><br /><asp:TextBox runat="server" Visible="false"  ID="graveluriatxt" /></td>
          
                
                <td class="auto-style2" style="border: 1px solid black;"><asp:CheckBox AutoPostBack="true" id ="Chyluriachk" runat ="server" Align ="Center" Text="Chyluria"/><br /><asp:TextBox runat="server" Visible="false"  ID="chyluriatxt" /></td>
            
                
                <td class="auto-style3" style="border: 1px solid black;"><asp:CheckBox  AutoPostBack="true" id ="Hesitancychk" runat ="server" Align ="Center" Text="Hesitancy"/><br /><asp:TextBox runat="server" Visible="false"  ID="hesitancytxt" /></td>
            
                
                <td class="auto-style2" style="border: 1px solid black;"><asp:CheckBox id ="Poorchk" runat ="server" Align ="Center" Text="Poor Stream" AutoPostBack="true"/><br /><asp:TextBox runat="server" Visible="false"  ID="poorstreamtxt" /></td>
            
                
                <td class="auto-style4" style="border: 1px solid black;"><asp:CheckBox id ="Dribblingchk" runat ="server" Align ="Center" Text="Dribbling" AutoPostBack="true"/><br /><asp:TextBox runat="server" Visible="false"  ID="dribblingtxt" /></td>
            </tr>

            <tr  style="border: 1px solid black;">
                
                <td class="auto-style5" style="border: 1px solid black;"><asp:CheckBox id ="Frequencychk" runat ="server" Align ="Center" Text="Frequency" AutoPostBack="true" /><br /><asp:TextBox runat="server" Visible="false"  ID="frequencytxt" /></td>
           
                
                <td class="auto-style2" style="border: 1px solid black;"><asp:CheckBox id ="retentionchk" runat ="server" Align ="Center" Text="Retention" AutoPostBack="true"/><br /><asp:TextBox runat="server" Visible="false"  ID="retentiontxt" /></td>
            
                
                <td class="auto-style3" style="border: 1px solid black;"><asp:CheckBox id ="Flankchk" runat ="server" Align ="Center" Text="Flank Pain" AutoPostBack="true"/><br /><asp:TextBox runat="server" Visible="false"  ID="flankpaintxt" /></td>
           
                <td class="auto-style2" style="border: 1px solid black;"><asp:CheckBox id ="Renalchk" runat ="server" Align ="Center" Text="Renal Colic" AutoPostBack="true"/><br /><asp:TextBox runat="server" Visible="false"  ID="renalcolictxt" /></td>
            
                
                <td class="auto-style4" style="border: 1px solid black;"><asp:CheckBox id ="Loinchk" runat ="server" Align ="Center" Text="Loin Pain" AutoPostBack="true"/><br /><asp:TextBox runat="server" Visible="false"  ID="lionpaintxt" /></td>
            </tr>

            <tr style="border: 1px solid black;"  >
                
                <td class="auto-style5" style="border: 1px solid black;"><asp:CheckBox id ="Puffinesschk" runat ="server" Align ="Center" Text="Puffiness" AutoPostBack="true"/><br /><asp:TextBox runat="server" Visible="false"  ID="puffinesstxt" /></td>
           
                
                <td class="auto-style2" style="border: 1px solid black;"><asp:CheckBox id ="Edemachk" runat ="server" Align ="Center" Text="Edema Feet" AutoPostBack="true"/><br /><asp:TextBox runat="server" Visible="false"  ID="edemafeettxt" /></td>
           
               
                <td class="auto-style3" style="border: 1px solid black;"><asp:CheckBox id ="Anasarcachk" runat ="server" Align ="Center" Text="Anasarca" AutoPostBack="true"/><br /><asp:TextBox runat="server" Visible="false"  ID="anasarcatxt" /></td>
          
            
                <td class="auto-style2" style="border: 1px solid black;"><asp:CheckBox AutoPostback="true" id ="Dysponeachk" runat ="server" Align ="Center" Text="Dysponea"/><br /><asp:TextBox runat="server" Visible="false"  ID="dysponeatxt" /></td>
           
                
                <td class="auto-style4" style="border: 1px solid black;"><asp:CheckBox AutoPostback="true" id ="Puritischk" runat ="server" Align ="Center" Text="Puritis"/><br /><asp:TextBox runat="server" Visible="false"  ID="puritistxt" /></td>
            </tr>

            <tr   >
                
                <td class="auto-style5" style="border: 1px solid black;"><asp:CheckBox AutoPostback="true" id ="Altchk" runat ="server" Align ="Center" Text="Alt. Sensorium"/><br /><asp:TextBox runat="server" Visible="false"  ID="Altsensoriumtxt" /></td>
           
                
                <td class="auto-style2" style="border: 1px solid black;"><asp:CheckBox AutoPostback="true" id ="Astheniachk" runat ="server" Align ="Center" Text="Asthenia"/><br /><asp:TextBox runat="server" Visible="false"  ID="astheniatxt" /></td>
           
                
                <td class="auto-style3" style="border: 1px solid black;"><asp:CheckBox AutoPostback="true" id ="Backchk" runat ="server" Align ="Center" Text="Back Ache" /><br /><asp:TextBox runat="server" Visible="false"  ID="backachetxt" /></td>
           
                
                <td class="auto-style2" style="border: 1px solid black;"><asp:CheckBox AutoPostback="true" id ="Bodypainschk" runat ="server" Align ="Center" Text="Body Pains"/><br /><asp:TextBox runat="server" Visible="false"  ID="bodypainstxt" /></td>
          
                
                <td class="auto-style4" style="border: 1px solid black;"><asp:CheckBox AutoPostback="true" id ="bonychk" runat ="server" Align ="Center" Text="Bony Deformity"/><br /><asp:TextBox runat="server" Visible="false"  ID="bonydeformitytxt" /></td>
            </tr>

            <tr >
                
                <td class="auto-style5" style="border: 1px solid black;"><asp:CheckBox AutoPostback="true" id ="Musclechk" runat ="server" Align ="Center" Text="Muscle Pain"/><br /><asp:TextBox runat="server" Visible="false"  ID="Musclepaintxt" /></td>
           
                
                <td class="auto-style2" style="border: 1px solid black;"><asp:CheckBox AutoPostback="true" id ="abdpchk" runat ="server" Align ="Center" Text="Abd. Pain"/><br /><asp:TextBox runat="server" Visible="false"  ID="abdpaintxt" /></td>
            
                
                <td class="auto-style2" style="border: 1px solid black;"><asp:CheckBox AutoPostback="true" id ="chestchk" runat ="server" Align ="Center" Text="Chest Pain"/><br /><asp:TextBox runat="server" Visible="false"  ID="chestpaintxt" /></td>
            
                
                <td class="auto-style4" style="border: 1px solid black;"><asp:CheckBox AutoPostback="true" id ="headchk" runat ="server" Align ="Center" Text="Head Ache"/><br /><asp:TextBox runat="server" Visible="false"  ID="headachetxt" /></td>
            </tr>

            <tr>
                
                <td class="auto-style5" style="border: 1px solid black;"><asp:CheckBox AutoPostback="true" id ="libidochk" runat ="server" Align ="Center" Text="Libido"/><br /><asp:TextBox runat="server" Visible="false"  ID="libidotxt" /></td>
           
                
                <td class="auto-style2" style="border: 1px solid black;"><asp:CheckBox AutoPostback="true" id ="photophobiachk" runat ="server" Align ="Center" Text="Photophobia"/><br /><asp:TextBox runat="server" Visible="false"  ID="photophobiatxt" /></td>
           
                
                <td class="auto-style3" style="border: 1px solid black;"><asp:CheckBox AutoPostback="true" id ="abd_d_chk" runat ="server" Align ="Center" Text="Abd. distension"/><br /><asp:TextBox runat="server" Visible="false"  ID="abddistensiontxt" /></td>
           
                
                <td class="auto-style2" style="border: 1px solid black;"><asp:CheckBox AutoPostback="true" id ="lympchk" runat ="server" Align ="Center" Text="Lymph Nodes"/><br /><asp:TextBox runat="server" Visible="false"  ID="lymphnodetxt" /></td>
          
                
                <td class="auto-style4" style="border: 1px solid black;"><asp:CheckBox AutoPostback="true" id ="feverchk" runat ="server" Align ="Center" Text="Fever"/><br /><asp:TextBox runat="server" Visible="false"  ID="fevertxt" /></td>
            </tr>

            <tr  >
                
                <td class="auto-style5" style="border: 1px solid black;"><asp:CheckBox AutoPostback="true" id ="chillschk" runat ="server" Align ="Center" Text="Chills"/><br /><asp:TextBox runat="server" Visible="false"  ID="chillstxt" /></td>
           
                
                <td class="auto-style2" style="border: 1px solid black;"><asp:CheckBox AutoPostback="true" id ="rigorschk" runat ="server" Align ="Center" Text="Rigors"/><br /><asp:TextBox runat="server" Visible="false"  ID="rigorstxt" /></td>
          
                
                <td class="auto-style3" style="border: 1px solid black;"><asp:CheckBox AutoPostback="true" id ="sorethroatchk" runat ="server" Align ="Center" Text="Sore Throat"/><br /><asp:TextBox runat="server" Visible="false"  ID="sorethroattxt" /></td>
           
                
                <td class="auto-style2" style="border: 1px solid black;"><asp:CheckBox AutoPostback="true" id ="pigmenchk" runat ="server" Align ="Center" Text="Pigmentation"/><br /><asp:TextBox runat="server" Visible="false"  ID="pigmentationtxt" /></td>
           
                
                <td class="auto-style4" style="border: 1px solid black;"><asp:CheckBox AutoPostback="true" id ="bleedchk" runat ="server" Align ="Center" Text="Bleeding"/><br /><asp:TextBox runat="server" Visible="false"  ID="bleedingtxt" /></td>
            </tr>

            <tr   >
                
                <td class="auto-style5" style="border: 1px solid black;"><asp:CheckBox AutoPostback="true" id ="hairchk" runat ="server" Align ="Center" Text="HairLoss"/><br /><asp:TextBox runat="server" Visible="false"  ID="hairlosstxt" /></td>
           
               
                <td class="auto-style2" style="border: 1px solid black;"><asp:CheckBox AutoPostback="true" id ="drowsinesschk" runat ="server" Align ="Center" Text="Drowsiness"/><br /><asp:TextBox runat="server" Visible="false"  ID="drowsinesstxt" /></td>
          
                
                <td class="auto-style3" style="border: 1px solid black;"><asp:CheckBox AutoPostback="true" id ="paresthchk" runat ="server" Align ="Center" Text="Paresthesia"/><br /><asp:TextBox runat="server" Visible="false"  ID="parsethesiatxt" /></td>
           
                
                <td class="auto-style2" style="border: 1px solid black;"><asp:CheckBox AutoPostback="true" id ="coghchk" runat ="server" Align ="Center" Text="Cough"/><br /><asp:TextBox runat="server" Visible="false"  ID="cougntxt" /></td>
            
                
                <td class="auto-style4" style="border: 1px solid black;"><asp:CheckBox AutoPostback="true" id ="expectchk" runat ="server" Align ="Center" Text="Expectoratior"/><br /><asp:TextBox runat="server" Visible="false"  ID="exoectorationttxt" /></td>
            </tr>

            <tr>
                
                <td class="auto-style5" style="border: 1px solid black;"><asp:CheckBox AutoPostback="true" id ="nauschk" runat ="server" Align ="Center" Text="Nausea"/><br /><asp:TextBox runat="server" Visible="false"  ID="nauseatxt" /></td>
          
                
                <td class="auto-style2" style="border: 1px solid black;"><asp:CheckBox AutoPostback="true" id ="vomitchk" runat ="server" Align ="Center" Text="Vomiting"/><br /><asp:TextBox runat="server" Visible="false"  ID="vomittingtxt" /></td>
          
                
                <td class="auto-style3" style="border: 1px solid black;"><asp:CheckBox AutoPostback="true" id ="genrachk" runat ="server" Align ="Center" Text="Generalised Weakness"/> <br /><asp:TextBox runat="server" Visible="false"  ID="genarilizeweaktxt" /></td>
           
                
                <td class="auto-style2" style="border: 1px solid black;"><asp:CheckBox AutoPostback="true" id ="anorchk" runat ="server" Align ="Center" Text="anorexia"/><br /><asp:TextBox runat="server" Visible="false"  ID="anorexiatxt" /></td>
           
               
                <td class="auto-style4" style="border: 1px solid black;"><asp:CheckBox AutoPostback="true" id ="blurrchk" runat ="server" Align ="Center" Text="Blurring Of Vision"/><br /><asp:TextBox runat="server" Visible="false"  ID="blurrvisiontxt" /></td>
            </tr>

            <tr>
               
                <td class="auto-style5" style="border: 1px solid black;"><asp:CheckBox AutoPostback="true" ID="deafchk"  runat ="server" Align ="Center" Text="Deafness"/><br /><asp:TextBox runat="server" Visible="false"  ID="deafnesstxt" /></td>
                 <td class="auto-style5" style="border: 1px solid black;"/>
                <td class="auto-style5" style="border: 1px solid black;"/>
                <td class="auto-style5" style="border: 1px solid black;"/>
                <td class="auto-style5" style="border: 1px solid black;"/>

            </tr>
           
        </table>
        </div><br /><br />

        <h3 style="color:MidnightBlue; font-style:italic;">HISTORY OBTAINED FROM:</h3>
            <asp:TextBox runat ="server" ID ="history" TextMode ="MultiLine" Columns ="100" Rows ="10"></asp:TextBox>

         <h3 style="color:MidnightBlue; font-style:italic;">PAST HISTORY:</h3>
         <asp:Table ID="Table3" runat="server" Font-Size="Large" Width="500" Font-Names="Palatino" 
            ForeColor="Snow" CellPadding="5" CellSpacing="3" Align ="left">
            <asp:TableHeaderRow runat="server" ForeColor="Black" BackColor="#dfe3ee" Font-Bold="true" >
                <asp:TableHeaderCell>    </asp:TableHeaderCell>
                <asp:TableHeaderCell>Duration</asp:TableHeaderCell>
                <asp:TableHeaderCell>  </asp:TableHeaderCell>
            </asp:TableHeaderRow>

            <asp:TableRow ID="TableRow52" runat="server" BackColor="#dfe3ee" ForeColor ="Black" >
                                        <asp:TableCell><asp:CheckBox id ="CheckBox1" runat ="server" Align ="Center" Text ="DM"/></asp:TableCell>                               
                <asp:TableCell><asp:TextBox id ="dmtp" runat ="server" ></asp:TextBox></asp:TableCell>
                <asp:TableCell><asp:CheckBox runat="server" Text ="Treated"/></asp:TableCell>
            </asp:TableRow>

            <asp:TableRow ID="TableRow53" runat="server" BackColor="#dfe3ee" ForeColor ="Black" >
                                                        <asp:TableCell><asp:CheckBox id ="CheckBox2" runat ="server" Align ="Center" Text ="HTN"/></asp:TableCell>                                                              
                <asp:TableCell><asp:TextBox id ="htntp" runat ="server" ></asp:TextBox></asp:TableCell>
                <asp:TableCell><asp:CheckBox runat="server" Text ="Treated"/></asp:TableCell>
            </asp:TableRow>

            <asp:TableRow ID="TableRow54" runat="server" BackColor="#dfe3ee" ForeColor ="Black" >
                                                        <asp:TableCell><asp:CheckBox id ="CheckBox3" runat ="server" Align ="Center" Text ="CAD"/></asp:TableCell>                                                              
                <asp:TableCell><asp:TextBox id ="cadtp" runat ="server" ></asp:TextBox></asp:TableCell>
                <asp:TableCell><asp:CheckBox runat="server" Text ="Treated"/></asp:TableCell>
            </asp:TableRow>

            <asp:TableRow ID="TableRow55" runat="server" BackColor="#dfe3ee" ForeColor ="Black" >
                                                        <asp:TableCell><asp:CheckBox id ="CheckBox4" runat ="server" Align ="Center" Text ="CVA"/></asp:TableCell>                                                              
                <asp:TableCell><asp:TextBox id ="cvatp" runat ="server" ></asp:TextBox></asp:TableCell>
                <asp:TableCell><asp:CheckBox runat="server" Text ="Treated"/></asp:TableCell>
            </asp:TableRow>

            <asp:TableRow ID="TableRow56" runat="server" BackColor="#dfe3ee" ForeColor ="Black" >
                                                                        <asp:TableCell><asp:CheckBox id ="CheckBox5" runat ="server" Align ="Center" Text ="Jaundice"/></asp:TableCell>                                                                                               
                <asp:TableCell><asp:TextBox id ="jtp" runat ="server" ></asp:TextBox></asp:TableCell>
                <asp:TableCell><asp:CheckBox runat="server" Text ="Treated" ID ="jyn"/></asp:TableCell>
            </asp:TableRow>

            <asp:TableRow ID="TableRow57" runat="server" BackColor="#dfe3ee" ForeColor ="Black" >
                                                                        <asp:TableCell><asp:CheckBox id ="CheckBox6" runat ="server" Align ="Center" Text ="TB"/></asp:TableCell>                                                                                        
                <asp:TableCell><asp:TextBox id ="tbtp" runat ="server" ></asp:TextBox></asp:TableCell>
                <asp:TableCell><asp:CheckBox runat="server" Text ="Treated" ID ="tbyn"/></asp:TableCell>
            </asp:TableRow>
             </asp:Table>


        <asp:Table ID="Table4" runat="server" Font-Size="Large" Width="350" Font-Names="Palatino" 
              ForeColor="Snow" CellPadding="5" CellSpacing="3" Align ="center">
            <asp:TableHeaderRow runat="server" ForeColor="Black" BackColor="#dfe3ee" Font-Bold="true" >
                <asp:TableHeaderCell>   </asp:TableHeaderCell>
                <asp:TableHeaderCell>Duration</asp:TableHeaderCell>
                <asp:TableHeaderCell>   </asp:TableHeaderCell>

            </asp:TableHeaderRow>

            <asp:TableRow ID="TableRow58" runat="server" BackColor="#dfe3ee" ForeColor ="Black" >
                                                                        <asp:TableCell><asp:CheckBox id ="CheckBox7" runat ="server" Align ="Center" Text ="Surgeries"/></asp:TableCell>                                                                                 
                <asp:TableCell><asp:TextBox id ="stp" runat ="server" ></asp:TextBox></asp:TableCell>
                <asp:TableCell><asp:CheckBox runat="server" Text ="Treated" ID ="syn"/></asp:TableCell>
            </asp:TableRow>

            <asp:TableRow ID="TableRow59" runat="server" BackColor="#dfe3ee" ForeColor ="Black" >
                                                                        <asp:TableCell><asp:CheckBox id ="CheckBox8" runat ="server" Align ="Center" Text ="Blood Tx"/></asp:TableCell>                                                              
                <asp:TableCell><asp:TextBox id ="btp" runat ="server" ></asp:TextBox></asp:TableCell>
                <asp:TableCell><asp:CheckBox runat="server" Text ="Treated" ID ="byn"/></asp:TableCell>
            </asp:TableRow>

            <asp:TableRow ID="TableRow60" runat="server" BackColor="#dfe3ee" ForeColor ="Black" >
                                                                        <asp:TableCell><asp:CheckBox id ="CheckBox9" runat ="server" Align ="Center" Text ="Edema"/></asp:TableCell>                                                                                            
                <asp:TableCell><asp:TextBox id ="etp" runat ="server" ></asp:TextBox></asp:TableCell>
                <asp:TableCell><asp:CheckBox runat="server" Text ="Treated" ID ="eyn"/></asp:TableCell>
            </asp:TableRow>

            <asp:TableRow ID="TableRow61" runat="server" BackColor="#dfe3ee" ForeColor ="Black" >
                 <asp:TableCell><asp:CheckBox id ="CheckBox10" runat ="server" Align ="Center" Text ="Stones"/></asp:TableCell>                                                              
                <asp:TableCell><asp:TextBox id ="sttp" runat ="server" ></asp:TextBox></asp:TableCell>
                <asp:TableCell><asp:CheckBox runat="server" Text ="Treated" ID ="styn"/></asp:TableCell>
            </asp:TableRow>

            <asp:TableRow ID="TableRow62" runat="server" BackColor="#dfe3ee" ForeColor ="Black" >
                <asp:TableCell><asp:CheckBox id ="CheckBox11" runat ="server" Align ="Center" Text ="UTI"/></asp:TableCell>                                                                                   
                <asp:TableCell><asp:TextBox id ="utitp" runat ="server" ></asp:TextBox></asp:TableCell>
                <asp:TableCell><asp:CheckBox runat="server" Text ="Treated" ID ="utiyn"/></asp:TableCell>
            </asp:TableRow>

            <asp:TableRow ID="TableRow63" runat="server" BackColor="#dfe3ee" ForeColor ="Black" >
                                    <asp:TableCell><asp:CheckBox id ="CheckBox12" runat ="server" Align ="Center" Text ="Cancer"/></asp:TableCell>                                                              
                <asp:TableCell><asp:TextBox id ="ctp" runat ="server" ></asp:TextBox></asp:TableCell>
                <asp:TableCell><asp:CheckBox runat="server" Text ="Treated" ID ="cyn"/></asp:TableCell>
            </asp:TableRow>
             </asp:Table>

            <h3 style="color:MidnightBlue; font-style:italic;">SOCIAL HISTORY:</h3>
         <asp:Table ID="Table7" runat="server" Font-Size="Large" Width="200" Font-Names="Palatino" 
             ForeColor="Snow" CellPadding="5" CellSpacing="3" Align ="left">

            <asp:TableRow ID="TableRow75" runat="server" BackColor="#dfe3ee" ForeColor ="Black" >
                <asp:TableCell>Alcohol Use</asp:TableCell>
                <asp:TableCell><asp:TextBox id ="atp" runat ="server" ></asp:TextBox></asp:TableCell>
            </asp:TableRow>

            <asp:TableRow ID="TableRow76" runat="server" BackColor="#dfe3ee" ForeColor ="Black" >
                <asp:TableCell>Tobacco/Cigarette</asp:TableCell>
                <asp:TableCell><asp:TextBox id ="ttp" runat ="server" ></asp:TextBox></asp:TableCell>
            </asp:TableRow>

            <asp:TableRow ID="TableRow77" runat="server" BackColor="#dfe3ee" ForeColor ="Black" >
                <asp:TableCell>Drug Absue</asp:TableCell>
                <asp:TableCell><asp:TextBox id ="datp" runat ="server" ></asp:TextBox></asp:TableCell>
            </asp:TableRow>

            <asp:TableRow ID="TableRow78" runat="server" BackColor="#dfe3ee" ForeColor ="Black" >
                <asp:TableCell>HIV Risk Factors</asp:TableCell>
                <asp:TableCell><asp:TextBox id ="hivrtp" runat ="server" ></asp:TextBox></asp:TableCell>
            </asp:TableRow>
             </asp:Table>

            <asp:Table ID="Table8" runat="server" Font-Size="Large" Width="350" Font-Names="Palatino" B
              ForeColor="Snow" CellPadding="5" CellSpacing="3" Align ="center">

            <asp:TableRow ID="TableRow79" runat="server" BackColor="#dfe3ee" ForeColor ="Black" >
                <asp:TableCell>Occupation</asp:TableCell>
                <asp:TableCell><asp:TextBox id ="occ" runat ="server" ></asp:TextBox></asp:TableCell>
            </asp:TableRow>

            <asp:TableRow ID="TableRow81" runat="server" BackColor="#dfe3ee" ForeColor ="Black" >
                <asp:TableCell>Income Per Year</asp:TableCell>
                <asp:TableCell><asp:TextBox id ="ipy" runat ="server" ></asp:TextBox></asp:TableCell>
            </asp:TableRow>
             </asp:Table><br /><br /><br /><br />

            <h3 style="color:MidnightBlue; font-style:italic;">FAMILY HISTORY & FAMILY TREE:</h3>
                <asp:Table ID="Table9" runat="server" Font-Size="Large" Width="400" Font-Names="Palatino" 
              ForeColor="Snow" CellPadding="5" CellSpacing="2" Align ="left">
                    <asp:TableRow ID="TableRow82" runat="server" BackColor="#dfe3ee" ForeColor ="Black" >
                <asp:TableCell>No Of People Effected</asp:TableCell>
                <asp:TableCell><asp:TextBox id ="nopa" runat ="server" ></asp:TextBox></asp:TableCell>
            </asp:TableRow>

                    <asp:TableRow ID="TableRow83" runat="server" BackColor="#dfe3ee" ForeColor ="Black" >
                <asp:TableCell>Relationship</asp:TableCell>
                <asp:TableCell><asp:TextBox runat ="server" ID ="relation" TextMode ="MultiLine" Columns ="100" Rows ="10"></asp:TextBox></asp:TableCell>
            </asp:TableRow>
        </asp:Table>
                <br /><br /><br /><br /><br /><br /><br<br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
            <asp:Button CssClass="btnbgm" BorderColor="Silver" Font-Size="Large"  runat="server"  ForeColor="black" Width="107px" Height="35px" OnClick="Submit" Text="Register" BackColor="SeaShell" BorderStyle="Solid" Font-Italic="true" style="margin-left: 44px"/>
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
