<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Part3.aspx.cs" Inherits="ProjectWebForm.Part3" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="Styling/Backgroound.css" type="text/css" />
     <link rel="stylesheet" href="styling/Theme.css" type="text/css" />
   <link rel="stylesheet" href="styling/footer.css" type="text/css" />
    <link rel="stylesheet" href="styling/popup_ajax.css" type="text/css" />
     <link rel="stylesheet" href="styling/menu.css" type="text/css" />
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
         <%-- popup start --%>
        <div>
          <asp:ScriptManager runat="server" />  
<asp:LinkButton ID="lnkDummy" runat="server"/>
            <cc1:ModalPopupExtender ID="ModalPopupExtender1" BehaviorID="mpe" runat="server"
    PopupControlID="pnlPopup" TargetControlID="lnkDummy" BackgroundCssClass="modalBackground" CancelControlID = "btnHide">
</cc1:ModalPopupExtender>
<asp:Panel ID="pnlPopup" runat="server" CssClass="modalPopup" Style="display: none">
    <div class="header">
        <asp:Label runat="server" ID="lblpop" ForeColor="Red" />
    </div>
    <div class="body"  >
       
        <br />
        <br />
        <span><asp:Button ID="btnHide" runat="server" Text="exit" /></span>
        <span><asp:LinkButton runat="server" Text="check data"  PostBackUrl="~/Webform1.aspx" /> </span>
    </div>

</asp:Panel>
            </div>
            <%-- popup complete --%>
           
        <div>
        <ul>
  <li><a href="Home.aspx">Home</a></li>
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
                <asp:Button CausesValidation="false" runat ="server" ID ="login" BackColor ="Black" ForeColor ="White" Font-Size ="130%" OnClick ="Unnamed_Click" Text ="Logout" Width ="75px" Height="40px" />
      </li>
