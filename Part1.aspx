<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Part1.aspx.cs" Inherits="Nephro_Care.Part1" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit"  TagPrefix="cc1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="styling/Backgroound.css" type="text/css" />
    <link rel="stylesheet" href="styling/Theme.css" type="text/css" />
    <link rel="stylesheet" href="styling/popup_ajax.css" type="text/css" />
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
            <%-- popup start --%>
           <asp:ScriptManager runat="server" />
<asp:LinkButton ID="lnkDummy" runat="server"></asp:LinkButton>
            <cc1:ModalPopupExtender ID="ModalPopupExtender1" BehaviorID="mpe" runat="server"
    PopupControlID="pnlPopup" TargetControlID="lnkDummy" BackgroundCssClass="modalBackground" CancelControlID = "btnHide">
</cc1:ModalPopupExtender>
<asp:Panel ID="pnlPopup" runat="server" CssClass="modalPopup" Style="display: none" Width="400px" Height="400px">
    <div class="header">
      
    
       <asp:label runat="server" id="lblpopup" ForeColor="Red" BorderColor="White"  />
        
        <asp:Image runat="server" ID="img" ImageAlign="AbsMiddle" Width="100px" Height="100px" ImageUrl="~/styling/Loading.gif" Visible="false" />
       
        <asp:Button ID="btnHide" runat="server" Text="exit"  />
        <asp:LinkButton runat="server" Text="check data"  PostBackUrl="~/Part3.aspx" /> 
   
         
        </div>
    

</asp:Panel>
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
                <asp:Button CausesValidation="false" runat ="server" ID ="login" BackColor ="Black" ForeColor ="White" Font-Size ="130%" OnClick ="Unnamed_Click1" Text ="Logout" Width ="70px" Height="40px" />
      </li>

         
              
      