</ul>
    </div>
        
               
    <div>       
        <div id="centerpage" align="center">
            <table>
                <tr>
                    <td>
        <asp:Table ID="Table10" runat="server" Font-Size="Large" Width="400" Font-Names="Palatino" ForeColor="Snow" CellPadding="5" CellSpacing="3" Align ="left">
             <asp:TableRow ID="TableRow41" runat="server" BackColor="#dfe3ee" ForeColor ="Black" >
                 <asp:TableCell>Adhar Number:</asp:TableCell>
                <asp:TableCell><asp:TextBox id ="adharid" runat ="server" Align ="Center"></asp:TextBox></asp:TableCell>
            </asp:TableRow>            
         </asp:Table>
                        </td>
                    </tr>
                                                                             
        
                <tr><td>
        <h3 style="color:MidnightBlue; font-style:italic;">OTHER SYSTEM HISTORY:</h3>
        <asp:Table ID="Table1" runat="server" Font-Size="Large" Width="400" Font-Names="Palatino" ForeColor="Snow" CellPadding="5" CellSpacing="3" Align ="left">
             <asp:TableRow ID="TableRow1" runat="server" BackColor="#dfe3ee" ForeColor ="Black" >
                <asp:TableCell>Skin</asp:TableCell>
                <asp:TableCell><asp:TextBox id ="skintxt" runat ="server" Align ="Center"></asp:TextBox></asp:TableCell>
            </asp:TableRow>

            <asp:TableRow ID="TableRow2" runat="server" BackColor="#dfe3ee" ForeColor ="Black" >
                <asp:TableCell>Eyes</asp:TableCell>
                <asp:TableCell><asp:TextBox id ="eyestxt" runat ="server" Align ="Center"></asp:TextBox></asp:TableCell>
            </asp:TableRow>

            <asp:TableRow ID="TableRow3" runat="server" BackColor="#dfe3ee" ForeColor ="Black" >
                <asp:TableCell>ENT</asp:TableCell>
                <asp:TableCell><asp:TextBox id ="enttxt" runat ="server" Align ="Center"></asp:TextBox></asp:TableCell>
            </asp:TableRow>

            <asp:TableRow ID="TableRow4" runat="server" BackColor="#dfe3ee" ForeColor ="Black" >
                <asp:TableCell>Resp</asp:TableCell>
                <asp:TableCell><asp:TextBox id ="resptxt" runat ="server" Align ="Center"></asp:TextBox></asp:TableCell>
            </asp:TableRow>

            <asp:TableRow ID="TableRow5" runat="server" BackColor="#dfe3ee" ForeColor ="Black" >
                <asp:TableCell>CVS</asp:TableCell>
                <asp:TableCell><asp:TextBox id ="cvstxt" runat ="server" Align ="Center"></asp:TextBox></asp:TableCell>
            </asp:TableRow>

            <asp:TableRow ID="TableRow6" runat="server" BackColor="#dfe3ee" ForeColor ="Black" >
                <asp:TableCell>Gastrointestinal</asp:TableCell>
                <asp:TableCell><asp:TextBox id ="gastxt" runat ="server" Align ="Center"></asp:TextBox></asp:TableCell>
            </asp:TableRow>

            <asp:TableRow ID="TableRow7" runat="server" BackColor="#dfe3ee" ForeColor ="Black" >
                <asp:TableCell>Genito-urinary</asp:TableCell>
                <asp:TableCell><asp:TextBox id ="gentxt" runat ="server" Align ="Center"></asp:TextBox></asp:TableCell>
            </asp:TableRow>
        </asp:Table>

         <asp:Table ID="Table2" runat="server" Font-Size="Large" Width="400" Font-Names="Palatino" ForeColor="Snow" CellPadding="5" CellSpacing="3" Align ="center">
             <asp:TableRow ID="TableRow8" runat="server" BackColor="#dfe3ee" ForeColor ="Black" >
                <asp:TableCell>Reproductive</asp:TableCell>
                <asp:TableCell><asp:TextBox id ="reptxt" runat ="server" Align ="Center"></asp:TextBox></asp:TableCell>
            </asp:TableRow>

            <asp:TableRow ID="TableRow9" runat="server" BackColor="#dfe3ee" ForeColor ="Black" >
                <asp:TableCell>Musculo-Skeletal</asp:TableCell>
                <asp:TableCell><asp:TextBox id ="mstxt" runat ="server" Align ="Center"></asp:TextBox></asp:TableCell>
            </asp:TableRow>

            <asp:TableRow ID="TableRow10" runat="server" BackColor="#dfe3ee" ForeColor ="Black" >
                <asp:TableCell>Allergies</asp:TableCell>
                <asp:TableCell><asp:TextBox id ="alltxt" runat ="server" Align ="Center"></asp:TextBox></asp:TableCell>
            </asp:TableRow>

            <asp:TableRow ID="TableRow11" runat="server" BackColor="#dfe3ee" ForeColor ="Black" >
                <asp:TableCell>Neurological</asp:TableCell>
                <asp:TableCell><asp:TextBox id ="neurotxt" runat ="server" Align ="Center"></asp:TextBox></asp:TableCell>
            </asp:TableRow>

            <asp:TableRow ID="TableRow12" runat="server" BackColor="#dfe3ee" ForeColor ="Black" >
                <asp:TableCell>Psychological</asp:TableCell>
                <asp:TableCell><asp:TextBox id ="psyctxt" runat ="server" Align ="Center"></asp:TextBox></asp:TableCell>
            </asp:TableRow>

            <asp:TableRow ID="TableRow13" runat="server" BackColor="#dfe3ee" ForeColor ="Black" >
                <asp:TableCell>Endocrinological</asp:TableCell>
                <asp:TableCell><asp:TextBox id ="endotxt" runat ="server" Align ="Center"></asp:TextBox></asp:TableCell>
            </asp:TableRow>

            <asp:TableRow ID="TableRow14" runat="server" BackColor="#dfe3ee" ForeColor ="Black" >
                <asp:TableCell>Hematological</asp:TableCell>
                <asp:TableCell><asp:TextBox id ="hemattxt" runat ="server" Align ="Center"></asp:TextBox></asp:TableCell>
            </asp:TableRow>
        </asp:Table>
                    </td>
                    </tr>

                <tr><td>
        <h3 style="color:MidnightBlue; font-style:italic;">MEDICATIONS(Existing):</h3>
        
        <asp:Table ID="Table9" runat="server" Font-Size="Large" Width="250" Font-Names="Palatino" ForeColor="Snow" CellPadding="5" CellSpacing="3" Align ="left">
            <asp:TableRow ID="TableRow40" runat="server" BackColor="#dfe3ee" ForeColor ="Black" >
                <asp:TableCell><asp:TextBox id="txtid" Runat="server"></asp:TextBox></asp:TableCell> 
                <asp:TableCell><asp:TextBox id="txtdrug" Runat="server"></asp:TextBox></asp:TableCell>
                <asp:TableCell><asp:TextBox id="txtdose" Runat="server"></asp:TextBox></asp:TableCell>
                <asp:TableCell><asp:Button id="update" Text="Update" OnClick="Update" Runat="server" /></asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        

        <asp:GridView id="grdmed" DataSourceID="srcmed"  Runat="server" Width="350px" RowStyle-ForeColor ="Snow"> <EmptyDataTemplate>
    </p>
<asp:DetailsView id="dtlmed" DataSourceID="srcmed" DefaultMode="Insert" AutoGenerateInsertButton="true" AutoGenerateRows="false" Runat="server">
<Fields>
<asp:BoundField HeaderText="Id" DataField="id" />
<asp:BoundField HeaderText="Drug Name:" DataField="drug" />
<asp:BoundField HeaderText="Dosage:" DataField="Dose_med" />
</Fields>
</asp:DetailsView>
</EmptyDataTemplate>
</asp:GridView>
<asp:SqlDataSource id="srcmed" runat ="server"
ConnectionString="<%$ ConnectionStrings:NephroCare %>"
     SelectCommand="SELECT ID,DRUG,DOSE_MED FROM Part3_Medications where id=@id "
     InsertCommand="INSERT into  [Part3_Medications] (id, drug , dose_med) VALUES (@id, @drug ,@Dose_med)" >
    <SelectParameters>
        <asp:formparameter name="ID" formfield="adharid" />
    </SelectParameters>
<InsertParameters>
  <asp:formparameter name="ID" formfield="adharid" />
  <asp:formparameter name="drug"  formfield="txtdrug" />
  <asp:formparameter name="Dose_med"  formfield="txtdose" />
</InsertParameters>
</asp:SqlDataSource>
                    </td></tr>
                <tr><td>
        <h3 style="color:MidnightBlue; font-style:italic;"><u><b>EXAMINATIONS</b></u></h3>