</ul>
    </div>
            
            <%-- popup complete --%>
        </div>
        <div>
        <div id="centerpage" align="center">
        
            <table>
            <tr><td>
            <asp:Table ID="Table1" runat="server" Font-Size="Large" Width="654px" Font-Names="Palatino" 
             ForeColor="Snow" CellPadding="5" CellSpacing="0" Align ="left" style="margin-left: 0px; margin-bottom: 0px">
            
                <asp:TableRow ID="TableRow1" runat="server" BackColor="#dfe3ee"  ForeColor ="Black" >    
                    <asp:TableCell><asp:Label text ="Aadhar Number" runat="server" align ="left"></asp:Label></asp:TableCell>

                        <asp:TableCell><asp:TextBox TextMode="Number" ID="AadharNumbertxt" runat="server" Width ="200px" Align ="left"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" BackColor="Red" Text="Must Enter Aadhar Number" ControlToValidate="AadharNumbertxt" />
                          
                        </asp:TableCell>
                <asp:TableCell><asp:Label Visible="false" ID="lblmsg" runat="server" align ="left"></asp:Label></asp:TableCell>
                    <asp:TableCell><asp:Label text ="OPNO" runat="server"></asp:Label></asp:TableCell>
                        <asp:TableCell><asp:TextBox ID="OPNOtxt" runat="server" align ="center"></asp:TextBox></asp:TableCell>
                    <asp:TableCell>Upload photo</asp:TableCell>
                    <asp:TableCell><asp:FileUpload runat="server" ID="fppic1" BackColor="White" /></asp:TableCell>
                </asp:TableRow>
            </asp:Table> </td>
                </tr>
            
            <tr><td>
            <h3 style="color:MidnightBlue; font-style:italic;">PREVIOUS ADMISSION DETAILS</h3>
                </td></tr>
             <tr><td>
            <asp:Table ID ="table12" runat ="server" Font-Size="Large" Width="48px" Font-Names="Palatino" ForeColor ="Snow" 
             CellPadding="8" CellSpacing="2" Align ="left" Height="23px" style="margin-left: 0px">
            <asp:TableRow>
               
                <asp:TableCell ID="TableRow57" runat="server" BackColor="#dfe3ee"  ForeColor ="Black">
                    <asp:Label Text ="IPNO" runat ="server"></asp:Label>
                </asp:TableCell>
                <asp:TableCell ID="TableRow58" runat="server" BackColor="#dfe3ee"  ForeColor ="Black">
                    <asp:Label Text ="DOA" runat ="server"></asp:Label>
                </asp:TableCell>
                <asp:TableCell ID="TableRow59" runat="server" BackColor="#dfe3ee"  ForeColor ="Black">
                    <asp:Label Text ="DOD" runat ="server"></asp:Label>
                </asp:TableCell>
                <asp:TableCell ID="TableRow60" runat="server" BackColor="#dfe3ee"  ForeColor ="Black">
                    <asp:Label Text ="Diagnosis" runat ="server"></asp:Label>
                </asp:TableCell>
                <asp:TableCell ID="TableRow61" runat="server" BackColor="#dfe3ee"  ForeColor ="Black">
                    <asp:Label Text ="SCreatinine" runat ="server"></asp:Label>
                </asp:TableCell>
                <asp:TableCell ID="TableRow62" runat="server" BackColor="#dfe3ee"  ForeColor ="Black">
                    <asp:Label Text ="UProtein" runat ="server"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>

                <asp:TableCell ID="TableRow63" runat="server" BackColor="#dfe3ee"  ForeColor ="Black">
                    <asp:TextBox id="ipnotxt" Runat="server" />
                </asp:TableCell><asp:TableCell ID="TableRow64" runat="server" BackColor="#dfe3ee"  ForeColor ="Black">
                    <asp:TextBox id="doatxt" Runat="server" />
                </asp:TableCell><asp:TableCell ID="TableRow65" runat="server" BackColor="#dfe3ee"  ForeColor ="Black">
                    <asp:TextBox id="dodtxt" Runat="server" />
                </asp:TableCell><asp:TableCell ID="TableRow66" runat="server" BackColor="#dfe3ee"  ForeColor ="Black">
                    <asp:TextBox id="diagnosistxt" Runat="server" />
                </asp:TableCell><asp:TableCell ID="TableRow67" runat="server" BackColor="#dfe3ee"  ForeColor ="Black">
                    <asp:TextBox id="screatininetxt" Runat="server" />
                </asp:TableCell><asp:TableCell ID="TableRow68" runat="server" BackColor="#dfe3ee"  ForeColor ="Black">
                    <asp:TextBox id="uproteintxt" Runat="server" />
                </asp:TableCell></asp:TableRow></asp:Table><br />
                 </td></tr>
           <tr><td>
            <asp:Button id="btnSubmit" Text="Update" OnClick="btnSubmit_Click" Runat="server" Height ="30px" Width ="100px" />
                  </td></tr>
       <tr><td>
        <asp:GridView id="grdMovies" DataSourceID="p1grd"  Runat="server" Font-Size="Large"  Width="337px" Font-Names="Palatino" ForeColor ="Snow" 
             CellPadding="8" CellSpacing="2" Align ="left" Height="50px"><EmptyDataTemplate>
        </p>
        <asp:DetailsView id="mov" DataSourceID="p1grd"  AutoGenerateInsertButton="true" AutoGenerateRows="false" Runat="server">
        <Fields>
        <asp:BoundField HeaderText="Ipno" DataField="ipno"/>
        <asp:BoundField HeaderText="DOA" DataField="DOA" />
        <asp:BoundField HeaderText="DOD" DataField="DOD" />
        <asp:BoundField HeaderText="Diagnosis" DataField="diagnosis" />
        <asp:BoundField HeaderText="SCreatine" DataField="Screatinine" />
        <asp:BoundField HeaderText="UProtein" DataField="uprotien" />
        </Fields>
        </asp:DetailsView>
        </EmptyDataTemplate>
                <FooterStyle Font-Bold="True" BackColor="#dfe3ee"  ForeColor ="Black"/>
                <HeaderStyle Font-Bold="True" BackColor="#dfe3ee"  ForeColor ="Black"/>
                <PagerStyle BackColor="#dfe3ee"  ForeColor ="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#dfe3ee"  ForeColor ="Black" />
                <SelectedRowStyle Font-Bold="True" BackColor="#dfe3ee"  ForeColor ="Black"/>
                <SortedAscendingCellStyle BackColor="#dfe3ee" />
                <SortedAscendingHeaderStyle BackColor="#dfe3ee" />
                <SortedDescendingCellStyle BackColor="#dfe3ee" />
                <SortedDescendingHeaderStyle BackColor="#dfe3ee" />
        </asp:GridView>
                
            
        <asp:SqlDataSource ID="p1grd" ConnectionString="<%$ ConnectionStrings:NephroCare %>" SelectCommand="SELECT ip_no, DOA, DOD,Diagnosis, S_Creatinine_at_discharge, [24hrs_UProtein] FROM part1_gridview1 where Adhar=@adhar " InsertCommand="INSERT into part1_gridview1 (Adhar,ip_no, DOA, DOD,Diagnosis, S_Creatinine_at_discharge, [24hrs_UProtein]) VALUES (@id,@IP_NO, @DateOfAdmission,@DateOfDischarge,@Diagnosis,@S_Creatinine_at_discharge,@uop)" Runat="server">
        <SelectParameters>
 <asp:formparameter name="Adhar" formfield="AadharNumbertxt" />
        </SelectParameters>
            <InsertParameters>
        <asp:formparameter name="Id" formfield="AadharNumbertxt" />
        <asp:formparameter name="IP_NO" formfield="ipnotxt" />
        <asp:formparameter name="DateOfAdmission"  formfield="doatxt" />
        <asp:formparameter name="DateOfDischarge" formfield="dodtxt" />
        <asp:formparameter name="Diagnosis"  formfield="diagnosistxt" />
        <asp:formparameter name="S_Creatinine_at_discharge" formfield="screatininetxt" />
        <asp:formparameter name="uop"  formfield="uproteintxt" />
        </InsertParameters>
        </asp:SqlDataSource>  
            </td></tr>
            <tr><td>
            <h3 style="color:MidnightBlue; font-style:italic;">PERSONAL DETAILS</h3></td></tr><tr><td>
                <asp:Table ID="Table2" runat="server" Font-Size="Large" Width="615px" Font-Names="Palatino" 
             ForeColor="Snow" CellPadding="8" CellSpacing="0" Align ="left">
               
           


                <asp:TableRow ID="TableRow2" runat="server" BackColor="#dfe3ee"  ForeColor ="Black" >    
                    <asp:TableCell><asp:Label text ="Name" runat="server"></asp:Label></asp:TableCell><asp:TableCell><asp:TextBox ID="Nametxt" runat="server"></asp:TextBox></asp:TableCell><asp:TableCell><asp:Label text ="Age" runat="server"></asp:Label></asp:TableCell><asp:TableCell><asp:TextBox ID="Agetxt" runat="server"></asp:TextBox></asp:TableCell><asp:TableCell><asp:Label text ="Gender" runat="server"></asp:Label></asp:TableCell><asp:TableCell><asp:RadioButtonList ID="Gender" runat ="server" RepeatDirection ="Horizontal">
                            <asp:ListItem Text ="Female" Value ="Female"></asp:ListItem>
                            <asp:ListItem Text ="Male" Value ="Male"></asp:ListItem>
                        </asp:RadioButtonList></asp:TableCell></asp:TableRow><asp:TableRow ID="TableRow3" runat="server" BackColor="#dfe3ee"  ForeColor ="Black" >    
                    <asp:TableCell><asp:Label text ="First Name" runat="server"></asp:Label></asp:TableCell><asp:TableCell><asp:TextBox ID="FirstNametxt" runat="server"></asp:TextBox></asp:TableCell><asp:TableCell><asp:Label text ="FamilyName" runat="server"></asp:Label></asp:TableCell><asp:TableCell><asp:TextBox ID="FamilyNametxt" runat="server"></asp:TextBox></asp:TableCell><asp:TableCell><asp:Label text ="Date Of Birth" runat="server"></asp:Label></asp:TableCell><asp:TableCell><asp:TextBox ID="DateOfBirthtxt" runat="server"></asp:TextBox></asp:TableCell></asp:TableRow></asp:Table></td></tr><tr><td>
            <asp:Table ID="Table3" runat="server" Font-Size="Large" Width="811px" Font-Names="Palatino" 
             ForeColor="Snow" CellPadding="5" CellSpacing="0" Align ="left" style="margin-left: 0px; margin-bottom: 0px" Height="72px">
            
                <asp:TableRow ID="TableRow4" runat="server" BackColor="#dfe3ee"  ForeColor ="Black" >    
                    <asp:TableCell><asp:Label text ="Address:" runat="server"></asp:Label></asp:TableCell><asp:TableCell><asp:TextBox ID="Addresstxt" runat="server" Width ="600px" Height ="100px" Align ="right"></asp:TextBox></asp:TableCell></asp:TableRow></asp:Table></td></tr><tr><td>
            <asp:Table ID="Table4" runat="server" Font-Size="Large" Width="807px" Font-Names="Palatino" 
             ForeColor="Snow" CellPadding="5" CellSpacing="0" Align ="left">

                <asp:TableRow ID="TableRow5" runat="server" BackColor="#dfe3ee"  ForeColor ="Black" >    
                    <asp:TableCell><asp:Label text ="Phone/Mobile No." runat="server"></asp:Label></asp:TableCell><asp:TableCell><asp:TextBox ID="PhoneNotxt" runat="server"></asp:TextBox></asp:TableCell><asp:TableCell><asp:Label text ="EmailId" runat="server"></asp:Label></asp:TableCell><asp:TableCell><asp:TextBox ID="EmailIdtxt" runat="server"></asp:TextBox></asp:TableCell></asp:TableRow><asp:TableRow ID="TableRow6" runat="server" BackColor="#dfe3ee"  ForeColor ="Black" >    
                    <asp:TableCell><asp:Label text ="Education" runat="server"></asp:Label></asp:TableCell><asp:TableCell><asp:TextBox ID="Educationtxt" runat="server"></asp:TextBox></asp:TableCell><asp:TableCell><asp:Label text ="Occupation" runat="server"></asp:Label></asp:TableCell><asp:TableCell><asp:TextBox ID="Occupationtxt" runat="server"></asp:TextBox></asp:TableCell></asp:TableRow><asp:TableRow ID="TableRow7" runat="server" BackColor="#dfe3ee"  ForeColor ="Black" >    
                    <asp:TableCell><asp:Label text ="Financial Status" runat="server"></asp:Label></asp:TableCell><asp:TableCell><asp:TextBox ID="FinancialStatustxt" runat="server"></asp:TextBox></asp:TableCell><asp:TableCell><asp:Label text ="BGT" runat="server"></asp:Label></asp:TableCell><asp:TableCell><asp:TextBox ID="BGTtxt" runat="server"></asp:TextBox></asp:TableCell></asp:TableRow><asp:TableRow ID="TableRow8" runat="server" BackColor="#dfe3ee"  ForeColor ="Black" >    
                    <asp:TableCell><asp:Label text ="Treating Doctor" runat="server"></asp:Label></asp:TableCell><asp:TableCell><asp:TextBox ID="TreatingDoctortxt" runat="server"></asp:TextBox></asp:TableCell><asp:TableCell><asp:Label text ="Ref By:" runat="server"></asp:Label></asp:TableCell><asp:TableCell><asp:RadioButtonList ID="RadioButtonList2" runat ="server" RepeatDirection ="Horizontal">
                            <asp:ListItem Text ="Self" Value ="Self"></asp:ListItem>
                            <asp:ListItem Text ="Organisation" Value ="Organisation"></asp:ListItem>
                            <asp:ListItem Text ="Physician" Value ="Physician"></asp:ListItem>
                        </asp:RadioButtonList></asp:TableCell></asp:TableRow></asp:Table><br />

      </td> </tr>
             <tr><td>
            <h3 style="color:MidnightBlue; font-style:italic;">ADDITIONAL INFORMATION</h3></td></tr><tr><td>
                 <asp:Table ID="Table8" runat="server" Font-Size="Large" Width="862px" Font-Names="Palatino" 
             ForeColor="Snow" CellPadding="5" CellSpacing="0" Align ="left">
                 
          

                <asp:TableRow ID="TableRow16" runat="server" BackColor="#dfe3ee"  ForeColor ="Black" >    
                    <asp:TableCell><asp:Label text ="Height(cms)" runat="server"></asp:Label></asp:TableCell><asp:TableCell><asp:TextBox ID="Heighttxt" runat="server"></asp:TextBox></asp:TableCell><asp:TableCell><asp:Label text ="Weight(kgs)" runat="server"></asp:Label></asp:TableCell><asp:TableCell><asp:TextBox ID="Weighttxt" runat="server"></asp:TextBox></asp:TableCell><asp:TableCell><asp:Label text ="Blood Group" runat="server"></asp:Label></asp:TableCell><asp:TableCell><asp:DropDownList ID ="DropDown1" runat ="server">
                            <asp:ListItem>O+</asp:ListItem>
                            <asp:ListItem>O-</asp:ListItem>
                            <asp:ListItem>AB+</asp:ListItem>
                            <asp:ListItem>AB-</asp:ListItem>
                            <asp:ListItem>A+</asp:ListItem>
                            <asp:ListItem>A-</asp:ListItem>
                            <asp:ListItem>B+</asp:ListItem>
                            <asp:ListItem>B-</asp:ListItem>
                            <asp:ListItem>Others</asp:ListItem>
                     </asp:DropDownList></asp:TableCell></asp:TableRow><asp:TableRow ID="TableRow17" runat="server" BackColor="#dfe3ee"  ForeColor ="Black" >    
                    <asp:TableCell><asp:Label text ="BSA" runat="server"></asp:Label></asp:TableCell><asp:TableCell><asp:TextBox ID="BSAtxt" runat="server"></asp:TextBox></asp:TableCell><asp:TableCell><asp:Label text ="BMI" runat="server"></asp:Label></asp:TableCell><asp:TableCell><asp:TextBox ID="BMItxt" runat="server"></asp:TextBox></asp:TableCell><asp:TableCell><asp:Label text ="MDRD GFR" runat="server"></asp:Label></asp:TableCell><asp:TableCell><asp:TextBox ID="MDRDGFRtxt" runat="server"></asp:TextBox></asp:TableCell></asp:TableRow><asp:TableRow ID="TableRow18" runat="server" BackColor="#dfe3ee"  ForeColor ="Black" >    
                    <asp:TableCell><asp:Label text ="HBs Ag" runat="server"></asp:Label></asp:TableCell><asp:TableCell><asp:TextBox ID="HBsAgtxt" runat="server"></asp:TextBox></asp:TableCell><asp:TableCell><asp:Label text ="HCV" runat="server"></asp:Label></asp:TableCell><asp:TableCell><asp:TextBox ID="HCVtxt" runat="server"></asp:TextBox></asp:TableCell><asp:TableCell><asp:Label text ="HIV" runat="server"></asp:Label></asp:TableCell><asp:TableCell><asp:TextBox ID="HIVtxt" runat="server"></asp:TextBox></asp:TableCell></asp:TableRow></asp:Table></td></tr><tr><td>
            <h3 style="color:MidnightBlue; font-style:italic;">VACCINATION-BRAND</h3></td></tr><tr><td>
               <asp:Table ID ="table5" runat ="server" Font-Size="Large" Width="238px" Font-Names="Palatino" ForeColor ="Snow" 
             CellPadding="8" CellSpacing="2" Align ="left" Height="62px">
            <asp:TableRow>
               
                <asp:TableCell ID="TableCell1" runat="server" BackColor="#dfe3ee"  ForeColor ="Black">
                    <asp:Label Text ="DATE" runat ="server"></asp:Label>
                </asp:TableCell><asp:TableCell ID="TableCell2" runat="server" BackColor="#dfe3ee"  ForeColor ="Black">
                    <asp:Label Text ="BRAND" runat ="server"></asp:Label>
                </asp:TableCell><asp:TableCell ID="TableCell3" runat="server" BackColor="#dfe3ee"  ForeColor ="Black">
                    <asp:Label Text ="DOSE" runat ="server"></asp:Label>
                </asp:TableCell></asp:TableRow><asp:TableRow>

                <asp:TableCell ID="TableCell4" runat="server" BackColor="#dfe3ee"  ForeColor ="Black">
                    <asp:TextBox id="datetxt" Runat="server" />
                </asp:TableCell><asp:TableCell ID="TableCell5" runat="server" BackColor="#dfe3ee"  ForeColor ="Black">
                    <asp:TextBox id="brandtxt" Runat="server" />
                </asp:TableCell><asp:TableCell ID="TableCell6" runat="server" BackColor="#dfe3ee"  ForeColor ="Black">
                    <asp:TextBox id="dosetxt" Runat="server" />
                </asp:TableCell></asp:TableRow></asp:Table></td></tr><tr><td>
            <asp:Button id="Button1" Text="Update" OnClick="updateClick" Runat="server" Height="30px" Width="100px" />
            </td> </tr>
        <tr><td>
        <asp:GridView id="GridView1" DataSourceID="SqlDataSource1"  Runat="server" Font-Size="Large" Width="238px" Font-Names="Palatino" ForeColor ="Snow" 
             CellPadding="8" CellSpacing="2" Align ="left" Height="62px"> <EmptyDataTemplate>
        </p>
        <asp:DetailsView id="movi" DataSourceID="SqlDataSource1"  AutoGenerateInsertButton="true" AutoGenerateRows="false" Runat="server">
        <Fields>
        <asp:BoundField HeaderText="Date" DataField="date"/>
        <asp:BoundField HeaderText="Brand" DataField="brand" />
        <asp:BoundField HeaderText="Dose" DataField="dose" />
        
        </Fields>
        </asp:DetailsView>
        </EmptyDataTemplate>
                <FooterStyle Font-Bold="True" BackColor="#dfe3ee"  ForeColor ="Black"/>
                <HeaderStyle Font-Bold="True" BackColor="#dfe3ee"  ForeColor ="Black"/>
                <PagerStyle BackColor="#dfe3ee"  ForeColor ="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#dfe3ee"  ForeColor ="Black" />
                <SelectedRowStyle Font-Bold="True" BackColor="#dfe3ee"  ForeColor ="Black"/>
                <SortedAscendingCellStyle BackColor="#dfe3ee" />
                <SortedAscendingHeaderStyle BackColor="#dfe3ee" />
                <SortedDescendingCellStyle BackColor="#dfe3ee" />
                <SortedDescendingHeaderStyle BackColor="#dfe3ee" />
        </asp:GridView>


        <asp:SqlDataSource ID="SqlDataSource1" ConnectionString="<%$ ConnectionStrings:NephroCare %>" SelectCommand="SELECT Date, Brand, Dose FROM part1_gridview2 where id = @id " InsertCommand="INSERT into part1_gridview2 (Id, Date, Brand, Dose) VALUES (@id, @date, @brand, @dose)" Runat="server">
        <SelectParameters>
            <asp:FormParameter Name="id" FormField="AadharNumbertxt" />
        </SelectParameters>
            <InsertParameters>
        <asp:formparameter name="id" formfield="AadharNumbertxt" />
        <asp:formparameter name="date" formfield="datetxt" />
        <asp:formparameter name="brand" formfield="brandtxt" />
        <asp:formparameter name="dose"  formfield="dosetxt" />
        
        </InsertParameters>
        </asp:SqlDataSource>
           </td> </tr>
       <tr><td style="border:1px solid">
              <table border="1" align="center">
                  <tr>
           <th>DIAGNOSIS</th><th>YES/NO</th><th>DIAGNOSIS</th><th>YES/NO</th><th>DIAGNOSIS</th><th>YES/NO</th><th>DIAGNOSIS</th><th>YES/NO</th>
                      </tr>
                  <tr>
                      
                <td>DM/DMN</td><td><asp:CheckBox id ="DMN" runat ="server" Align ="Center"></asp:CheckBox></td>          
                    <td>HTN</td><td><asp:CheckBox id ="HTN" runat ="server" Align ="Center"></asp:CheckBox></td>
                <td>CKD Stage</td><td><asp:CheckBox id ="CKDStage" runat ="server" Align ="Center"></asp:CheckBox></td>
                <td>CGN</td><td><asp:CheckBox id ="CGN" runat ="server" Align ="Center"></asp:CheckBox></td>
                      </tr>
                  <tr>
                <td>CIN</td><td><asp:CheckBox id ="CIN" runat ="server" Align ="Center"></asp:CheckBox></td>
                <td>ESRD</td><td><asp:CheckBox id ="ESRD" runat ="server" Align ="Center"></asp:CheckBox></td>
                <td>Ac.CRF</td><td><asp:CheckBox id ="AcCRF" runat ="server" Align ="Center"></asp:CheckBox></td>
                <td>ARF</td><td><asp:CheckBox id ="ARF" runat ="server" Align ="Center"></asp:CheckBox></td>
                      </tr>
                  <tr>
                <td>RPRF</td><td><asp:CheckBox id ="RPRF" runat ="server" Align ="Center"></asp:CheckBox></td>
                <td>AGN</td><td><asp:CheckBox id ="AGN" runat ="server" Align ="Center"></asp:CheckBox></td>
              
          
                <td>NS</td><td><asp:CheckBox id ="NS" runat ="server" Align ="Center"></asp:CheckBox></td>
                <td>SLE</td><td><asp:CheckBox id ="SLE" runat ="server" Align ="Center"></asp:CheckBox></td>
                      </tr>
                  <tr>
                <td>MCD</td><td><asp:CheckBox id ="MCD" runat ="server" Align ="Center"></asp:CheckBox></td>
                <td>MN</td><td><asp:CheckBox id ="MN" runat ="server" Align ="Center"></asp:CheckBox></td>
                <td>FSGS</td><td><asp:CheckBox id ="FSGS" runat ="server" Align ="Center"></asp:CheckBox></td>
                <td>MPGN</td><td><asp:CheckBox id ="MPGN" runat ="server" Align ="Center"></asp:CheckBox></td>
                      </tr>
                  <tr>
                <td>Ig A</td><td><asp:CheckBox id ="IgA" runat ="server" Align ="Center"></asp:CheckBox></td>
                <td>Cres. GN</td><td><asp:CheckBox id ="CresGN" runat ="server" Align ="Center"></asp:CheckBox></td>
                <td>ADPKD</td><td><asp:CheckBox id ="ADPKD" runat ="server" Align ="Center"></asp:CheckBox></td>
                <td>MM</td><td><asp:CheckBox id ="MM" runat ="server" Align ="Center"></asp:CheckBox></td>
                    </tr>
           
            <tr>
                <td>AmyId</td><td><asp:CheckBox id ="AmyId" runat ="server" Align ="Center"></asp:CheckBox></td>
                <td>RTA</td><td><asp:CheckBox id ="RTA" runat ="server" Align ="Center"></asp:CheckBox></td>
                <td>RAS</td><td><asp:CheckBox id ="RAS" runat ="server" Align ="Center"></asp:CheckBox></td>
                <td>VUR</td><td><asp:CheckBox id ="VUR" runat ="server" Align ="Center"></asp:CheckBox></td>
                </tr>
                  <tr>
                <td>ROD</td><td><asp:CheckBox id ="ROD" runat ="server" Align ="Center"></asp:CheckBox></td>
                <td>Ob.Ur.</td><td><asp:CheckBox id ="ObUr" runat ="server" Align ="Center"></asp:CheckBox></td>
                <td>Fluorosis</td><td><asp:CheckBox id ="Fluorosis" runat ="server" Align ="Center"></asp:CheckBox></td>
                <td>Rickets</td><td><asp:CheckBox id ="Rickets" runat ="server" Align ="Center"></asp:CheckBox></td>
                      </tr>
                  <tr>
                <td>Cancer</td><td><asp:CheckBox id ="Cancer" runat ="server" Align ="Center"></asp:CheckBox></td>
                <td>HKPP</td><td><asp:CheckBox id ="HKPP" runat ="server" Align ="Center"></asp:CheckBox></td>
             
                <td>UTI</td><td><asp:CheckBox id ="UTI" runat ="server" Align ="Center"></asp:CheckBox></td>
                <td>BPH</td><td><asp:CheckBox id ="BPH" runat ="server" Align ="Center"></asp:CheckBox></td>
                      </tr>
                  <tr>
                <td>Malaria</td><td><asp:CheckBox id ="Malaria" runat ="server" Align ="Center"></asp:CheckBox></td>
                <td>Post GE</td><td><asp:CheckBox id ="PostGE" runat ="server" Align ="Center"></asp:CheckBox></td>
                <td>Snake Bite</td><td><asp:CheckBox id ="SnakeBite" runat ="server" Align ="Center"></asp:CheckBox></td>
                <td>Sepsis</td><td><asp:CheckBox id ="Sepsis" runat ="server" Align ="Center"></asp:CheckBox></td>
                     </tr>
                  <tr>
                    
                <td>Alport</td><td><asp:CheckBox id ="Alport" runat ="server" Align ="Center"></asp:CheckBox></td>
                <td>HSP</td><td><asp:CheckBox id ="HSP" runat ="server" Align ="Center"></asp:CheckBox></td>
                <td>OTHERS</td><td><asp:CheckBox id ="OTHERS" runat ="server" Align ="Center"></asp:CheckBox></td>
                      </tr>

                </table>    
                </td></tr>
            <tr>
                <td>
                   <div align="center">
                    <asp:Button runat="server" CssClass="btnbgm" BorderColor="Silver" Font-Size="Large"   ForeColor="black" Width="107px" Height="35px" OnClick="Unnamed_Click" id="btn1" Text="Register" BackColor="SeaShell" BorderStyle="Solid" Font-Italic="true" style="margin-left: 44px" /></div></td>

            </tr>
                </table>
            
        </div>
            <br /><br />
            </div>
                
             <footer>
  <div class="copyright">
    <p>&copy 2013 - Organisation</p>
  </div>
  <div class="social">
    <a href="#" class="support">Contact Us</a>
    <a href="#" class="face">f</a>
    <a href="#" class="tweet">t</a>
    <a href="#" class="linked">in</a>
  </div>
</footer>
            
    </form>
</body>
</html>