</td></tr>
                 <tr><td>
        <h3 style="color:MidnightBlue; font-style:italic;">Constitutional</h3>
                     </td></tr>
                <tr><td>
        <table style="background-color:#dfe3ee; font-family:'Plantagenet Cherokee';width:500px;height:200px" align="center" >
             <tr>
                 <td>         Temp           </td>
                 <td>
                <asp:TextBox id ="temptxt" runat ="server" Align ="Center"></asp:TextBox>
                     </td>
        
               <td>PR</td>
                <td><asp:TextBox id ="prtxt" runat ="server" Align ="Center"/></td>
            

           
                <td>RR</td>
                <td><asp:TextBox id ="rrtxt" runat ="server" Align ="Center"></asp:TextBox></td>
            </tr>
    

     <tr>
            
                <td>Pallor</td>
                <td><asp:TextBox id ="pallortxt" runat ="server" Align ="Center"></asp:TextBox></td>
           

            
                <td>Icterus</td>
                <td><asp:TextBox id ="icterustxt" runat ="server" Align ="Center"></asp:TextBox></td>
          
                <td>Rash</td>
                <td><asp:TextBox id ="rashtxt" runat ="server" Align ="Center"></asp:TextBox></td>
            </tr>

        

        
            <tr>
                <td>Pedal edema</td>
                <td><asp:TextBox id ="pedaltxt" runat ="server" Align ="Center"></asp:TextBox></td>
           
                <td>Puffiness</td>
                <td><asp:TextBox id ="puffitxt" runat ="server" Align ="Center"></asp:TextBox></td>
            </tr>
       
        </table>
                    </td></tr>
                <tr><td>
        <h3 style="color:MidnightBlue; font-style:italic;">OTHER SYSTEM HISTORY:</h3>
                    </td></tr>

       <table style="background-color:#dfe3ee; font-family:'Plantagenet Cherokee';width:auto;height:auto" align="center" >

            <tr >
                <td>Supine</td>
                <td><asp:TextBox id ="supinetxt" runat ="server" Align ="Center"></asp:TextBox></td>
           
                <td>Standing</td>
                <td><asp:TextBox id ="standingtxt" runat ="server" Align ="Center"></asp:TextBox></td>
            
                <td>RUL</td>
                <td><asp:TextBox id ="rultxt" runat ="server" Align ="Center"></asp:TextBox></td>
            </tr>
       
            <tr>
                <td>LUL</td>
                <td><asp:TextBox id ="lultxt" runat ="server" Align ="Center"></asp:TextBox></td>
            
                <td>RLL</td>
                <td><asp:TextBox id ="rlltxt" runat ="server" Align ="Center"></asp:TextBox></td>
            
                
                <td>LLL</td>
                <td><asp:TextBox id ="llltxt" runat ="server" Align ="Center"></asp:TextBox></td>
            </tr>
        </table>
       <tr><td>
        <h3 style="color:MidnightBlue; font-style:italic;"><u><b>SYSTEMIC EXAMINATION</b></u></h3>
           </td></tr>
                    <tr><td>
        <table style="background-color:#dfe3ee; font-family:'Plantagenet Cherokee';width:auto;height:auto" align="center" >

            <tr >
                <td>Eyes</td>
                <td><asp:TextBox id ="eyes1txt" runat ="server" Align ="Center"></asp:TextBox></td>
            
                <td>ENT</td>
                <td><asp:TextBox id ="ent1txt" runat ="server" Align ="Center"></asp:TextBox></td>
           
                <td>Cardiology</td>
                <td><asp:TextBox id ="cardtxt" runat ="server" Align ="Center"></asp:TextBox></td>
            </ tr >

              <tr>
                <td>Respiratory</td>
                <td><asp:TextBox id ="respitxt" runat ="server" Align ="Center"></asp:TextBox></td>
           
                <td>Abdomen</td>
                <td><asp:TextBox id ="abdtxt" runat ="server" Align ="Center"></asp:TextBox></td>
           
                <td>Nervous system</td>
                <td><asp:TextBox id ="nervtxt" runat ="server" Align ="Center"></asp:TextBox></td>
            </ tr >
        

            <tr>
                <td>Skin</td>
                <td><asp:TextBox id ="skin1txt" runat ="server" Align ="Center"></asp:TextBox></td>
           
                <td>Hematology</td>
                <td><asp:TextBox id ="hematxt" runat ="server" Align ="Center"></asp:TextBox></td>
            
                <td>Psychiatry</td>
                <td><asp:TextBox id ="psytxt" runat ="server" Align ="Center"></asp:TextBox></td>
            </ tr >

             <tr>
                <td>Gynacology</td>
                <td><asp:TextBox id ="gyntxt" runat ="server" Align ="Center"></asp:TextBox></td>
           
                <td>Musculo Skeletal</td>
                <td><asp:TextBox id ="mustxt" runat ="server" Align ="Center"></asp:TextBox></td>
            </ tr >
        </table>
                        </td></tr>
        <tr><td>
           
        <h3 style="color:MidnightBlue; font-style:italic;">DATA REVIEW:</h3>
            </td></tr>
                <tr><td>
        <asp:TextBox runat ="server" Columns ="70" Rows ="10" ID ="drtxt" TextMode ="MultiLine" ></asp:TextBox>
   </td></tr>
                 <tr><td>
        <h3 style="color:MidnightBlue; font-style:italic;"><u><b>IMPRESSION</b></u></h3>
                      </td></tr>
                <tr><td>
        <asp:TextBox runat ="server" Columns ="70" Rows ="10" ID ="imptxt" TextMode ="MultiLine"></asp:TextBox>
 </td></tr>
                <tr><td>
        <h3 style="color:MidnightBlue; font-style:italic;">Provisional Diagnosis:</h3>
                     </td></tr>
                <tr><td>
        <asp:TextBox runat ="server" Columns ="70" Rows ="10" ID ="provtxt" TextMode ="MultiLine"></asp:TextBox>
                     </td></tr>
                <tr><td>
        <h3 style="color:MidnightBlue; font-style:italic;">Co-morbid Conditions:</h3>
                     </td></tr>
                <tr><td>
        <asp:TextBox runat ="server" Columns ="70" Rows ="10" ID ="comtxt" TextMode ="MultiLine"></asp:TextBox>
                 
                        </td></tr>

                <tr><td>
     
       
                     <br />
     
       
                     <asp:Button runat="server" CssClass="btnbgm" BorderColor="Silver" Font-Size="Large"   ForeColor="black" Width="107px" Height="35px" OnClick="Submit" Text="Update" BackColor="SeaShell" BorderStyle="Solid" Font-Italic="true" style="margin-left: 44px" />
                     </td></tr>
               
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
